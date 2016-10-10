package org.meilishuo.entity;



/**
 * Orderlist entity. @author MyEclipse Persistence Tools
 */

public class Orderlist  implements java.io.Serializable {


    // Fields    

     private String olid;
     private Orderinfo orderinfo;
     private Integer gdid;
     private Integer gdcount;
     private Double price;


    // Constructors

    /** default constructor */
    public Orderlist() {
    }

    
    /** full constructor */
    public Orderlist(Orderinfo orderinfo, Integer gdid, Integer gdcount, Double price) {
        this.orderinfo = orderinfo;
        this.gdid = gdid;
        this.gdcount = gdcount;
        this.price = price;
    }

   
    // Property accessors

    public String getOlid() {
        return this.olid;
    }
    
    public void setOlid(String olid) {
        this.olid = olid;
    }

    public Orderinfo getOrderinfo() {
        return this.orderinfo;
    }
    
    public void setOrderinfo(Orderinfo orderinfo) {
        this.orderinfo = orderinfo;
    }

    public Integer getGdid() {
        return this.gdid;
    }
    
    public void setGdid(Integer gdid) {
        this.gdid = gdid;
    }

    public Integer getGdcount() {
        return this.gdcount;
    }
    
    public void setGdcount(Integer gdcount) {
        this.gdcount = gdcount;
    }

    public Double getPrice() {
        return this.price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }
   








}