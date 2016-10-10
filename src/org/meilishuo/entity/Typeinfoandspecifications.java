package org.meilishuo.entity;



/**
 * Typeinfoandspecifications entity. @author MyEclipse Persistence Tools
 */

public class Typeinfoandspecifications  implements java.io.Serializable {


    // Fields    

     private TypeinfoandspecificationsId id;
     private String sptext;


    // Constructors

    /** default constructor */
    public Typeinfoandspecifications() {
    }

    
    /** full constructor */
    public Typeinfoandspecifications(TypeinfoandspecificationsId id, String sptext) {
        this.id = id;
        this.sptext = sptext;
    }

   
    // Property accessors

    public TypeinfoandspecificationsId getId() {
        return this.id;
    }
    
    public void setId(TypeinfoandspecificationsId id) {
        this.id = id;
    }

    public String getSptext() {
        return this.sptext;
    }
    
    public void setSptext(String sptext) {
        this.sptext = sptext;
    }
   








}