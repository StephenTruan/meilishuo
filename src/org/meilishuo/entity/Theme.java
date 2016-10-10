package org.meilishuo.entity;



/**
 * Theme entity. @author MyEclipse Persistence Tools
 */

public class Theme  implements java.io.Serializable {


    // Fields    

     private Integer thid;
     private String thtext;


    // Constructors

    /** default constructor */
    public Theme() {
    }

    
    /** full constructor */
    public Theme(String thtext) {
        this.thtext = thtext;
    }

   
    // Property accessors

    public Integer getThid() {
        return this.thid;
    }
    
    public void setThid(Integer thid) {
        this.thid = thid;
    }

    public String getThtext() {
        return this.thtext;
    }
    
    public void setThtext(String thtext) {
        this.thtext = thtext;
    }
   








}