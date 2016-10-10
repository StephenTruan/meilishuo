package org.meilishuo.entity;



/**
 * Keywordinfo entity. @author MyEclipse Persistence Tools
 */

public class Keywordinfo  implements java.io.Serializable {


    // Fields    

     private Integer kwid;
     private String kwtext;


    // Constructors

    /** default constructor */
    public Keywordinfo() {
    }

    
    /** full constructor */
    public Keywordinfo(String kwtext) {
        this.kwtext = kwtext;
    }

   
    // Property accessors

    public Integer getKwid() {
        return this.kwid;
    }
    
    public void setKwid(Integer kwid) {
        this.kwid = kwid;
    }

    public String getKwtext() {
        return this.kwtext;
    }
    
    public void setKwtext(String kwtext) {
        this.kwtext = kwtext;
    }
   








}