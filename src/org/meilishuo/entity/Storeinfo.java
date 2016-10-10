package org.meilishuo.entity;

import java.util.HashSet;
import java.util.Set;


/**
 * Storeinfo entity. @author MyEclipse Persistence Tools
 */

public class Storeinfo  implements java.io.Serializable {


    // Fields    

     private Integer stid;
     private String stname;
     private String stnum;
     private String stqq;
     private String staddress;
     private Integer stareaid;
     private Set orderinfos = new HashSet(0);


    // Constructors

    /** default constructor */
    public Storeinfo() {
    }

	/** minimal constructor */
    public Storeinfo(String stname) {
        this.stname = stname;
    }
    
    /** full constructor */
    public Storeinfo(String stname, String stnum, String stqq, String staddress, Integer stareaid, Set orderinfos) {
        this.stname = stname;
        this.stnum = stnum;
        this.stqq = stqq;
        this.staddress = staddress;
        this.stareaid = stareaid;
        this.orderinfos = orderinfos;
    }

   
    // Property accessors

    public Integer getStid() {
        return this.stid;
    }
    
    public void setStid(Integer stid) {
        this.stid = stid;
    }

    public String getStname() {
        return this.stname;
    }
    
    public void setStname(String stname) {
        this.stname = stname;
    }

    public String getStnum() {
        return this.stnum;
    }
    
    public void setStnum(String stnum) {
        this.stnum = stnum;
    }

    public String getStqq() {
        return this.stqq;
    }
    
    public void setStqq(String stqq) {
        this.stqq = stqq;
    }

    public String getStaddress() {
        return this.staddress;
    }
    
    public void setStaddress(String staddress) {
        this.staddress = staddress;
    }

    public Integer getStareaid() {
        return this.stareaid;
    }
    
    public void setStareaid(Integer stareaid) {
        this.stareaid = stareaid;
    }

    public Set getOrderinfos() {
        return this.orderinfos;
    }
    
    public void setOrderinfos(Set orderinfos) {
        this.orderinfos = orderinfos;
    }
   








}