package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1436:IHabboTracking;
      
      private var var_2139:Boolean = false;
      
      private var var_2634:int = 0;
      
      private var var_1931:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1436 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1436 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2139 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2634 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2139)
         {
            return;
         }
         ++this.var_1931;
         if(this.var_1931 <= this.var_2634)
         {
            this.var_1436.trackGoogle("toolbar",param1);
         }
      }
   }
}
