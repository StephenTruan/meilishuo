package org.meilishuo.entity;



/**
 * Goodsprice entity. @author MyEclipse Persistence Tools
 */

public class Goodsprice  implements java.io.Serializable {


    // Fields    

     private Integer gpid;
     private Goodsinfo goodsinfo;
     private Integer utid;
     private Double price;


    // Constructors

    /** default constructor */
    public Goodsprice() {
    }

	/** minimal constructor */
    public Goodsprice(Double price) {
        this.price = price;
    }
    
    /** full constructor */
    public Goodsprice(Goodsinfo goodsinfo, Integer utid, Double price) {
        this.goodsinfo = goodsinfo;
        this.utid = utid;
        this.price = price;
    }

   
    // Property accessors

    public Integer getGpid() {
        return this.gpid;
    }
    
    public void setGpid(Integer gpid) {
        this.gpid = gpid;
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

    public Double getPrice() {
        return this.price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }
   








}