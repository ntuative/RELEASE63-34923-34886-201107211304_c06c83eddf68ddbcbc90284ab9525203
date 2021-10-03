package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1995:int;
      
      private var var_2708:int;
      
      private var var_831:int;
      
      private var var_601:Number;
      
      private var var_2710:Boolean;
      
      private var var_2709:int;
      
      private var var_1994:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_601);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2708 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2709 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2710 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_831;
         if(this.var_831 == 1)
         {
            this.var_601 = param1;
            this.var_1995 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_831);
            this.var_601 = this.var_601 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2710 && param3 - this.var_1995 >= this.var_2708)
         {
            this.var_831 = 0;
            if(this.var_1994 < this.var_2709)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1994;
               this.var_1995 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
