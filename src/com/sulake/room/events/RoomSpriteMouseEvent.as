package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1898:String = "";
      
      private var var_1932:String = "";
      
      private var var_2891:String = "";
      
      private var var_2886:Number = 0;
      
      private var var_2887:Number = 0;
      
      private var var_2518:Number = 0;
      
      private var var_2515:Number = 0;
      
      private var var_2889:Boolean = false;
      
      private var var_2888:Boolean = false;
      
      private var var_2890:Boolean = false;
      
      private var var_2892:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1898 = param2;
         this.var_1932 = param3;
         this.var_2891 = param4;
         this.var_2886 = param5;
         this.var_2887 = param6;
         this.var_2518 = param7;
         this.var_2515 = param8;
         this.var_2889 = param9;
         this.var_2888 = param10;
         this.var_2890 = param11;
         this.var_2892 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1898;
      }
      
      public function get canvasId() : String
      {
         return this.var_1932;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2891;
      }
      
      public function get screenX() : Number
      {
         return this.var_2886;
      }
      
      public function get screenY() : Number
      {
         return this.var_2887;
      }
      
      public function get localX() : Number
      {
         return this.var_2518;
      }
      
      public function get localY() : Number
      {
         return this.var_2515;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2889;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2888;
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
