package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2467:int;
      
      private var var_2466:int;
      
      private var var_2464:int;
      
      private var var_2465:String;
      
      private var var_1838:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2467 = param1.readInteger();
         this.var_2466 = param1.readInteger();
         this.var_2464 = param1.readInteger();
         this.var_2465 = param1.readString();
         this.var_1838 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2467;
      }
      
      public function get minute() : int
      {
         return this.var_2466;
      }
      
      public function get chatterId() : int
      {
         return this.var_2464;
      }
      
      public function get chatterName() : String
      {
         return this.var_2465;
      }
      
      public function get msg() : String
      {
         return this.var_1838;
      }
   }
}
