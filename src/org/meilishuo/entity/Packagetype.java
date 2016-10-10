package org.meilishuo.entity;



/**
 * Packagetype entity. @author MyEclipse Persistence Tools
 */

public class Packagetype  implements java.io.Serializable {


    // Fields    

     private Integer ptid;
     private String pttext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public Packagetype() {
    }

	/** minimal constructor */
    public Packagetype(String pttext) {
        this.pttext = pttext;
    }
    
    /** full constructor */
    public Packagetype(String pttext, Integer tpid) {
        this.pttext = pttext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getPtid() {
        return this.ptid;
    }
    
    public void setPtid(Integer ptid) {
        this.ptid = ptid;
    }

    public String getPttext() {
        return this.pttext;
    }
    
    public void setPttext(String pttext) {
        this.pttext = pttext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}