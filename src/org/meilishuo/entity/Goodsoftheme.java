package org.meilishuo.entity;

import java.sql.Timestamp;


/**
 * Goodsoftheme entity. @author MyEclipse Persistence Tools
 */

public class Goodsoftheme  implements java.io.Serializable {


    // Fields    

     private GoodsofthemeId id;
     private Timestamp tddate;


    // Constructors

    /** default constructor */
    public Goodsoftheme() {
    }

    
    /** full constructor */
    public Goodsoftheme(GoodsofthemeId id, Timestamp tddate) {
        this.id = id;
        this.tddate = tddate;
    }

   
    // Property accessors

    public GoodsofthemeId getId() {
        return this.id;
    }
    
    public void setId(GoodsofthemeId id) {
        this.id = id;
    }

    public Timestamp getTddate() {
        return this.tddate;
    }
    
    public void setTddate(Timestamp tddate) {
        this.tddate = tddate;
    }
   








}