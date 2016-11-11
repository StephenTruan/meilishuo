package org.meilishuo.entity;



/**
 * Orderlist entity. @author MyEclipse Persistence Tools
 */

public class Orderlist  implements java.io.Serializable {


    // Fields    

     private String olid;
     private String ofid;
     private Integer gdcount;
     private Double price;
     private Goodsinfo goodsinfo;

    // Constructors

    /** default constructor */
    public Orderlist() {
    }

    
  
    // Property accessors

    public String getOlid() {
        return this.olid;
    }
    
    public void setOlid(String olid) {
        this.olid = olid;
    }
    
	public String getOfid() {
		return ofid;
	}



	public void setOfid(String ofid) {
		this.ofid = ofid;
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



	public Goodsinfo getGoodsinfo() {
		return goodsinfo;
	}



	public void setGoodsinfo(Goodsinfo goodsinfo) {
		this.goodsinfo = goodsinfo;
	}



	@Override
	public String toString() {
		return "Orderlist [olid=" + olid + ", ofid=" + ofid + ", gdcount="
				+ gdcount + ", price=" + price + ", goodsinfo=" + goodsinfo
				+ "]";
	}
   
    







}