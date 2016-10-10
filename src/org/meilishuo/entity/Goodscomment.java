package org.meilishuo.entity;

import java.sql.Timestamp;


/**
 * Goodscomment entity. @author MyEclipse Persistence Tools
 */

public class Goodscomment  implements java.io.Serializable {


    // Fields    

     private GoodscommentId id;
     private Timestamp gcdate;
     private String gctext;
     private Integer gctype;


    // Constructors

    /** default constructor */
    public Goodscomment() {
    }

	/** minimal constructor */
    public Goodscomment(GoodscommentId id, Timestamp gcdate, String gctext) {
        this.id = id;
        this.gcdate = gcdate;
        this.gctext = gctext;
    }
    
    /** full constructor */
    public Goodscomment(GoodscommentId id, Timestamp gcdate, String gctext, Integer gctype) {
        this.id = id;
        this.gcdate = gcdate;
        this.gctext = gctext;
        this.gctype = gctype;
    }

   
    // Property accessors

    public GoodscommentId getId() {
        return this.id;
    }
    
    public void setId(GoodscommentId id) {
        this.id = id;
    }

    public Timestamp getGcdate() {
        return this.gcdate;
    }
    
    public void setGcdate(Timestamp gcdate) {
        this.gcdate = gcdate;
    }

    public String getGctext() {
        return this.gctext;
    }
    
    public void setGctext(String gctext) {
        this.gctext = gctext;
    }

    public Integer getGctype() {
        return this.gctype;
    }
    
    public void setGctype(Integer gctype) {
        this.gctype = gctype;
    }
   








}