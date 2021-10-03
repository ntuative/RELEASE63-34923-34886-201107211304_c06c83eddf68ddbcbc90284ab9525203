package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2148:int = 1;
      
      public static const const_2149:int = 2;
      
      public static const const_2162:int = 3;
      
      public static const const_2321:int = 4;
      
      public static const const_1785:int = 5;
      
      public static const const_2200:int = 6;
      
      public static const const_1912:int = 7;
      
      public static const const_1759:int = 8;
      
      public static const const_2308:int = 9;
      
      public static const const_1944:int = 10;
      
      public static const const_1793:int = 11;
      
      public static const const_1732:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1824:int;
      
      private var var_720:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1824 = param1.readInteger();
         this.var_720 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1824;
      }
      
      public function get info() : String
      {
         return this.var_720;
      }
   }
}
