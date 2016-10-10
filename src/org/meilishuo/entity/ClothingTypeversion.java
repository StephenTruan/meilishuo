package org.meilishuo.entity;



/**
 * ClothingTypeversion entity. @author MyEclipse Persistence Tools
 */

public class ClothingTypeversion  implements java.io.Serializable {


    // Fields    

     private Integer ctid;
     private String cttext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingTypeversion() {
    }

	/** minimal constructor */
    public ClothingTypeversion(String cttext) {
        this.cttext = cttext;
    }
    
    /** full constructor */
    public ClothingTypeversion(String cttext, Integer tpid) {
        this.cttext = cttext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCtid() {
        return this.ctid;
    }
    
    public void setCtid(Integer ctid) {
        this.ctid = ctid;
    }

    public String getCttext() {
        return this.cttext;
    }
    
    public void setCttext(String cttext) {
        this.cttext = cttext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}