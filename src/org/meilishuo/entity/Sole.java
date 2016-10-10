package org.meilishuo.entity;



/**
 * Sole entity. @author MyEclipse Persistence Tools
 */

public class Sole  implements java.io.Serializable {


    // Fields    

     private Integer soleid;
     private String soletext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public Sole() {
    }

	/** minimal constructor */
    public Sole(String soletext) {
        this.soletext = soletext;
    }
    
    /** full constructor */
    public Sole(String soletext, Integer tpid) {
        this.soletext = soletext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getSoleid() {
        return this.soleid;
    }
    
    public void setSoleid(Integer soleid) {
        this.soleid = soleid;
    }

    public String getSoletext() {
        return this.soletext;
    }
    
    public void setSoletext(String soletext) {
        this.soletext = soletext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}