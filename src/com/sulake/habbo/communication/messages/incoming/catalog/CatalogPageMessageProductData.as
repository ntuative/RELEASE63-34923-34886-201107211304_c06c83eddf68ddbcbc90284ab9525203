package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_79:String = "s";
      
      public static const const_195:String = "e";
       
      
      private var var_1475:String;
      
      private var var_2930:int;
      
      private var var_984:String;
      
      private var var_1476:int;
      
      private var var_1798:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1475 = param1.readString();
         this.var_2930 = param1.readInteger();
         this.var_984 = param1.readString();
         this.var_1476 = param1.readInteger();
         this.var_1798 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1475;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2930;
      }
      
      public function get extraParam() : String
      {
         return this.var_984;
      }
      
      public function get productCount() : int
      {
         return this.var_1476;
      }
      
      public function get expiration() : int
      {
         return this.var_1798;
      }
   }
}
