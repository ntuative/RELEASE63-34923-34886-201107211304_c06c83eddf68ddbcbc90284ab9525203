package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3079:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_727:IWindowContext;
      
      private var var_1249:IMouseDraggingService;
      
      private var var_1253:IMouseScalingService;
      
      private var var_1251:IMouseListenerService;
      
      private var var_1250:IFocusManagerService;
      
      private var var_1254:IToolTipAgentService;
      
      private var var_1252:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3079 = 0;
         this._root = param2;
         this.var_727 = param1;
         this.var_1249 = new WindowMouseDragger(param2);
         this.var_1253 = new WindowMouseScaler(param2);
         this.var_1251 = new WindowMouseListener(param2);
         this.var_1250 = new FocusManager(param2);
         this.var_1254 = new WindowToolTipAgent(param2);
         this.var_1252 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1249 != null)
         {
            this.var_1249.dispose();
            this.var_1249 = null;
         }
         if(this.var_1253 != null)
         {
            this.var_1253.dispose();
            this.var_1253 = null;
         }
         if(this.var_1251 != null)
         {
            this.var_1251.dispose();
            this.var_1251 = null;
         }
         if(this.var_1250 != null)
         {
            this.var_1250.dispose();
            this.var_1250 = null;
         }
         if(this.var_1254 != null)
         {
            this.var_1254.dispose();
            this.var_1254 = null;
         }
         if(this.var_1252 != null)
         {
            this.var_1252.dispose();
            this.var_1252 = null;
         }
         this._root = null;
         this.var_727 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1249;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1253;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1251;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1250;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1254;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1252;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
