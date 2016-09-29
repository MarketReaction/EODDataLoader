package uk.co.jassoft.markets.eod.eoddata;

import uk.co.jassoft.markets.datamodel.company.Company;
import uk.co.jassoft.markets.datamodel.company.Exchange;
import uk.co.jassoft.markets.datamodel.company.quote.Quote;
import org.joda.time.DateTime;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;

import java.net.MalformedURLException;
import java.util.Date;
import java.util.List;

@Ignore
public class EODDataClientTest {

    private final EODDataClient target;

    public EODDataClientTest() throws MalformedURLException {
        target = new EODDataClient("http://ws.eoddata.com/data.asmx");
    }

    @Test
    public void testGetToken() throws Exception
    {
        String token = target.getToken();

        Assert.assertNotNull(token);
    }

    @Test
    public void testGetExchanges() throws Exception
    {
        List<Exchange> exchanges = target.getExchanges();

        Assert.assertFalse(exchanges.isEmpty());
    }

    @Test
    public void testGetCompanies() throws Exception
    {
        List<Company> companies = target.getCompanies(new Exchange("NASDAQ", "NASDAQ", true, "GMT", "USD", "USA"));

        Assert.assertFalse(companies.isEmpty());
    }

    @Test
    public void testGetStockPrice_New() throws Exception
    {
        int dow = new DateTime().minusDays(3).getDayOfWeek();

        Date dateForTest;

        if(dow == 7 || dow == 6 || dow == 1) {
            dateForTest = new DateTime().withDayOfWeek(1).toDate();
        } else {
            dateForTest = new DateTime().minusDays(3).toDate();
        }

        List<Quote> quotes = target.getQuoteListByDate2(new Exchange("LSE", "London Stock Exchange", true, "GMT", "GBP", "UK"), dateForTest);

        Assert.assertTrue(quotes.size() > 0);
    }
}