package org.meilishuo.entity;



/**
 * Advertisement entity. @author MyEclipse Persistence Tools
 */

public class Advertisement  implements java.io.Serializable {


    // Fields    

     private Integer adid;
     private String adimg;
     private String adlink;
     private Integer adindex;
     private Integer adtype;


    // Constructors

    /** default constructor */
    public Advertisement() {
    }

	/** minimal constructor */
    public Advertisement(String adimg, String adlink) {
        this.adimg = adimg;
        this.adlink = adlink;
    }
    
    /** full constructor */
    public Advertisement(String adimg, String adlink, Integer adindex, Integer adtype) {
        this.adimg = adimg;
        this.adlink = adlink;
        this.adindex = adindex;
        this.adtype = adtype;
    }

   
    // Property accessors

    public Integer getAdid() {
        return this.adid;
    }
    
    public void setAdid(Integer adid) {
        this.adid = adid;
    }

    public String getAdimg() {
        return this.adimg;
    }
    
    public void setAdimg(String adimg) {
        this.adimg = adimg;
    }

    public String getAdlink() {
        return this.adlink;
    }
    
    public void setAdlink(String adlink) {
        this.adlink = adlink;
    }

    public Integer getAdindex() {
        return this.adindex;
    }
    
    public void setAdindex(Integer adindex) {
        this.adindex = adindex;
    }

    public Integer getAdtype() {
        return this.adtype;
    }
    
    public void setAdtype(Integer adtype) {
        this.adtype = adtype;
    }
   








}