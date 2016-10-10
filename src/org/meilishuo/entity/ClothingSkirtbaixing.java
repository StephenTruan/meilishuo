package org.meilishuo.entity;



/**
 * ClothingSkirtbaixing entity. @author MyEclipse Persistence Tools
 */

public class ClothingSkirtbaixing  implements java.io.Serializable {


    // Fields    

     private Integer csbid;
     private String csbtext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingSkirtbaixing() {
    }

	/** minimal constructor */
    public ClothingSkirtbaixing(String csbtext) {
        this.csbtext = csbtext;
    }
    
    /** full constructor */
    public ClothingSkirtbaixing(String csbtext, Integer tpid) {
        this.csbtext = csbtext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCsbid() {
        return this.csbid;
    }
    
    public void setCsbid(Integer csbid) {
        this.csbid = csbid;
    }

    public String getCsbtext() {
        return this.csbtext;
    }
    
    public void setCsbtext(String csbtext) {
        this.csbtext = csbtext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}