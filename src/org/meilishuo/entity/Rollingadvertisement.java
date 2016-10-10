package org.meilishuo.entity;

import java.sql.Timestamp;


/**
 * Rollingadvertisement entity. @author MyEclipse Persistence Tools
 */

public class Rollingadvertisement  implements java.io.Serializable {


    // Fields    

     private Integer raid;
     private String raimg;
     private String raurl;
     private Timestamp radate;


    // Constructors

    /** default constructor */
    public Rollingadvertisement() {
    }

    
    /** full constructor */
    public Rollingadvertisement(String raimg, String raurl, Timestamp radate) {
        this.raimg = raimg;
        this.raurl = raurl;
        this.radate = radate;
    }

   
    // Property accessors

    public Integer getRaid() {
        return this.raid;
    }
    
    public void setRaid(Integer raid) {
        this.raid = raid;
    }

    public String getRaimg() {
        return this.raimg;
    }
    
    public void setRaimg(String raimg) {
        this.raimg = raimg;
    }

    public String getRaurl() {
        return this.raurl;
    }
    
    public void setRaurl(String raurl) {
        this.raurl = raurl;
    }

    public Timestamp getRadate() {
        return this.radate;
    }
    
    public void setRadate(Timestamp radate) {
        this.radate = radate;
    }
   








}