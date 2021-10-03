package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2454:String;
      
      private var var_1834:String;
      
      private var var_2453:String;
      
      private var var_1833:Boolean;
      
      private var var_1832:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2454 = String(param1["set-type"]);
         this.var_1834 = String(param1["flipped-set-type"]);
         this.var_2453 = String(param1["remove-set-type"]);
         this.var_1833 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1832 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1832;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1832 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2454;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1834;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2453;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1833;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1833 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1834 = param1;
      }
   }
}
