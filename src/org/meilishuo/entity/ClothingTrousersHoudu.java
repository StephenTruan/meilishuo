package org.meilishuo.entity;



/**
 * ClothingTrousersHoudu entity. @author MyEclipse Persistence Tools
 */

public class ClothingTrousersHoudu  implements java.io.Serializable {


    // Fields    

     private Integer cthid;
     private String cthtext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingTrousersHoudu() {
    }

	/** minimal constructor */
    public ClothingTrousersHoudu(String cthtext) {
        this.cthtext = cthtext;
    }
    
    /** full constructor */
    public ClothingTrousersHoudu(String cthtext, Integer tpid) {
        this.cthtext = cthtext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCthid() {
        return this.cthid;
    }
    
    public void setCthid(Integer cthid) {
        this.cthid = cthid;
    }

    public String getCthtext() {
        return this.cthtext;
    }
    
    public void setCthtext(String cthtext) {
        this.cthtext = cthtext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}