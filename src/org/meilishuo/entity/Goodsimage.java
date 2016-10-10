package org.meilishuo.entity;



/**
 * Goodsimage entity. @author MyEclipse Persistence Tools
 */

public class Goodsimage  implements java.io.Serializable {


    // Fields    

     private Integer gimgid;
     private Goodsinfo goodsinfo;
     private String gimgurl;
     private Integer gimgtype;


    // Constructors

    /** default constructor */
    public Goodsimage() {
    }

	/** minimal constructor */
    public Goodsimage(String gimgurl) {
        this.gimgurl = gimgurl;
    }
    
    /** full constructor */
    public Goodsimage(Goodsinfo goodsinfo, String gimgurl, Integer gimgtype) {
        this.goodsinfo = goodsinfo;
        this.gimgurl = gimgurl;
        this.gimgtype = gimgtype;
    }

   
    // Property accessors

    public Integer getGimgid() {
        return this.gimgid;
    }
    
    public void setGimgid(Integer gimgid) {
        this.gimgid = gimgid;
    }

    public Goodsinfo getGoodsinfo() {
        return this.goodsinfo;
    }
    
    public void setGoodsinfo(Goodsinfo goodsinfo) {
        this.goodsinfo = goodsinfo;
    }

    public String getGimgurl() {
        return this.gimgurl;
    }
    
    public void setGimgurl(String gimgurl) {
        this.gimgurl = gimgurl;
    }

    public Integer getGimgtype() {
        return this.gimgtype;
    }
    
    public void setGimgtype(Integer gimgtype) {
        this.gimgtype = gimgtype;
    }
   








}