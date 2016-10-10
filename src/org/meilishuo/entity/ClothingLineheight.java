package org.meilishuo.entity;



/**
 * ClothingLineheight entity. @author MyEclipse Persistence Tools
 */

public class ClothingLineheight  implements java.io.Serializable {


    // Fields    

     private Integer clhid;
     private String clhtext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingLineheight() {
    }

	/** minimal constructor */
    public ClothingLineheight(String clhtext) {
        this.clhtext = clhtext;
    }
    
    /** full constructor */
    public ClothingLineheight(String clhtext, Integer tpid) {
        this.clhtext = clhtext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getClhid() {
        return this.clhid;
    }
    
    public void setClhid(Integer clhid) {
        this.clhid = clhid;
    }

    public String getClhtext() {
        return this.clhtext;
    }
    
    public void setClhtext(String clhtext) {
        this.clhtext = clhtext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}