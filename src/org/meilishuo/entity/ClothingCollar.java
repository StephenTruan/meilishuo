package org.meilishuo.entity;



/**
 * ClothingCollar entity. @author MyEclipse Persistence Tools
 */

public class ClothingCollar  implements java.io.Serializable {


    // Fields    

     private Integer ccid;
     private String cctext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingCollar() {
    }

	/** minimal constructor */
    public ClothingCollar(String cctext) {
        this.cctext = cctext;
    }
    
    /** full constructor */
    public ClothingCollar(String cctext, Integer tpid) {
        this.cctext = cctext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCcid() {
        return this.ccid;
    }
    
    public void setCcid(Integer ccid) {
        this.ccid = ccid;
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