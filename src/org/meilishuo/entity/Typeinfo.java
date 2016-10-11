package org.meilishuo.entity;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;


/**
 * Typeinfo entity. @author MyEclipse Persistence Tools
 */

public class Typeinfo  implements java.io.Serializable {


    // Fields    

     private Integer tpid;
     private String tpname;
     private Integer tplevel;
     private Integer tpparentid;
     
     private Map<String, Specifications> specificationses;


    // Constructors

    /** default constructor */
    public Typeinfo() {
    }

	/** minimal constructor */
    public Typeinfo(String tpname, Integer tplevel) {
        this.tpname = tpname;
        this.tplevel = tplevel;
    }
    
    /** full constructor */
    public Typeinfo(String tpname, Integer tplevel, Integer tpparentid, Map specificationses) {
        this.tpname = tpname;
        this.tplevel = tplevel;
        this.tpparentid = tpparentid;
        this.specificationses = specificationses;
    }

   
    // Property accessors

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }

    public String getTpname() {
        return this.tpname;
    }
    
    public void setTpname(String tpname) {
        this.tpname = tpname;
    }

    public Integer getTplevel() {
        return this.tplevel;
    }
    
    public void setTplevel(Integer tplevel) {
        this.tplevel = tplevel;
    }

    public Integer getTpparentid() {
        return this.tpparentid;
    }
    
    public void setTpparentid(Integer tpparentid) {
        this.tpparentid = tpparentid;
    }

	public Map<String, Specifications> getSpecificationses() {
		return specificationses;
	}

	public void setSpecificationses(Map<String, Specifications> specificationses) {
		this.specificationses = specificationses;
	}
    
   








}