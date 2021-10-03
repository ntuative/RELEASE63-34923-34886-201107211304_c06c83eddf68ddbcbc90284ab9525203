package com.sulake.core.localization
{
   import flash.utils.Dictionary;
   
   public class Localization implements ILocalization
   {
       
      
      private var var_731:String;
      
      private var var_211:String;
      
      private var var_1578:Dictionary;
      
      private var var_586:Array;
      
      private var _isInitialized:Boolean = false;
      
      public function Localization(param1:String, param2:String = null)
      {
         super();
         this.var_586 = new Array();
         this.var_1578 = new Dictionary();
         this.var_731 = param1;
         this.var_211 = param2;
      }
      
      public function get isInitialized() : Boolean
      {
         return this.var_211 != null;
      }
      
      public function get key() : String
      {
         return this.var_731;
      }
      
      public function get value() : String
      {
         return this.fillParameterValues();
      }
      
      public function get raw() : String
      {
         return this.var_211;
      }
      
      public function setValue(param1:String) : void
      {
         this.var_211 = param1;
         this.updateListeners();
      }
      
      public function registerListener(param1:ILocalizable) : void
      {
         this.var_586.push(param1);
         param1.localization = this.value;
      }
      
      public function removeListener(param1:ILocalizable) : void
      {
         var _loc2_:int = this.var_586.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.var_586.splice(_loc2_,1);
         }
      }
      
      public function registerParameter(param1:String, param2:String, param3:String = "%") : void
      {
         param1 = param3 + param1 + param3;
         this.var_1578[param1] = param2;
         this.updateListeners();
      }
      
      public function updateListeners() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_586)
         {
            _loc1_.localization = this.value;
         }
      }
      
      private function fillParameterValues() : String
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc1_:String = this.var_211;
         for(_loc2_ in this.var_1578)
         {
            _loc3_ = this.var_1578[_loc2_];
            _loc4_ = new RegExp(_loc2_,"gim");
            if(_loc1_ != null)
            {
               _loc1_ = _loc1_.replace(_loc4_,_loc3_);
            }
         }
         return _loc1_;
      }
   }
}
