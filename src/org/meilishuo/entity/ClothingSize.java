package org.meilishuo.entity;



/**
 * ClothingSize entity. @author MyEclipse Persistence Tools
 */

public class ClothingSize  implements java.io.Serializable {


    // Fields    

     private Integer csid;
     private String csname;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingSize() {
    }

	/** minimal constructor */
    public ClothingSize(String csname) {
        this.csname = csname;
    }
    
    /** full constructor */
    public ClothingSize(String csname, Integer tpid) {
        this.csname = csname;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCsid() {
        return this.csid;
    }
    
    public void setCsid(Integer csid) {
        this.csid = csid;
    }

    public String getCsname() {
        return this.csname;
    }
    
    public void setCsname(String csname) {
        this.csname = csname;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}