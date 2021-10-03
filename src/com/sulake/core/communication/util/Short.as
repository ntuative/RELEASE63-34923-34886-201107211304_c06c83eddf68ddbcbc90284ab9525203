package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_909:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         this.var_909 = new ByteArray();
         this.var_909.writeShort(param1);
         this.var_909.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         this.var_909.position = 0;
         if(this.var_909.bytesAvailable)
         {
            _loc1_ = this.var_909.readShort();
            this.var_909.position = 0;
         }
         return _loc1_;
      }
   }
}
