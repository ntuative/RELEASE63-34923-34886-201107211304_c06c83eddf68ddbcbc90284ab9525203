package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_30;
      
      private static var var_165:Stage;
      
      private static var var_356:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_916:Boolean = true;
      
      private static var var_144:DisplayObject;
      
      private static var var_1679:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_165 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_144)
            {
               var_165.removeChild(var_144);
               var_165.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_165.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_165.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_165.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_916 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_356;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_356 = param1;
         if(var_356)
         {
            if(var_144)
            {
               var_144.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_144)
         {
            var_144.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_916)
         {
            _loc1_ = var_1679[_type];
            if(_loc1_)
            {
               if(var_144)
               {
                  var_165.removeChild(var_144);
               }
               else
               {
                  var_165.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_165.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_165.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_165.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_144 = _loc1_;
               var_165.addChild(var_144);
            }
            else
            {
               if(var_144)
               {
                  var_165.removeChild(var_144);
                  var_165.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_165.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_165.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_165.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_144 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_30:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_354:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_993:
                  case MouseCursorType.const_288:
                  case MouseCursorType.const_1929:
                  case MouseCursorType.const_1961:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_916 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1679[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_144)
         {
            var_144.x = param1.stageX - 2;
            var_144.y = param1.stageY;
            if(_type == MouseCursorType.const_30)
            {
               var_356 = false;
               Mouse.show();
            }
            else
            {
               var_356 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_144 && _type != MouseCursorType.const_30)
         {
            Mouse.hide();
            var_356 = false;
         }
      }
   }
}
