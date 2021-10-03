package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_2058:int;
      
      private var var_2059:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return this.var_2058;
      }
      
      public function get answerText() : String
      {
         return this.var_2059;
      }
      
      public function flush() : Boolean
      {
         this.var_2058 = -1;
         this.var_2059 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2058 = param1.readInteger();
         this.var_2059 = param1.readString();
         return true;
      }
   }
}
