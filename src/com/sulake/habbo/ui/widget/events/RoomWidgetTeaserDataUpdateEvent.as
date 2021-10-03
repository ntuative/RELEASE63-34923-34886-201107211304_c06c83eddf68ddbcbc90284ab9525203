package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_662:String = "RWTDUE_TEASER_DATA";
      
      public static const const_1017:String = "RWTDUE_GIFT_DATA";
      
      public static const const_961:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_238:int;
      
      private var _data:String;
      
      private var var_434:int;
      
      private var var_199:String;
      
      private var var_2297:String;
      
      private var var_2298:Boolean;
      
      private var var_1557:int = 0;
      
      private var var_2296:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_238;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_434;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2297;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2298;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2296;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1557;
      }
      
      public function set status(param1:int) : void
      {
         this.var_434 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2297 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2298 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2296 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_238 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_199;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_199 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1557 = param1;
      }
   }
}
