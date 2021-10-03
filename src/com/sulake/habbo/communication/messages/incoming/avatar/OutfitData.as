package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2090:int;
      
      private var var_2295:String;
      
      private var var_1087:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2090 = param1.readInteger();
         this.var_2295 = param1.readString();
         this.var_1087 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2090;
      }
      
      public function get figureString() : String
      {
         return this.var_2295;
      }
      
      public function get gender() : String
      {
         return this.var_1087;
      }
   }
}
