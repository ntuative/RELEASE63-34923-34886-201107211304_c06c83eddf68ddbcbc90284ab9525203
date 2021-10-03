package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1466:IID;
      
      private var var_1769:String;
      
      private var var_123:IUnknown;
      
      private var var_781:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1466 = param1;
         this.var_1769 = getQualifiedClassName(this.var_1466);
         this.var_123 = param2;
         this.var_781 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1466;
      }
      
      public function get iis() : String
      {
         return this.var_1769;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_123;
      }
      
      public function get references() : uint
      {
         return this.var_781;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_123 == null;
      }
      
      public function dispose() : void
      {
         this.var_1466 = null;
         this.var_1769 = null;
         this.var_123 = null;
         this.var_781 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_781;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_781) : uint(0);
      }
   }
}
