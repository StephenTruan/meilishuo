package org.meilishuo.entity;



/**
 * ClothingSkirtsize entity. @author MyEclipse Persistence Tools
 */

public class ClothingSkirtsize  implements java.io.Serializable {


    // Fields    

     private Integer cssid;
     private String csstext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingSkirtsize() {
    }

	/** minimal constructor */
    public ClothingSkirtsize(String csstext) {
        this.csstext = csstext;
    }
    
    /** full constructor */
    public ClothingSkirtsize(String csstext, Integer tpid) {
        this.csstext = csstext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCssid() {
        return this.cssid;
    }
    
    public void setCssid(Integer cssid) {
        this.cssid = cssid;
    }

    public String getCsstext() {
        return this.csstext;
    }
    
    public void setCsstext(String csstext) {
        this.csstext = csstext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}