package org.meilishuo.entity;



/**
 * GoodscommentId entity. @author MyEclipse Persistence Tools
 */

public class GoodscommentId  implements java.io.Serializable {


    // Fields    

     private Userinfo userinfo;
     private Goodsinfo goodsinfo;


    // Constructors

    /** default constructor */
    public GoodscommentId() {
    }

    
    /** full constructor */
    public GoodscommentId(Userinfo userinfo, Goodsinfo goodsinfo) {
        this.userinfo = userinfo;
        this.goodsinfo = goodsinfo;
    }

   
    // Property accessors

    public Userinfo getUserinfo() {
        return this.userinfo;
    }
    
    public void setUserinfo(Userinfo userinfo) {
        this.userinfo = userinfo;
    }

    public Goodsinfo getGoodsinfo() {
        return this.goodsinfo;
    }
    
    public void setGoodsinfo(Goodsinfo goodsinfo) {
        this.goodsinfo = goodsinfo;
    }
   



   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof GoodscommentId) ) return false;
		 GoodscommentId castOther = ( GoodscommentId ) other; 
         
		 return ( (this.getUserinfo()==castOther.getUserinfo()) || ( this.getUserinfo()!=null && castOther.getUserinfo()!=null && this.getUserinfo().equals(castOther.getUserinfo()) ) )
 && ( (this.getGoodsinfo()==castOther.getGoodsinfo()) || ( this.getGoodsinfo()!=null && castOther.getGoodsinfo()!=null && this.getGoodsinfo().equals(castOther.getGoodsinfo()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getUserinfo() == null ? 0 : this.getUserinfo().hashCode() );
         result = 37 * result + ( getGoodsinfo() == null ? 0 : this.getGoodsinfo().hashCode() );
         return result;
   }   





}