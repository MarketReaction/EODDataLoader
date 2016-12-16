package uk.co.jassoft.markets.eod.company.quote;

import uk.co.jassoft.markets.datamodel.company.Company;
import uk.co.jassoft.markets.datamodel.company.Exchange;
import uk.co.jassoft.markets.datamodel.company.quote.Quote;
import uk.co.jassoft.markets.datamodel.system.Queue;
import uk.co.jassoft.markets.eod.eoddata.EODDataClient;
import uk.co.jassoft.markets.exceptions.eoddata.GetQuoteFailedException;
import uk.co.jassoft.markets.repository.CompanyRepository;
import uk.co.jassoft.markets.repository.ExchangeRepository;
import uk.co.jassoft.markets.repository.QuoteRepository;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

/**
 * Created by Jonny on 01/09/2014.
 */
@Component
public class EODExchangeAllQuoteRetriever {

    private static final Logger LOG = LoggerFactory.getLogger(EODExchangeAllQuoteRetriever.class);

    @Autowired
    private CompanyRepository companyRepository;
    @Autowired
    private ExchangeRepository exchangeRepository;
    @Autowired
    private QuoteRepository quoteRepository;
    @Autowired
    private EODDataClient eodDataClient;

    @Autowired
    private JmsTemplate jmsTemplate;

    void quoteUpdated(final String message)
    {
        jmsTemplate.convertAndSend(Queue.QuoteUpdated.toString(), message);
    }

    public void retrieveQuotes() {
        exchangeRepository.findByEnabledIsTrue(new Sort(Sort.Direction.ASC, "name")).forEach(exchange -> {
            final Date retrievalDate = new DateTime().minusDays(1).toDate();

            retrieveQuotesForDateAndExchange(retrievalDate, exchange);
        });
    }

    public void retrieveQuotesForDateAndExchange(final Date retrievalDate, final Exchange exchange) {
        try {

            LOG.info("Retrieving Quote data for Exchange [{}] for Date [{}]", exchange.getName(), retrievalDate);

            processQuote(exchange, eodDataClient.getQuoteListByDate2(exchange, retrievalDate));

            if(exchange.isIntraday()) {
                processQuote(exchange, eodDataClient.getQuoteListByDatePeriod2(exchange, retrievalDate));
            }

        }
        catch (GetQuoteFailedException exception) {
            LOG.error(exception.getLocalizedMessage(), exception);
        }
    }

    private void processQuote(final Exchange exchange, final List<Quote> quotes) {
        quotes.parallelStream().forEach(quote -> {

            Company company = companyRepository.findOneByExchangeAndTickerSymbol(exchange.getId(), quote.getCompany());

            if(company == null) {
                LOG.info("Received quote for unrecognised company {}:{}", exchange.getCode(), quote.getCompany());
                return;
            }

            quote.setCompany(company.getId());

            Quote existingQuote = quoteRepository.findByCompanyAndDate(company.getId(), quote.getDate());
            if (existingQuote == null) {
                saveQuote(quote);
                LOG.debug("Saving Quote data for company [{}:{}] and date [{}]", exchange.getCode(), company.getTickerSymbol(), quote.getDate());
            }
            else if(!quote.equals(existingQuote)) {
                quote.setId(existingQuote.getId());
                saveQuote(quote);
                LOG.debug("Updating Quote data for company [{}:{}] and date [{}]", exchange.getCode(), company.getTickerSymbol(), quote.getDate());
            }

        });
    }

    private void saveQuote(final Quote quote) {
        quoteRepository.save(quote);
        quoteUpdated(quote.getId());
    }
}
