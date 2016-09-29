
package uk.co.jassoft.markets.eod.eoddata.client;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlType;


/**
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "LOGINRESULT")
public class LOGINRESULT {

    @XmlAttribute(name = "Message")
    protected String Message;
    @XmlAttribute(name = "Token")
    protected String Token;
    @XmlAttribute(name = "DataFormat")
    protected String DataFormat;
    @XmlAttribute(name = "Header")
    protected String Header;
    @XmlAttribute(name = "Suffix")
    protected String Suffix;


    public String getMessage() {
        return Message;
    }

    public void setMessage(String message) {
        Message = message;
    }

    public String getToken() {
        return Token;
    }

    public void setToken(String token) {
        Token = token;
    }

    public String getDataFormat() {
        return DataFormat;
    }

    public void setDataFormat(String dataFormat) {
        DataFormat = dataFormat;
    }

    public String getHeader() {
        return Header;
    }

    public void setHeader(String header) {
        Header = header;
    }

    public String getSuffix() {
        return Suffix;
    }

    public void setSuffix(String suffix) {
        Suffix = suffix;
    }
}
