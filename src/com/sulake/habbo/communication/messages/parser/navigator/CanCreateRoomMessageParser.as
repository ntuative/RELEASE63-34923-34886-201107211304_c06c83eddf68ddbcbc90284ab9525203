package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomMessageParser implements IMessageParser
   {
      
      public static const const_2205:int = 0;
      
      public static const const_2233:int = 1;
       
      
      private var var_1750:int;
      
      private var var_3022:int;
      
      public function CanCreateRoomMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1750 = param1.readInteger();
         this.var_3022 = param1.readInteger();
         return true;
      }
      
      public function get resultCode() : int
      {
         return this.var_1750;
      }
      
      public function get roomLimit() : int
      {
         return this.var_3022;
      }
   }
}
