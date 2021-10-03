package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_426:int;
      
      private var var_837:Boolean;
      
      private var var_977:String;
      
      private var _ownerName:String;
      
      private var var_2394:int;
      
      private var var_2757:int;
      
      private var var_2799:int;
      
      private var var_1801:String;
      
      private var var_2800:int;
      
      private var var_2397:Boolean;
      
      private var var_890:int;
      
      private var var_1569:int;
      
      private var var_2802:String;
      
      private var var_942:Array;
      
      private var var_2801:RoomThumbnailData;
      
      private var var_2511:Boolean;
      
      private var var_2798:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_942 = new Array();
         super();
         this.var_426 = param1.readInteger();
         this.var_837 = param1.readBoolean();
         this.var_977 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2394 = param1.readInteger();
         this.var_2757 = param1.readInteger();
         this.var_2799 = param1.readInteger();
         this.var_1801 = param1.readString();
         this.var_2800 = param1.readInteger();
         this.var_2397 = param1.readBoolean();
         this.var_890 = param1.readInteger();
         this.var_1569 = param1.readInteger();
         this.var_2802 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_942.push(_loc4_);
            _loc3_++;
         }
         this.var_2801 = new RoomThumbnailData(param1);
         this.var_2511 = param1.readBoolean();
         this.var_2798 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_942 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_426;
      }
      
      public function get event() : Boolean
      {
         return this.var_837;
      }
      
      public function get roomName() : String
      {
         return this.var_977;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2394;
      }
      
      public function get userCount() : int
      {
         return this.var_2757;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2799;
      }
      
      public function get description() : String
      {
         return this.var_1801;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2800;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2397;
      }
      
      public function get score() : int
      {
         return this.var_890;
      }
      
      public function get categoryId() : int
      {
         return this.var_1569;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2802;
      }
      
      public function get tags() : Array
      {
         return this.var_942;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2801;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2511;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2798;
      }
   }
}
