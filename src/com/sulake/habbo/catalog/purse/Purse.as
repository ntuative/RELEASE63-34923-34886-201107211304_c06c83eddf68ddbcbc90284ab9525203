package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1976:int = 0;
      
      private var var_1540:Dictionary;
      
      private var var_1914:int = 0;
      
      private var var_1915:int = 0;
      
      private var var_2369:Boolean = false;
      
      private var var_2379:int = 0;
      
      private var var_2372:int = 0;
      
      private var var_2607:Boolean = false;
      
      public function Purse()
      {
         this.var_1540 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1976;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1976 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1914;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1914 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1915;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1915 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1914 > 0 || this.var_1915 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2369;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2607;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2607 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2369 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2379;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2379 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2372;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2372 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1540;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1540 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1540[param1];
      }
   }
}
