package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_157:String = "ROE_MOUSE_CLICK";
      
      public static const const_192:String = "ROE_MOUSE_ENTER";
      
      public static const const_529:String = "ROE_MOUSE_MOVE";
      
      public static const const_199:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2330:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_572:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1898:String = "";
      
      private var var_2888:Boolean;
      
      private var var_2889:Boolean;
      
      private var var_2890:Boolean;
      
      private var var_2892:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1898 = param2;
         this.var_2888 = param5;
         this.var_2889 = param6;
         this.var_2890 = param7;
         this.var_2892 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1898;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2888;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2889;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2890;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2892;
      }
   }
}
