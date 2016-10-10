package org.meilishuo.entity;



/**
 * Material entity. @author MyEclipse Persistence Tools
 */

public class Material  implements java.io.Serializable {


    // Fields    

     private Integer mtid;
     private String mttext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public Material() {
    }

	/** minimal constructor */
    public Material(String mttext) {
        this.mttext = mttext;
    }
    
    /** full constructor */
    public Material(String mttext, Integer tpid) {
        this.mttext = mttext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getMtid() {
        return this.mtid;
    }
    
    public void setMtid(Integer mtid) {
        this.mtid = mtid;
    }

    public String getMttext() {
        return this.mttext;
    }
    
    public void setMttext(String mttext) {
        this.mttext = mttext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}