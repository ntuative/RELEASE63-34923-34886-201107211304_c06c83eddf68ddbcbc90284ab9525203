package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1914:int = 0;
      
      private var var_1915:int = 0;
      
      private var var_2739:int = 0;
      
      private var var_2738:Boolean = false;
      
      private var var_2369:Boolean = false;
      
      private var var_2607:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1914 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1915 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2739 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2738 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2369 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2607 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1914;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1915;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2739;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2738;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2369;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2607;
      }
   }
}
