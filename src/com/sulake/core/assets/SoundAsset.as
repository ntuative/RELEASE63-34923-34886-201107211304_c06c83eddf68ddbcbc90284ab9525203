package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_210:Sound = null;
      
      private var var_1828:AssetTypeDeclaration;
      
      private var var_1145:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1828 = param1;
         this.var_1145 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1145;
      }
      
      public function get content() : Object
      {
         return this.var_210 as Object;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1828;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_210 = null;
            this.var_1828 = null;
            this.var_1145 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is Sound)
         {
            if(this.var_210)
            {
               this.var_210.close();
            }
            this.var_210 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(this.var_210)
            {
               this.var_210.close();
            }
            this.var_210 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(this.var_210)
            {
               this.var_210.close();
            }
            this.var_210 = SoundAsset(param1).var_210;
            return;
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            this.var_210 = SoundAsset(param1).var_210;
         }
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
