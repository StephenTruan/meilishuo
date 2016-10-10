package org.meilishuo.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo  implements java.io.Serializable {


    // Fields    

     private Integer ufid;
     private Usertypeinfo usertypeinfo;
     private String uflogname;
     private String ufpassword;
     private Integer ufsex;
     private Date ufbirthday;
     private String ufnum;
     private String ufqq;
     private String ufemail;
     private Timestamp uflogdate;
     private Integer uflocked;
     private Set orderinfos = new HashSet(0);
     private Set goodscomments = new HashSet(0);
     private Set goodscollections = new HashSet(0);


    // Constructors

    /** default constructor */
    public Userinfo() {
    }

	/** minimal constructor */
    public Userinfo(Usertypeinfo usertypeinfo, String uflogname, String ufpassword, String ufnum, Timestamp uflogdate) {
        this.usertypeinfo = usertypeinfo;
        this.uflogname = uflogname;
        this.ufpassword = ufpassword;
        this.ufnum = ufnum;
        this.uflogdate = uflogdate;
    }
    
    /** full constructor */
    public Userinfo(Usertypeinfo usertypeinfo, String uflogname, String ufpassword, Integer ufsex, Date ufbirthday, String ufnum, String ufqq, String ufemail, Timestamp uflogdate, Integer uflocked, Set orderinfos, Set goodscomments, Set goodscollections) {
        this.usertypeinfo = usertypeinfo;
        this.uflogname = uflogname;
        this.ufpassword = ufpassword;
        this.ufsex = ufsex;
        this.ufbirthday = ufbirthday;
        this.ufnum = ufnum;
        this.ufqq = ufqq;
        this.ufemail = ufemail;
        this.uflogdate = uflogdate;
        this.uflocked = uflocked;
        this.orderinfos = orderinfos;
        this.goodscomments = goodscomments;
        this.goodscollections = goodscollections;
    }

   
    // Property accessors

    public Integer getUfid() {
        return this.ufid;
    }
    
    public void setUfid(Integer ufid) {
        this.ufid = ufid;
    }

    public Usertypeinfo getUsertypeinfo() {
        return this.usertypeinfo;
    }
    
    public void setUsertypeinfo(Usertypeinfo usertypeinfo) {
        this.usertypeinfo = usertypeinfo;
    }

    public String getUflogname() {
        return this.uflogname;
    }
    
    public void setUflogname(String uflogname) {
        this.uflogname = uflogname;
    }

    public String getUfpassword() {
        return this.ufpassword;
    }
    
    public void setUfpassword(String ufpassword) {
        this.ufpassword = ufpassword;
    }

    public Integer getUfsex() {
        return this.ufsex;
    }
    
    public void setUfsex(Integer ufsex) {
        this.ufsex = ufsex;
    }

    public Date getUfbirthday() {
        return this.ufbirthday;
    }
    
    public void setUfbirthday(Date ufbirthday) {
        this.ufbirthday = ufbirthday;
    }

    public String getUfnum() {
        return this.ufnum;
    }
    
    public void setUfnum(String ufnum) {
        this.ufnum = ufnum;
    }

    public String getUfqq() {
        return this.ufqq;
    }
    
    public void setUfqq(String ufqq) {
        this.ufqq = ufqq;
    }

    public String getUfemail() {
        return this.ufemail;
    }
    
    public void setUfemail(String ufemail) {
        this.ufemail = ufemail;
    }

    public Timestamp getUflogdate() {
        return this.uflogdate;
    }
    
    public void setUflogdate(Timestamp uflogdate) {
        this.uflogdate = uflogdate;
    }

    public Integer getUflocked() {
        return this.uflocked;
    }
    
    public void setUflocked(Integer uflocked) {
        this.uflocked = uflocked;
    }

    public Set getOrderinfos() {
        return this.orderinfos;
    }
    
    public void setOrderinfos(Set orderinfos) {
        this.orderinfos = orderinfos;
    }

    public Set getGoodscomments() {
        return this.goodscomments;
    }
    
    public void setGoodscomments(Set goodscomments) {
        this.goodscomments = goodscomments;
    }

    public Set getGoodscollections() {
        return this.goodscollections;
    }
    
    public void setGoodscollections(Set goodscollections) {
        this.goodscollections = goodscollections;
    }
   








}