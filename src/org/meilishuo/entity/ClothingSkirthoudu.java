package org.meilishuo.entity;



/**
 * ClothingSkirthoudu entity. @author MyEclipse Persistence Tools
 */

public class ClothingSkirthoudu  implements java.io.Serializable {


    // Fields    

     private Integer cshid;
     private String cshtext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingSkirthoudu() {
    }

	/** minimal constructor */
    public ClothingSkirthoudu(String cshtext) {
        this.cshtext = cshtext;
    }
    
    /** full constructor */
    public ClothingSkirthoudu(String cshtext, Integer tpid) {
        this.cshtext = cshtext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCshid() {
        return this.cshid;
    }
    
    public void setCshid(Integer cshid) {
        this.cshid = cshid;
    }

    public String getCshtext() {
        return this.cshtext;
    }
    
    public void setCshtext(String cshtext) {
        this.cshtext = cshtext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}