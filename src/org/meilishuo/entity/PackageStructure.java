package org.meilishuo.entity;



/**
 * PackageStructure entity. @author MyEclipse Persistence Tools
 */

public class PackageStructure  implements java.io.Serializable {


    // Fields    

     private Integer pgstid;
     private String pgsttext;
     private Integer tpid;


    // Constructors

    /** default constructor */
    public PackageStructure() {
    }

	/** minimal constructor */
    public PackageStructure(String pgsttext) {
        this.pgsttext = pgsttext;
    }
    
    /** full constructor */
    public PackageStructure(String pgsttext, Integer tpid) {
        this.pgsttext = pgsttext;
        this.tpid = tpid;
    }

   
    // Property accessors

    public Integer getPgstid() {
        return this.pgstid;
    }
    
    public void setPgstid(Integer pgstid) {
        this.pgstid = pgstid;
    }

    public String getPgsttext() {
        return this.pgsttext;
    }
    
    public void setPgsttext(String pgsttext) {
        this.pgsttext = pgsttext;
    }

    public Integer getTpid() {
        return this.tpid;
    }
    
    public void setTpid(Integer tpid) {
        this.tpid = tpid;
    }
   








}