package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetPlayListModificationMessage extends RoomWidgetMessage
   {
      
      public static const const_802:String = "RWPLAM_ADD_TO_PLAYLIST";
      
      public static const const_909:String = "RWPLAM_REMOVE_FROM_PLAYLIST";
       
      
      private var var_2546:int;
      
      private var var_2545:int;
      
      public function RoomWidgetPlayListModificationMessage(param1:String, param2:int = -1, param3:int = -1)
      {
         super(param1);
         this.var_2545 = param2;
         this.var_2546 = param3;
      }
      
      public function get diskId() : int
      {
         return this.var_2546;
      }
      
      public function get slotNumber() : int
      {
         return this.var_2545;
      }
   }
}
