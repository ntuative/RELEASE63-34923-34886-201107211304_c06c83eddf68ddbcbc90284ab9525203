package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_782:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2281:int;
      
      private var var_2278:int;
      
      private var _color:uint;
      
      private var var_1275:int;
      
      private var var_2734:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_782);
         this.var_2281 = param1;
         this.var_2278 = param2;
         this._color = param3;
         this.var_1275 = param4;
         this.var_2734 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2281;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2278;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1275;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2734;
      }
   }
}
