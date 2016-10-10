package org.meilishuo.entity;



/**
 * ClothingElement entity. @author MyEclipse Persistence Tools
 */

public class ClothingElement  implements java.io.Serializable {


    // Fields    

     private Integer ceid;
     private String cetext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingElement() {
    }

	/** minimal constructor */
    public ClothingElement(String cetext) {
        this.cetext = cetext;
    }
    
    /** full constructor */
    public ClothingElement(String cetext, Integer tpid) {
        this.cetext = cetext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCeid() {
        return this.ceid;
    }
    
    public void setCeid(Integer ceid) {
        this.ceid = ceid;
    }

    public String getCetext() {
        return this.cetext;
    }
    
    public void setCetext(String cetext) {
        this.cetext = cetext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}