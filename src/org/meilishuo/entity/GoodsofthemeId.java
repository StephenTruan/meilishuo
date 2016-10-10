package org.meilishuo.entity;



/**
 * GoodsofthemeId entity. @author MyEclipse Persistence Tools
 */

public class GoodsofthemeId  implements java.io.Serializable {


    // Fields    

     private Integer thid;
     private Integer gdid;


    // Constructors

    /** default constructor */
    public GoodsofthemeId() {
    }

    
    /** full constructor */
    public GoodsofthemeId(Integer thid, Integer gdid) {
        this.thid = thid;
        this.gdid = gdid;
    }

   
    // Property accessors

    public Integer getThid() {
        return this.thid;
    }
    
    public void setThid(Integer thid) {
        this.thid = thid;
    }

    public Integer getGdid() {
        return this.gdid;
    }
    
    public void setGdid(Integer gdid) {
        this.gdid = gdid;
    }
   



   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof GoodsofthemeId) ) return false;
		 GoodsofthemeId castOther = ( GoodsofthemeId ) other; 
         
		 return ( (this.getThid()==castOther.getThid()) || ( this.getThid()!=null && castOther.getThid()!=null && this.getThid().equals(castOther.getThid()) ) )
 && ( (this.getGdid()==castOther.getGdid()) || ( this.getGdid()!=null && castOther.getGdid()!=null && this.getGdid().equals(castOther.getGdid()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getThid() == null ? 0 : this.getThid().hashCode() );
         result = 37 * result + ( getGdid() == null ? 0 : this.getGdid().hashCode() );
         return result;
   }   





}