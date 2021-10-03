package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MessengerErrorMessageParser implements IMessageParser
   {
       
      
      private var var_3024:int;
      
      private var var_1824:int;
      
      public function MessengerErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_3024 = param1.readInteger();
         this.var_1824 = param1.readInteger();
         return true;
      }
      
      public function get clientMessageId() : int
      {
         return this.var_3024;
      }
      
      public function get errorCode() : int
      {
         return this.var_1824;
      }
   }
}
