package uk.co.jassoft.markets.eod.eoddata.client;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ArrayOfSYMBOL2 complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ArrayOfSYMBOL2"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="SYMBOL2" type="{http://ws.eoddata.com/Data}SYMBOL2" maxOccurs="unbounded" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ArrayOfSYMBOL2", propOrder = {
    "symbol2"
})
public class ArrayOfSYMBOL2 {

    @XmlElement(name = "SYMBOL2", nillable = true)
    protected List<SYMBOL2> symbol2;

    /**
     * Gets the value of the symbol2 property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the symbol2 property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getSYMBOL2().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link SYMBOL2 }
     * 
     * 
     */
    public List<SYMBOL2> getSYMBOL2() {
        if (symbol2 == null) {
            symbol2 = new ArrayList<SYMBOL2>();
        }
        return this.symbol2;
    }

}
