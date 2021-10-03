package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_932:int = 1;
      
      public static const const_856:int = 2;
      
      public static const const_736:int = 3;
      
      public static const const_1228:int = 4;
      
      public static const const_935:int = 5;
      
      public static const const_1271:int = 6;
       
      
      private var _type:int;
      
      private var var_1237:int;
      
      private var var_2293:String;
      
      private var var_2938:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1237 = param2;
         this.var_2293 = param3;
         this.var_2938 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2293;
      }
      
      public function get time() : String
      {
         return this.var_2938;
      }
      
      public function get senderId() : int
      {
         return this.var_1237;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
