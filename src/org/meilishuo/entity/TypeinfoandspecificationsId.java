package org.meilishuo.entity;



/**
 * TypeinfoandspecificationsId entity. @author MyEclipse Persistence Tools
 */

public class TypeinfoandspecificationsId  implements java.io.Serializable {


    // Fields    

     private Typeinfo typeinfo;
     private Specifications specifications;


    // Constructors

    /** default constructor */
    public TypeinfoandspecificationsId() {
    }

    
    /** full constructor */
    public TypeinfoandspecificationsId(Typeinfo typeinfo, Specifications specifications) {
        this.typeinfo = typeinfo;
        this.specifications = specifications;
    }

   
    // Property accessors

    public Typeinfo getTypeinfo() {
        return this.typeinfo;
    }
    
    public void setTypeinfo(Typeinfo typeinfo) {
        this.typeinfo = typeinfo;
    }

    public Specifications getSpecifications() {
        return this.specifications;
    }
    
    public void setSpecifications(Specifications specifications) {
        this.specifications = specifications;
    }
   



   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof TypeinfoandspecificationsId) ) return false;
		 TypeinfoandspecificationsId castOther = ( TypeinfoandspecificationsId ) other; 
         
		 return ( (this.getTypeinfo()==castOther.getTypeinfo()) || ( this.getTypeinfo()!=null && castOther.getTypeinfo()!=null && this.getTypeinfo().equals(castOther.getTypeinfo()) ) )
 && ( (this.getSpecifications()==castOther.getSpecifications()) || ( this.getSpecifications()!=null && castOther.getSpecifications()!=null && this.getSpecifications().equals(castOther.getSpecifications()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getTypeinfo() == null ? 0 : this.getTypeinfo().hashCode() );
         result = 37 * result + ( getSpecifications() == null ? 0 : this.getSpecifications().hashCode() );
         return result;
   }   





}