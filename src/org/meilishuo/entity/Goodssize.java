package org.meilishuo.entity;



/**
 * Goodssize entity. @author MyEclipse Persistence Tools
 */

public class Goodssize  implements java.io.Serializable {


    // Fields    

     private Integer gsid;
     private String gstext;


    // Constructors

    /** default constructor */
    public Goodssize() {
    }

    
    /** full constructor */
    public Goodssize(String gstext) {
        this.gstext = gstext;
    }

   
    // Property accessors

    public Integer getGsid() {
        return this.gsid;
    }
    
    public void setGsid(Integer gsid) {
        this.gsid = gsid;
    }

    public String getGstext() {
        return this.gstext;
    }
    
    public void setGstext(String gstext) {
        this.gstext = gstext;
    }
   








}