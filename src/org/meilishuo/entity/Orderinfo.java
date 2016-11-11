package org.meilishuo.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;


/**
 * Orderinfo entity. @author MyEclipse Persistence Tools
 */

public class Orderinfo  implements java.io.Serializable {


    // Fields    

     private String ofid;
     private Storeinfo storeinfo;
     private Userinfo userinfo;
     private Timestamp ofdate;
     private Integer ofstate;
     private String address;
     private String recipient;
     private String contactnumber;
     
     private Set<Orderlist> orderlists;


    // Constructors

    /** default constructor */
    public Orderinfo() {
    }

	/** minimal constructor */
    public Orderinfo(Timestamp ofdate) {
        this.ofdate = ofdate;
    }
    
    /** full constructor */
    public Orderinfo(Storeinfo storeinfo, Userinfo userinfo, Timestamp ofdate, Integer ofstate, String address, String recipient, String contactnumber, Set orderlists) {
        this.storeinfo = storeinfo;
        this.userinfo = userinfo;
        this.ofdate = ofdate;
        this.ofstate = ofstate;
        this.address = address;
        this.recipient = recipient;
        this.contactnumber = contactnumber;
    }

   
    // Property accessors

    public String getOfid() {
        return this.ofid;
    }
    
    public void setOfid(String ofid) {
        this.ofid = ofid;
    }

    public Storeinfo getStoreinfo() {
        return this.storeinfo;
    }
    
    public void setStoreinfo(Storeinfo storeinfo) {
        this.storeinfo = storeinfo;
    }

    public Userinfo getUserinfo() {
        return this.userinfo;
    }
    
    public void setUserinfo(Userinfo userinfo) {
        this.userinfo = userinfo;
    }

    public Timestamp getOfdate() {
        return this.ofdate;
    }
    
    public void setOfdate(Timestamp ofdate) {
        this.ofdate = ofdate;
    }

    public Integer getOfstate() {
        return this.ofstate;
    }
    
    public void setOfstate(Integer ofstate) {
        this.ofstate = ofstate;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public String getRecipient() {
        return this.recipient;
    }
    
    public void setRecipient(String recipient) {
        this.recipient = recipient;
    }

    public String getContactnumber() {
        return this.contactnumber;
    }
    
    public void setContactnumber(String contactnumber) {
        this.contactnumber = contactnumber;
    }

	public Set<Orderlist> getOrderlists() {
		return orderlists;
	}

	public void setOrderlists(Set<Orderlist> orderlists) {
		this.orderlists = orderlists;
	}

	@Override
	public String toString() {
		return "Orderinfo [ofid=" + ofid + ", storeinfo=" + storeinfo
				+ ", userinfo=" + userinfo + ", ofdate=" + ofdate
				+ ", ofstate=" + ofstate + ", address=" + address
				+ ", recipient=" + recipient + ", contactnumber="
				+ contactnumber + "]";
	}








}