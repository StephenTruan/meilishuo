package org.meilishuo.entity;



/**
 * Goodscollection entity. @author MyEclipse Persistence Tools
 */

public class Goodscollection  implements java.io.Serializable {


    // Fields    

     private GoodscollectionId id;


    // Constructors

    /** default constructor */
    public Goodscollection() {
    }

    
    /** full constructor */
    public Goodscollection(GoodscollectionId id) {
        this.id = id;
    }

   
    // Property accessors

    public GoodscollectionId getId() {
        return this.id;
    }
    
    public void setId(GoodscollectionId id) {
        this.id = id;
    }
   








}