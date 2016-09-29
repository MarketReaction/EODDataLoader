package uk.co.jassoft.markets.eod.eoddata;

import uk.co.jassoft.markets.datamodel.company.Companies;
import uk.co.jassoft.markets.datamodel.company.Company;
import uk.co.jassoft.markets.datamodel.company.Exchange;
import uk.co.jassoft.markets.datamodel.company.Exchanges;
import uk.co.jassoft.markets.datamodel.company.quote.Quote;
import uk.co.jassoft.markets.eod.eoddata.client.*;
import uk.co.jassoft.markets.exceptions.eoddata.GetQuoteFailedException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.xml.soap.SOAPException;
import javax.xml.ws.BindingProvider;
import java.io.IOException;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * @author Jonny
 */
@Component
public class EODDataClient {

    private static final Logger LOG = LoggerFactory.getLogger(EODDataClient.class);

    private final DataSoap dataSoap;

    @Value("${EOD_DATA_WEB_SERVICE_USERNAME}")
    private String eodServiceUsername;

    @Value("${EOD_DATA_WEB_SERVICE_PASSWORD}")
    private String eodServicePassword;

    public EODDataClient() throws MalformedURLException {
        this(System.getenv("EOD_DATA_WEB_SERVICE"));
    }

    public EODDataClient(final String serviceURL) throws MalformedURLException {

        Data data = new Data(new URL(String.format("%s?wsdl", serviceURL)), Data.SERVICE);
        dataSoap = data.getDataSoap();

        ((BindingProvider)dataSoap).getRequestContext()
                .put(BindingProvider.ENDPOINT_ADDRESS_PROPERTY, serviceURL);

        ((BindingProvider)dataSoap).getRequestContext()
                .put("Content-type", "application/soap+xml");
    }

    public List<Exchange> getExchanges()
    {
        try
        {
            RESPONSE response = dataSoap.exchangeList(getToken());

            List<EXCHANGE> exchanges = response.getEXCHANGES().getEXCHANGE();

            List<Exchange> mappedExchanges = exchanges.stream().map(exchange ->
                new Exchange(exchange.getCode(), exchange.getName(), exchange.isIsIntraday(), exchange.getTimeZone(), exchange.getCurrency(), exchange.getCountry()))
                    .collect(Collectors.toList());

            return mappedExchanges;
            
        }
        catch(SOAPException | IOException exception)
        {
            LOG.error(exception.getLocalizedMessage(), exception);
            return new Exchanges();
        }
            
    }
    
    public List<Company> getCompanies(Exchange exchange)
    {
        try
        {
            RESPONSE response = dataSoap.symbolList(getToken(), exchange.getCode());

            List<SYMBOL> symbols = response.getSYMBOLS().getSYMBOL();

            List<Company> companies = symbols.stream().map(symbol ->
                    new Company(symbol.getCode(), symbol.getName(), exchange.getId())
            ).collect(Collectors.toList());
            
            return companies;
            
        }
        catch(SOAPException | IOException exception)
        {
            LOG.error(exception.getLocalizedMessage(), exception);
            return new Companies();
        }
    }

    public List<Quote> getQuoteListByDate2(Exchange exchange, Date quoteDate) throws GetQuoteFailedException
    {
        try
        {
            final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");

            RESPONSE response = dataSoap.quoteListByDate2(getToken(), exchange.getCode(), dateFormat.format(quoteDate));

            List<QUOTE2> quote2s = new ArrayList<>();

            if(response.getQUOTES2() != null && response.getQUOTES2().getQUOTE2() != null) {
                quote2s = response.getQUOTES2().getQUOTE2();
            }

            List<Quote> quotes = quote2s.stream().map(quote2 ->
                    new Quote(quote2.getS(), quote2.getD().toGregorianCalendar().getTime(), quote2.getO(), quote2.getC(), quote2.getH(), quote2.getL(), BigInteger.valueOf(quote2.getV()), BigInteger.valueOf(quote2.getI()), quote2.getB(), quote2.getA(), false)
            ).collect(Collectors.toList());

            return quotes;
        }
        catch(SOAPException | IOException exception)
        {
            throw new GetQuoteFailedException(exception.getMessage(), exception);
        }
    }

    public List<Quote> getQuoteListByDatePeriod2(Exchange exchange, Date quoteDate) throws GetQuoteFailedException
    {
        try
        {
            final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");

            RESPONSE response = dataSoap.quoteListByDatePeriod2(getToken(), exchange.getCode(), dateFormat.format(quoteDate), "5");

            List<QUOTE2> quote2s = new ArrayList<>();

            if(response.getQUOTES2() != null && response.getQUOTES2().getQUOTE2() != null) {
                quote2s = response.getQUOTES2().getQUOTE2();
            }

            List<Quote> quotes = quote2s.stream().map(quote2 ->
                    new Quote(quote2.getS(), quote2.getD().toGregorianCalendar().getTime(), quote2.getO(), quote2.getC(), quote2.getH(), quote2.getL(), BigInteger.valueOf(quote2.getV()), BigInteger.valueOf(quote2.getI()), quote2.getB(), quote2.getA(), true)
            ).collect(Collectors.toList());

            return quotes;
        }
        catch(SOAPException | IOException exception)
        {
            throw new GetQuoteFailedException(exception.getMessage(), exception);
        }
    }

    public String getToken() throws SOAPException, IOException
    {
        LOGINRESULT response = dataSoap.login2(eodServiceUsername, eodServicePassword, "");

        return response.getToken();
    }
}
