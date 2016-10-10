package org.meilishuo.entity;

import java.sql.Timestamp;


/**
 * Goodspricehistory entity. @author MyEclipse Persistence Tools
 */

public class Goodspricehistory  implements java.io.Serializable {


    // Fields    

     private Integer hid;
     private Goodsinfo goodsinfo;
     private Integer utid;
     private Double pricePrevious;
     private Timestamp changedate;


    // Constructors

    /** default constructor */
    public Goodspricehistory() {
    }

	/** minimal constructor */
    public Goodspricehistory(Double pricePrevious) {
        this.pricePrevious = pricePrevious;
    }
    
    /** full constructor */
    public Goodspricehistory(Goodsinfo goodsinfo, Integer utid, Double pricePrevious, Timestamp changedate) {
        this.goodsinfo = goodsinfo;
        this.utid = utid;
        this.pricePrevious = pricePrevious;
        this.changedate = changedate;
    }

   
    // Property accessors

    public Integer getHid() {
        return this.hid;
    }
    
    public void setHid(Integer hid) {
        this.hid = hid;
    }

    public Goodsinfo getGoodsinfo() {
        return this.goodsinfo;
    }
    
    public void setGoodsinfo(Goodsinfo goodsinfo) {
        this.goodsinfo = goodsinfo;
    }

    public Integer getUtid() {
        return this.utid;
    }
    
    public void setUtid(Integer utid) {
        this.utid = utid;
    }

    public Double getPricePrevious() {
        return this.pricePrevious;
    }
    
    public void setPricePrevious(Double pricePrevious) {
        this.pricePrevious = pricePrevious;
    }

    public Timestamp getChangedate() {
        return this.changedate;
    }
    
    public void setChangedate(Timestamp changedate) {
        this.changedate = changedate;
    }
   








}