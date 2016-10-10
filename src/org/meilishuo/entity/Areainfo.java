package org.meilishuo.entity;



/**
 * Areainfo entity. @author MyEclipse Persistence Tools
 */

public class Areainfo  implements java.io.Serializable {


    // Fields    

     private Integer aid;
     private String aname;
     private Integer alevel;
     private Integer aparentid;


    // Constructors

    /** default constructor */
    public Areainfo() {
    }

	/** minimal constructor */
    public Areainfo(String aname) {
        this.aname = aname;
    }
    
    /** full constructor */
    public Areainfo(String aname, Integer alevel, Integer aparentid) {
        this.aname = aname;
        this.alevel = alevel;
        this.aparentid = aparentid;
    }

   
    // Property accessors

    public Integer getAid() {
        return this.aid;
    }
    
    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAname() {
        return this.aname;
    }
    
    public void setAname(String aname) {
        this.aname = aname;
    }

    public Integer getAlevel() {
        return this.alevel;
    }
    
    public void setAlevel(Integer alevel) {
        this.alevel = alevel;
    }

    public Integer getAparentid() {
        return this.aparentid;
    }
    
    public void setAparentid(Integer aparentid) {
        this.aparentid = aparentid;
    }
   








}