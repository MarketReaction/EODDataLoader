/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.co.jassoft.markets.eod.company;

import uk.co.jassoft.markets.datamodel.company.Company;
import uk.co.jassoft.markets.datamodel.company.Exchange;
import uk.co.jassoft.markets.datamodel.system.Queue;
import uk.co.jassoft.markets.eod.eoddata.EODDataClient;
import uk.co.jassoft.markets.repository.CompanyRepository;
import uk.co.jassoft.markets.repository.ExchangeRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.function.Predicate;

/**
 *
 * @author Jonny
 */
@Component
public class EODCompanyFinder {

    private static final Logger LOG = LoggerFactory.getLogger(EODCompanyFinder.class);

    @Autowired
    private ExchangeRepository exchangeRepository;

    @Autowired
    private CompanyRepository companyRepository;

    @Autowired
    private JmsTemplate jmsTemplate;

    @Autowired
    private EODDataClient eodDataClient;

    void send(final String message) {
        jmsTemplate.convertAndSend(Queue.FoundCompany.toString(), message);
    }

    public void findCompanies()
    {
        LOG.info("Find Companies Triggered");

        List<Exchange> exchanges = eodDataClient.getExchanges();

        for(Exchange exchange : exchanges)
        {
            Exchange persistedExchange = exchangeRepository.findOneByCode(exchange.getCode());

            final Exchange finalExchange;

            if(persistedExchange == null) {
                finalExchange = exchangeRepository.save(exchange);
            }
            else if(persistedExchange != null && !persistedExchange.equals(exchange)) {
                exchange.setId(persistedExchange.getId());
                exchange.setEnabled(persistedExchange.isEnabled());
                finalExchange = exchangeRepository.save(exchange);
            }
            else {
                finalExchange = persistedExchange;
            }

            if(!finalExchange.isEnabled())
                continue;

            LOG.info("Checking for new companies in exchange [{}]", exchange.getCode());

            List<Company> companies = eodDataClient.getCompanies(finalExchange);

            companies.stream().filter(hasName()).forEach(company -> {
                try
                {
                    Company persistedCompany = companyRepository.findOneByExchangeAndTickerSymbol(finalExchange.getId(), company.getTickerSymbol());
                    if(persistedCompany == null)
                    {
                        LOG.info("Adding Company [{}] To Exchange [{}]", company.getTickerSymbol(), exchange.getName());

                        company = companyRepository.save(company);
                    }

                    if(company.getId() != null) {
                        send(company.getId());
                    } else {
                        send(persistedCompany.getId()); // reload description for all companies
                    }
                }
                catch (Exception ex)
                {
                    LOG.error(ex.getLocalizedMessage(), ex);
                }
            });

        }
    }

    public static Predicate<Company> hasName() {
        return company -> company.getName() != null && !company.getName().isEmpty();
    }
}
