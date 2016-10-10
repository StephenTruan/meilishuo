package org.meilishuo.entity;

import java.util.HashSet;
import java.util.Set;


/**
 * Specifications entity. @author MyEclipse Persistence Tools
 */

public class Specifications  implements java.io.Serializable {


    // Fields    

     private Integer spid;
     private String sptext;
     private Set typeinfoandspecificationses = new HashSet(0);


    // Constructors

    /** default constructor */
    public Specifications() {
    }

	/** minimal constructor */
    public Specifications(String sptext) {
        this.sptext = sptext;
    }
    
    /** full constructor */
    public Specifications(String sptext, Set typeinfoandspecificationses) {
        this.sptext = sptext;
        this.typeinfoandspecificationses = typeinfoandspecificationses;
    }

   
    // Property accessors

    public Integer getSpid() {
        return this.spid;
    }
    
    public void setSpid(Integer spid) {
        this.spid = spid;
    }

    public String getSptext() {
        return this.sptext;
    }
    
    public void setSptext(String sptext) {
        this.sptext = sptext;
    }

    public Set getTypeinfoandspecificationses() {
        return this.typeinfoandspecificationses;
    }
    
    public void setTypeinfoandspecificationses(Set typeinfoandspecificationses) {
        this.typeinfoandspecificationses = typeinfoandspecificationses;
    }
   








}