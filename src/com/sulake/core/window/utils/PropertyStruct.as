package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_150:String = "hex";
      
      public static const const_37:String = "int";
      
      public static const const_291:String = "uint";
      
      public static const const_139:String = "Number";
      
      public static const const_38:String = "Boolean";
      
      public static const const_54:String = "String";
      
      public static const const_314:String = "Point";
      
      public static const const_289:String = "Rectangle";
      
      public static const const_158:String = "Array";
      
      public static const const_297:String = "Map";
       
      
      private var var_731:String;
      
      private var var_211:Object;
      
      private var _type:String;
      
      private var var_2988:Boolean;
      
      private var var_3096:Boolean;
      
      private var var_2987:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_731 = param1;
         this.var_211 = param2;
         this._type = param3;
         this.var_2988 = param4;
         this.var_3096 = param3 == const_297 || param3 == const_158 || param3 == const_314 || param3 == const_289;
         this.var_2987 = param5;
      }
      
      public function get key() : String
      {
         return this.var_731;
      }
      
      public function get value() : Object
      {
         return this.var_211;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2988;
      }
      
      public function get range() : Array
      {
         return this.var_2987;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_150:
               return "0x" + uint(this.var_211).toString(16);
            case const_38:
               return Boolean(this.var_211) == true ? "SetClothingChangeDataMessageComposer" : "HabboRoomUICom_jb_icon_disc";
            case const_314:
               return "Point(" + Point(this.var_211).x + ", " + Point(this.var_211).y + ")";
            case const_289:
               return "Rectangle(" + Rectangle(this.var_211).x + ", " + Rectangle(this.var_211).y + ", " + Rectangle(this.var_211).width + ", " + Rectangle(this.var_211).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_297:
               _loc3_ = this.var_211 as Map;
               _loc1_ = "<var key=\"" + this.var_731 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_158:
               _loc4_ = this.var_211 as Array;
               _loc1_ = "<var key=\"" + this.var_731 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_314:
               _loc5_ = this.var_211 as Point;
               _loc1_ = "<var key=\"" + this.var_731 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_289:
               _loc6_ = this.var_211 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_731 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_37 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_150:
               _loc1_ = "<var key=\"" + this.var_731 + "\" value=\"" + "0x" + uint(this.var_211).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_731 + "\" value=\"" + this.var_211 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
