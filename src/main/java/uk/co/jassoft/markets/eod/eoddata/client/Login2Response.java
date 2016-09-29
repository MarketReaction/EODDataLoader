package uk.co.jassoft.markets.eod.eoddata.client;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="Login2Result" type="{http://ws.eoddata.com/Data}LOGINRESPONSE" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "login2Result"
})
@XmlRootElement(name = "Login2Response")
public class Login2Response {

    @XmlElement(name = "Login2Result")
    protected LOGINRESULT login2Result;

    /**
     * Gets the value of the login2Result property.
     * 
     * @return
     *     possible object is
     *     {@link LOGINRESULT }
     *     
     */
    public LOGINRESULT getLogin2Result() {
        return login2Result;
    }

    /**
     * Sets the value of the login2Result property.
     * 
     * @param value
     *     allowed object is
     *     {@link LOGINRESULT }
     *     
     */
    public void setLogin2Result(LOGINRESULT value) {
        this.login2Result = value;
    }

}
