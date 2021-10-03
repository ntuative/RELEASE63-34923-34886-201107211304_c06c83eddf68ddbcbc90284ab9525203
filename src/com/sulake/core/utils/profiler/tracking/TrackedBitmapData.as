package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2154:int = 16777215;
      
      public static const const_1338:int = 8191;
      
      public static const const_1348:int = 8191;
      
      public static const const_2210:int = 1;
      
      public static const const_1399:int = 1;
      
      public static const const_1286:int = 1;
      
      private static var var_563:uint = 0;
      
      private static var var_564:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1338)
         {
            param2 = const_1338;
         }
         else if(param2 < const_1399)
         {
            param2 = const_1399;
         }
         if(param3 > const_1348)
         {
            param3 = const_1348;
         }
         else if(param3 < const_1286)
         {
            param3 = const_1286;
         }
         super(param2,param3,param4,param5);
         ++var_563;
         var_564 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_563;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_564;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_564 -= width * height * 4;
            --var_563;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
