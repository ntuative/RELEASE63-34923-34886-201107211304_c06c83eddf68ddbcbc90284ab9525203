package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1220:int;
      
      private var var_2625:Boolean;
      
      private var var_2626:Boolean;
      
      private var var_2624:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1220 = param1.readInteger();
         this.var_2625 = param1.readBoolean();
         this.var_2624 = param1.readInteger();
         this.var_2626 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1220;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2625;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2626;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2624;
      }
   }
}
