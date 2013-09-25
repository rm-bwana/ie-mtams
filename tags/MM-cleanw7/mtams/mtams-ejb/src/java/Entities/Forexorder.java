/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Riaan
 */
@Entity
@Table(name = "FOREXORDER")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Forexorder.findAll", query = "SELECT f FROM Forexorder f"),
    @NamedQuery(name = "Forexorder.findByIdforexorder", query = "SELECT f FROM Forexorder f WHERE f.idforexorder = :idforexorder"),
    @NamedQuery(name = "Forexorder.findByDateofrequired", query = "SELECT f FROM Forexorder f WHERE f.dateofrequired = :dateofrequired"),
    @NamedQuery(name = "Forexorder.findByDatewillbeconfirmed", query = "SELECT f FROM Forexorder f WHERE f.datewillbeconfirmed = :datewillbeconfirmed"),
    @NamedQuery(name = "Forexorder.findByTicketnum", query = "SELECT f FROM Forexorder f WHERE f.ticketnum = :ticketnum"),
    @NamedQuery(name = "Forexorder.findByVoyagernum", query = "SELECT f FROM Forexorder f WHERE f.voyagernum = :voyagernum"),
    @NamedQuery(name = "Forexorder.findByCurrencycheque", query = "SELECT f FROM Forexorder f WHERE f.currencycheque = :currencycheque"),
    @NamedQuery(name = "Forexorder.findByTravelerscheques", query = "SELECT f FROM Forexorder f WHERE f.travelerscheques = :travelerscheques"),
    @NamedQuery(name = "Forexorder.findByCurrencycash", query = "SELECT f FROM Forexorder f WHERE f.currencycash = :currencycash"),
    @NamedQuery(name = "Forexorder.findByCash", query = "SELECT f FROM Forexorder f WHERE f.cash = :cash"),
    @NamedQuery(name = "Forexorder.findByCashpassport", query = "SELECT f FROM Forexorder f WHERE f.cashpassport = :cashpassport"),
    @NamedQuery(name = "Forexorder.findByCctype", query = "SELECT f FROM Forexorder f WHERE f.cctype = :cctype"),
    @NamedQuery(name = "Forexorder.findByCcnumber", query = "SELECT f FROM Forexorder f WHERE f.ccnumber = :ccnumber"),
    @NamedQuery(name = "Forexorder.findByCclast3", query = "SELECT f FROM Forexorder f WHERE f.cclast3 = :cclast3"),
    @NamedQuery(name = "Forexorder.findByCcexpirydate", query = "SELECT f FROM Forexorder f WHERE f.ccexpirydate = :ccexpirydate"),
    @NamedQuery(name = "Forexorder.findByCurrencycc", query = "SELECT f FROM Forexorder f WHERE f.currencycc = :currencycc"),
    @NamedQuery(name = "Forexorder.findByCcpaymentamount", query = "SELECT f FROM Forexorder f WHERE f.ccpaymentamount = :ccpaymentamount"),
    @NamedQuery(name = "Forexorder.findByReasonfortravel", query = "SELECT f FROM Forexorder f WHERE f.reasonfortravel = :reasonfortravel")})
public class Forexorder implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "IDFOREXORDER")
    private Integer idforexorder;
    @Column(name = "DATEOFREQUIRED")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateofrequired;
    @Column(name = "DATEWILLBECONFIRMED")
    @Temporal(TemporalType.TIMESTAMP)
    private Date datewillbeconfirmed;
    @Size(max = 45)
    @Column(name = "TICKETNUM")
    private String ticketnum;
    @Size(max = 45)
    @Column(name = "VOYAGERNUM")
    private String voyagernum;
    @Size(max = 45)
    @Column(name = "CURRENCYCHEQUE")
    private String currencycheque;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "TRAVELERSCHEQUES")
    private Double travelerscheques;
    @Size(max = 45)
    @Column(name = "CURRENCYCASH")
    private String currencycash;
    @Column(name = "CASH")
    private Double cash;
    @Column(name = "CASHPASSPORT")
    private Double cashpassport;
    @Size(max = 45)
    @Column(name = "CCTYPE")
    private String cctype;
    @Size(max = 45)
    @Column(name = "CCNUMBER")
    private String ccnumber;
    @Size(max = 3)
    @Column(name = "CCLAST3")
    private String cclast3;
    @Column(name = "CCEXPIRYDATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ccexpirydate;
    @Size(max = 45)
    @Column(name = "CURRENCYCC")
    private String currencycc;
    @Column(name = "CCPAYMENTAMOUNT")
    private Double ccpaymentamount;
    @Size(max = 500)
    @Column(name = "REASONFORTRAVEL")
    private String reasonfortravel;

    public Forexorder() {
    }

    public Forexorder(Integer idforexorder) {
        this.idforexorder = idforexorder;
    }

    public Integer getIdforexorder() {
        return idforexorder;
    }

    public void setIdforexorder(Integer idforexorder) {
        this.idforexorder = idforexorder;
    }

    public Date getDateofrequired() {
        return dateofrequired;
    }

    public void setDateofrequired(Date dateofrequired) {
        this.dateofrequired = dateofrequired;
    }

    public Date getDatewillbeconfirmed() {
        return datewillbeconfirmed;
    }

    public void setDatewillbeconfirmed(Date datewillbeconfirmed) {
        this.datewillbeconfirmed = datewillbeconfirmed;
    }

    public String getTicketnum() {
        return ticketnum;
    }

    public void setTicketnum(String ticketnum) {
        this.ticketnum = ticketnum;
    }

    public String getVoyagernum() {
        return voyagernum;
    }

    public void setVoyagernum(String voyagernum) {
        this.voyagernum = voyagernum;
    }

    public String getCurrencycheque() {
        return currencycheque;
    }

    public void setCurrencycheque(String currencycheque) {
        this.currencycheque = currencycheque;
    }

    public Double getTravelerscheques() {
        return travelerscheques;
    }

    public void setTravelerscheques(Double travelerscheques) {
        this.travelerscheques = travelerscheques;
    }

    public String getCurrencycash() {
        return currencycash;
    }

    public void setCurrencycash(String currencycash) {
        this.currencycash = currencycash;
    }

    public Double getCash() {
        return cash;
    }

    public void setCash(Double cash) {
        this.cash = cash;
    }

    public Double getCashpassport() {
        return cashpassport;
    }

    public void setCashpassport(Double cashpassport) {
        this.cashpassport = cashpassport;
    }

    public String getCctype() {
        return cctype;
    }

    public void setCctype(String cctype) {
        this.cctype = cctype;
    }

    public String getCcnumber() {
        return ccnumber;
    }

    public void setCcnumber(String ccnumber) {
        this.ccnumber = ccnumber;
    }

    public String getCclast3() {
        return cclast3;
    }

    public void setCclast3(String cclast3) {
        this.cclast3 = cclast3;
    }

    public Date getCcexpirydate() {
        return ccexpirydate;
    }

    public void setCcexpirydate(Date ccexpirydate) {
        this.ccexpirydate = ccexpirydate;
    }

    public String getCurrencycc() {
        return currencycc;
    }

    public void setCurrencycc(String currencycc) {
        this.currencycc = currencycc;
    }

    public Double getCcpaymentamount() {
        return ccpaymentamount;
    }

    public void setCcpaymentamount(Double ccpaymentamount) {
        this.ccpaymentamount = ccpaymentamount;
    }

    public String getReasonfortravel() {
        return reasonfortravel;
    }

    public void setReasonfortravel(String reasonfortravel) {
        this.reasonfortravel = reasonfortravel;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idforexorder != null ? idforexorder.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Forexorder)) {
            return false;
        }
        Forexorder other = (Forexorder) object;
        if ((this.idforexorder == null && other.idforexorder != null) || (this.idforexorder != null && !this.idforexorder.equals(other.idforexorder))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.Forexorder[ idforexorder=" + idforexorder + " ]";
    }
    
}