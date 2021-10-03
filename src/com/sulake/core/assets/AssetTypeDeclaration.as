package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_3007:String;
      
      private var var_3005:Class;
      
      private var var_3006:Class;
      
      private var var_2180:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_3007 = param1;
         this.var_3005 = param2;
         this.var_3006 = param3;
         if(rest == null)
         {
            this.var_2180 = new Array();
         }
         else
         {
            this.var_2180 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_3007;
      }
      
      public function get assetClass() : Class
      {
         return this.var_3005;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_3006;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2180;
      }
   }
}
