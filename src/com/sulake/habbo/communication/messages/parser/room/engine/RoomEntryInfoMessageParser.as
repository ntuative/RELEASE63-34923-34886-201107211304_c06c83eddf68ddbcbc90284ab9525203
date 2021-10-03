package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2201:Boolean;
      
      private var var_3034:int;
      
      private var _owner:Boolean;
      
      private var var_1404:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get privateRoom() : Boolean
      {
         return this.var_2201;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_3034;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1404;
      }
      
      public function get owner() : Boolean
      {
         return this._owner;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1404 != null)
         {
            this.var_1404.dispose();
            this.var_1404 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2201 = param1.readBoolean();
         if(this.var_2201)
         {
            this.var_3034 = param1.readInteger();
            this._owner = param1.readBoolean();
         }
         else
         {
            this.var_1404 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
