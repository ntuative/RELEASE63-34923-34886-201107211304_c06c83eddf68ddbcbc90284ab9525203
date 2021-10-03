package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_817:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1840:String = "inventory_effects";
      
      public static const const_1263:String = "inventory_badges";
      
      public static const const_1810:String = "inventory_clothes";
      
      public static const const_1818:String = "inventory_furniture";
       
      
      private var var_2935:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_817);
         this.var_2935 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2935;
      }
   }
}
