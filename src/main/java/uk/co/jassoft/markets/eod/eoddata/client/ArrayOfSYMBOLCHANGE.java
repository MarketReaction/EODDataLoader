package uk.co.jassoft.markets.eod.eoddata.client;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ArrayOfSYMBOLCHANGE complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ArrayOfSYMBOLCHANGE"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="SYMBOLCHANGE" type="{http://ws.eoddata.com/Data}SYMBOLCHANGE" maxOccurs="unbounded" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ArrayOfSYMBOLCHANGE", propOrder = {
    "symbolchange"
})
public class ArrayOfSYMBOLCHANGE {

    @XmlElement(name = "SYMBOLCHANGE", nillable = true)
    protected List<SYMBOLCHANGE> symbolchange;

    /**
     * Gets the value of the symbolchange property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the symbolchange property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getSYMBOLCHANGE().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link SYMBOLCHANGE }
     * 
     * 
     */
    public List<SYMBOLCHANGE> getSYMBOLCHANGE() {
        if (symbolchange == null) {
            symbolchange = new ArrayList<SYMBOLCHANGE>();
        }
        return this.symbolchange;
    }

}
