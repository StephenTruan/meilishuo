package org.meilishuo.entity;



/**
 * ClothingSkirtkaicha entity. @author MyEclipse Persistence Tools
 */

public class ClothingSkirtkaicha  implements java.io.Serializable {


    // Fields    

     private Integer cskid;
     private String csktext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public ClothingSkirtkaicha() {
    }

	/** minimal constructor */
    public ClothingSkirtkaicha(String csktext) {
        this.csktext = csktext;
    }
    
    /** full constructor */
    public ClothingSkirtkaicha(String csktext, Integer tpid) {
        this.csktext = csktext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getCskid() {
        return this.cskid;
    }
    
    public void setCskid(Integer cskid) {
        this.cskid = cskid;
    }

    public String getCsktext() {
        return this.csktext;
    }
    
    public void setCsktext(String csktext) {
        this.csktext = csktext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}