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




}