package uk.co.jassoft.markets.eod.eoddata.client;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ArrayOfQUOTE2 complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ArrayOfQUOTE2"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="QUOTE2" type="{http://ws.eoddata.com/Data}QUOTE2" maxOccurs="unbounded" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ArrayOfQUOTE2", propOrder = {
    "quote2"
})
public class ArrayOfQUOTE2 {

    @XmlElement(name = "QUOTE2", nillable = true)
    protected List<QUOTE2> quote2;

    /**
     * Gets the value of the quote2 property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the quote2 property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getQUOTE2().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link QUOTE2 }
     * 
     * 
     */
    public List<QUOTE2> getQUOTE2() {
        if (quote2 == null) {
            quote2 = new ArrayList<QUOTE2>();
        }
        return this.quote2;
    }

}
