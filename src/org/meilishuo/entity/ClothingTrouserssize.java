package org.meilishuo.entity;



/**
 * ClothingTrouserssize entity. @author MyEclipse Persistence Tools
 */

public class ClothingTrouserssize  implements java.io.Serializable {


    // Fields    

     private Integer ctsid;
     private String ctsname;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingTrouserssize() {
    }

	/** minimal constructor */
    public ClothingTrouserssize(String ctsname) {
        this.ctsname = ctsname;
    }
    
    /** full constructor */
    public ClothingTrouserssize(String ctsname, Integer tpid) {
        this.ctsname = ctsname;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCtsid() {
        return this.ctsid;
    }
    
    public void setCtsid(Integer ctsid) {
        this.ctsid = ctsid;
    }

    public String getCtsname() {
        return this.ctsname;
    }
    
    public void setCtsname(String ctsname) {
        this.ctsname = ctsname;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}