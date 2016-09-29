package uk.co.jassoft.markets.eod;

import uk.co.jassoft.markets.BaseSpringConfiguration;
import uk.co.jassoft.markets.eod.company.EODCompanyFinder;
import uk.co.jassoft.markets.eod.company.quote.EODExchangeAllQuoteRetriever;
import uk.co.jassoft.markets.datamodel.company.Exchange;
import uk.co.jassoft.markets.datamodel.eod.EodType;
import uk.co.jassoft.markets.repository.ExchangeRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import java.util.Date;

/**
 * Created by jonshaw on 13/07/15.
 */
@Configuration
@ComponentScan("uk.co.jassoft.markets.eod")
public class SpringConfiguration extends BaseSpringConfiguration {

    private static final Logger LOG = LoggerFactory.getLogger(SpringConfiguration.class);

    public static void main(String[] args) throws Exception {
        ConfigurableApplicationContext context = SpringApplication.run(SpringConfiguration.class, args);

        EodType eodType = EodType.valueOf(args[0]);

        LOG.info("Runnging EOD Loader for Type [{}] Args [{}]", eodType, args);

        switch (eodType) {
            case CompanyFinder:
                context.getBean(EODCompanyFinder.class).findCompanies();
                break;

            case QuoteRetriever:

                ExchangeRepository exchangeRepository = context.getBean(ExchangeRepository.class);

                switch (args.length) {
                    case 1:
                        context.getBean(EODExchangeAllQuoteRetriever.class).retrieveQuotes();
                        break;

                    case 3:
                        Date date = new Date(Long.getLong(args[1]));
                        Exchange exchange = exchangeRepository.findOne(args[2]);

                        context.getBean(EODExchangeAllQuoteRetriever.class).retrieveQuotesForDateAndExchange(date, exchange);
                        break;
                }

                break;
        }

        context.close();
        System.exit(0);
    }
}

