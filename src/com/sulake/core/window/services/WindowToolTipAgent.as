package com.sulake.core.window.services
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IToolTipAgentService
   {
       
      
      protected var var_1414:String;
      
      protected var var_314:IToolTipWindow;
      
      protected var var_430:Timer;
      
      protected var var_1413:Point;
      
      protected var var_910:Point;
      
      protected var var_1704:uint;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         this.var_910 = new Point();
         this.var_1413 = new Point(20,20);
         this.var_1704 = 500;
         super(param1);
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               this.var_1414 = IInteractiveWindow(param1).toolTipCaption;
               this.var_1704 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               this.var_1414 = param1.caption;
               this.var_1704 = 500;
            }
            _mouse.x = _root.mouseX;
            _mouse.y = _root.mouseY;
            getMousePositionRelativeTo(param1,_mouse,this.var_910);
            if(this.var_1414 != null && this.var_1414 != "")
            {
               if(this.var_430 == null)
               {
                  this.var_430 = new Timer(this.var_1704,1);
                  this.var_430.addEventListener(TimerEvent.TIMER,this.showToolTip);
               }
               this.var_430.reset();
               this.var_430.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(this.var_430 != null)
         {
            this.var_430.stop();
            this.var_430.removeEventListener(TimerEvent.TIMER,this.showToolTip);
            this.var_430 = null;
         }
         this.hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,this.var_910);
            if(this.var_314 != null && !this.var_314.disposed)
            {
               this.var_314.x = param1 + this.var_1413.x;
               this.var_314.y = param2 + this.var_1413.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_430 != null)
         {
            this.var_430.reset();
         }
         if(_window && true)
         {
            if(this.var_314 == null || this.var_314.disposed)
            {
               this.var_314 = _window.context.create("undefined::ToolTip",this.var_1414,WindowType.const_410,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            this.var_314.x = _loc2_.x + this.var_910.x + this.var_1413.x;
            this.var_314.y = _loc2_.y + this.var_910.y + this.var_1413.y;
         }
      }
      
      protected function hideToolTip() : void
      {
         if(this.var_314 != null && !this.var_314.disposed)
         {
            this.var_314.destroy();
            this.var_314 = null;
         }
      }
   }
}
