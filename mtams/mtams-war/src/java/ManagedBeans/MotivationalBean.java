/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagedBeans;

import Entities.Application;
import Entities.Finalcosting;
import Entities.Motivation;
import Entities.Quotes;
import ServiceLayer.MotivationFormHandlerLocal;
import java.io.Serializable;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import javax.validation.constraints.Pattern;

/**
 *
 * @author Michelle Thornton
 */
@ManagedBean(name = "motivBean")
@SessionScoped
public class MotivationalBean implements Serializable{
//private static final Logger logger = Logger.getLogger(MotivationalBean.class.getName());
//private Motivation motivation = new Motivation();
    
    //======change===change=========change============change=========change====
    //-------------------------------------------------------------------------
    int accountID =1;
    //-------------------------------------------------------------------------
    //======change========change=========change=============change=============
@Pattern(message="Input in Supplier Field is Incorrect", regexp="[a-zA-Z -]{0,}")    
private String supplier;
@Pattern(message="Input in Amount Field is Incorrect", regexp="[0-9]{0,}")
private String amount;
private String costCode;
private String motivationLetter;
private Integer budget;
private String budget2;
private Motivation motivational;
private Motivation motiView;
private Motivation motiEdit;
private Application appy;
private Quotes quote;
private Finalcosting finalC;
@EJB
private MotivationFormHandlerLocal handler;

public MotivationalBean() {
    }

public String save() 
    {  
        
        FacesContext.getCurrentInstance().addMessage(null,new FacesMessage(FacesMessage.SEVERITY_INFO,"getting there",null));
         motivational = new Motivation();
                 
         motivational.setSupplier(supplier);
         motivational.setAmount(amount);
         motivational.setCostcenter(costCode);
         motivational.setMotivation(motivationLetter);
         motivational.setBudget(budget);
         handler.updateMoti(motivational, accountID);
         
         FacesContext.getCurrentInstance().addMessage(null,new FacesMessage(FacesMessage.SEVERITY_INFO,"Success", "Created"));
         return null;
    } 

    public Motivation getMotiView() 
    {
        motiView = handler.findMotivation(accountID);
        return motiView;
    }

    public void setMotiView(Motivation motiView) {
        this.motiView = motiView;
    }
    
    /*@PostConstruct
    public void editMoti()
    {
        motiView = handler.findMotivation(accountID);
        setSupplier(motiView.getSupplier());
        setAmount(motiView.getAmount());
        setCostCode(motiView.getCostcenter());
        setMotivationLetter(motiView.getMotivation());
        setBudget(motiView.getBudget());
    }
    */
    public String updateMoti()
    {
        motiEdit = new Motivation();
        motiEdit.setSupplier(supplier);
        motiEdit.setAmount(amount);
        motiEdit.setCostcenter(costCode);
        motiEdit.setMotivation(motivationLetter);
        motiEdit.setBudget(budget);
        
        handler.updateMoti(motiEdit, accountID);
        return "MotivationalEdit";
    }
    
    public Application getAppy() 
    {
        return appy;
    }

    public void setAppy(Application appy) 
    {
        this.appy = appy;
    }

    public Quotes getQuote() 
    {
        quote=handler.findQuotes(accountID);
        return quote;
    }

    public void setQuote(Quotes quote) 
    {
        this.quote = quote;
    }

    public Finalcosting getFinalC() 
    {
        finalC=handler.findFinalCosting(accountID);
        return finalC;
    }

    public void setFinalC(Finalcosting finalC) 
    {
        this.finalC = finalC;
    }
    
    
    
    public Motivation getMotiEdit() {
        return motiEdit;
    }

    public void setMotiEdit(Motivation motiEdit) {
        this.motiEdit = motiEdit;
    }
    

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getCostCode() {
        return costCode;
    }

    public void setCostCode(String costCode) {
        this.costCode = costCode;
    }

    public String getMotivationLetter() {
        return motivationLetter;
    }

    public void setMotivationLetter(String motivationLetter) {
        this.motivationLetter = motivationLetter;
    }

    public Integer getBudget() {
        return budget;
    }

    public void setBudget(Integer budget) {
        this.budget = budget;
    }
    
    public void setBudget2(Integer budget) 
    {
        if(budget==1)
        {
            budget2 = "Yes";        
        }
        else
        {
            budget2= "No";
        }
    }
    
    public String getBudget2() 
    {
        return budget2;
    }
    
    public int check(String bud)
    {
        int i = Integer.parseInt( bud );
        return this.budget = i;       
    }

    
    
}

