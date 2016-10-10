package org.meilishuo.entity;



/**
 * Goodstag entity. @author MyEclipse Persistence Tools
 */

public class Goodstag  implements java.io.Serializable {


    // Fields    

     private Integer tagid;
     private String tagname;
     private String tagimg;


    // Constructors

    /** default constructor */
    public Goodstag() {
    }

    
    /** full constructor */
    public Goodstag(String tagname, String tagimg) {
        this.tagname = tagname;
        this.tagimg = tagimg;
    }

   
    // Property accessors

    public Integer getTagid() {
        return this.tagid;
    }
    
    public void setTagid(Integer tagid) {
        this.tagid = tagid;
    }

    public String getTagname() {
        return this.tagname;
    }
    
    public void setTagname(String tagname) {
        this.tagname = tagname;
    }

    public String getTagimg() {
        return this.tagimg;
    }
    
    public void setTagimg(String tagimg) {
        this.tagimg = tagimg;
    }
   








}