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
 *         &lt;element name="ValidateAccessResult" type="{http://ws.eoddata.com/Data}RESPONSE" minOccurs="0"/&gt;
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
    "validateAccessResult"
})
@XmlRootElement(name = "ValidateAccessResponse")
public class ValidateAccessResponse {

    @XmlElement(name = "ValidateAccessResult")
    protected RESPONSE validateAccessResult;

    /**
     * Gets the value of the validateAccessResult property.
     * 
     * @return
     *     possible object is
     *     {@link RESPONSE }
     *     
     */
    public RESPONSE getValidateAccessResult() {
        return validateAccessResult;
    }

    /**
     * Sets the value of the validateAccessResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link RESPONSE }
     *     
     */
    public void setValidateAccessResult(RESPONSE value) {
        this.validateAccessResult = value;
    }

}
