package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_710:String;
      
      private var var_2489:String;
      
      private var var_1087:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_710 = param1;
         this.var_1087 = param2;
         this.var_2489 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_710;
      }
      
      public function get race() : String
      {
         return this.var_2489;
      }
      
      public function get gender() : String
      {
         return this.var_1087;
      }
   }
}
