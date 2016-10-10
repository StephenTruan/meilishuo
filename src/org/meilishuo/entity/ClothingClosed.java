package org.meilishuo.entity;



/**
 * ClothingClosed entity. @author MyEclipse Persistence Tools
 */

public class ClothingClosed  implements java.io.Serializable {


    // Fields    

     private Integer ccloseid;
     private String cctext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingClosed() {
    }

	/** minimal constructor */
    public ClothingClosed(String cctext) {
        this.cctext = cctext;
    }
    
    /** full constructor */
    public ClothingClosed(String cctext, Integer tpid) {
        this.cctext = cctext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCcloseid() {
        return this.ccloseid;
    }
    
    public void setCcloseid(Integer ccloseid) {
        this.ccloseid = ccloseid;
    }

    public String getCctext() {
        return this.cctext;
    }
    
    public void setCctext(String cctext) {
        this.cctext = cctext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}