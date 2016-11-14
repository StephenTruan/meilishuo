package org.meilishuo.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;


/**
 * Goodsinfo entity. @author MyEclipse Persistence Tools
 */

public class Goodsinfo  implements java.io.Serializable {


    // Fields    

     private Integer gdid;
     private String gdname;
     private Typeinfo typeinfo;
     private Integer ctid;
     private Integer ccid;
     private Integer mtid;
     private Integer ceid;
     private Integer clhid;
     private Integer ccloseid;
     private Integer csid;
     private Integer cssid;
     private Integer cshid;
     private Integer csbid;
     private Integer cskid;
     private Integer ctsid;
     private Integer cthid;
     private Integer soleid;
     private Integer ptid;
     private Integer packagehardness;
     private Integer packageinner;
     private Integer pgstid;
     
     private Integer tagid;
     private String gtkeywords;
     private Integer gsid;
     private Timestamp gtdate;
     private Set goodspricehistories;
     private Set goodscollections;
     private Set goodscomments;
     
     private Map<Long, Goodsprice> goodsprices;
     private Map<Long, Goodsimage> goodsimages;

     private Storeinfo storeinfo;

    // Constructors

    /** default constructor */
    public Goodsinfo() {
    }

	/** minimal constructor */
    public Goodsinfo(String gdname) {
        this.gdname = gdname;
    }
    
   
   
    // Property accessors

   

    public String getGdname() {
        return this.gdname;
    }
    
    public Integer getGdid() {
		return gdid;
	}

	public void setGdid(Integer gdid) {
		this.gdid = gdid;
	}

	public void setGdname(String gdname) {
        this.gdname = gdname;
    }

   
    
    public Typeinfo getTypeinfo() {
		return typeinfo;
	}

	public void setTypeinfo(Typeinfo typeinfo) {
		this.typeinfo = typeinfo;
	}

	public Integer getCtid() {
        return this.ctid;
    }
    
    public void setCtid(Integer ctid) {
        this.ctid = ctid;
    }

    public Integer getCcid() {
        return this.ccid;
    }
    
    public void setCcid(Integer ccid) {
        this.ccid = ccid;
    }

    public Integer getMtid() {
        return this.mtid;
    }
    
    public void setMtid(Integer mtid) {
        this.mtid = mtid;
    }

    public Integer getCeid() {
        return this.ceid;
    }
    
    public void setCeid(Integer ceid) {
        this.ceid = ceid;
    }

    public Integer getClhid() {
        return this.clhid;
    }
    
    public void setClhid(Integer clhid) {
        this.clhid = clhid;
    }

    public Integer getCcloseid() {
        return this.ccloseid;
    }
    
    public void setCcloseid(Integer ccloseid) {
        this.ccloseid = ccloseid;
    }

    public Integer getCsid() {
        return this.csid;
    }
    
    public void setCsid(Integer csid) {
        this.csid = csid;
    }

    public Integer getCssid() {
        return this.cssid;
    }
    
    public void setCssid(Integer cssid) {
        this.cssid = cssid;
    }

    public Integer getCshid() {
        return this.cshid;
    }
    
    public void setCshid(Integer cshid) {
        this.cshid = cshid;
    }

    public Integer getCsbid() {
        return this.csbid;
    }
    
    public void setCsbid(Integer csbid) {
        this.csbid = csbid;
    }

    public Integer getCskid() {
        return this.cskid;
    }
    
    public void setCskid(Integer cskid) {
        this.cskid = cskid;
    }

    public Integer getCtsid() {
        return this.ctsid;
    }
    
    public void setCtsid(Integer ctsid) {
        this.ctsid = ctsid;
    }

    public Integer getCthid() {
        return this.cthid;
    }
    
    public void setCthid(Integer cthid) {
        this.cthid = cthid;
    }

    public Integer getSoleid() {
        return this.soleid;
    }
    
    public void setSoleid(Integer soleid) {
        this.soleid = soleid;
    }

    public Integer getPtid() {
        return this.ptid;
    }
    
    public void setPtid(Integer ptid) {
        this.ptid = ptid;
    }

    public Integer getPackagehardness() {
        return this.packagehardness;
    }
    
    public void setPackagehardness(Integer packagehardness) {
        this.packagehardness = packagehardness;
    }

    public Integer getPackageinner() {
        return this.packageinner;
    }
    
    public void setPackageinner(Integer packageinner) {
        this.packageinner = packageinner;
    }

    public Integer getPgstid() {
        return this.pgstid;
    }
    
    public void setPgstid(Integer pgstid) {
        this.pgstid = pgstid;
    }

    

    public Storeinfo getStoreinfo() {
		return storeinfo;
	}

	public void setStoreinfo(Storeinfo storeinfo) {
		this.storeinfo = storeinfo;
	}

	public Integer getTagid() {
        return this.tagid;
    }
    
    public void setTagid(Integer tagid) {
        this.tagid = tagid;
    }

    public String getGtkeywords() {
        return this.gtkeywords;
    }
    
    public void setGtkeywords(String gtkeywords) {
        this.gtkeywords = gtkeywords;
    }

    public Integer getGsid() {
        return this.gsid;
    }
    
    public void setGsid(Integer gsid) {
        this.gsid = gsid;
    }

    public Timestamp getGtdate() {
        return this.gtdate;
    }
    
    public void setGtdate(Timestamp gtdate) {
        this.gtdate = gtdate;
    }

    public Set getGoodspricehistories() {
        return this.goodspricehistories;
    }
    
    public void setGoodspricehistories(Set goodspricehistories) {
        this.goodspricehistories = goodspricehistories;
    }

   

    public Set getGoodscollections() {
        return this.goodscollections;
    }
    
    public void setGoodscollections(Set goodscollections) {
        this.goodscollections = goodscollections;
    }

    public Set getGoodscomments() {
        return this.goodscomments;
    }
    
    public void setGoodscomments(Set goodscomments) {
        this.goodscomments = goodscomments;
    }

	public Map<Long, Goodsprice> getGoodsprices() {
		return goodsprices;
	}

	public void setGoodsprices(Map<Long, Goodsprice> goodsprices) {
		this.goodsprices = goodsprices;
	}

	public Map<Long, Goodsimage> getGoodsimages() {
		return goodsimages;
	}

	public void setGoodsimages(Map<Long, Goodsimage> goodsimages) {
		this.goodsimages = goodsimages;
	}

	

    
   








}