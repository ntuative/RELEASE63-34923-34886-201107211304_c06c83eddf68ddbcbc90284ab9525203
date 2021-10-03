package com.sulake.habbo.avatar.actions
{
   public class ActiveActionData implements IActiveActionData
   {
       
      
      private var var_2062:String = "";
      
      private var _actionParameter:String = "";
      
      private var var_1325:IActionDefinition;
      
      private var var_2840:int = 0;
      
      private var var_2839:String;
      
      public function ActiveActionData(param1:String, param2:String = "", param3:int = 0)
      {
         super();
         this.var_2062 = param1;
         this._actionParameter = param2;
         this.var_2840 = param3;
      }
      
      public function get actionType() : String
      {
         return this.var_2062;
      }
      
      public function get actionParameter() : String
      {
         return this._actionParameter;
      }
      
      public function get definition() : IActionDefinition
      {
         return this.var_1325;
      }
      
      public function get id() : String
      {
         if(this.var_1325 == null)
         {
            return "";
         }
         return this.var_1325.id + "_" + this._actionParameter;
      }
      
      public function set actionParameter(param1:String) : void
      {
         this._actionParameter = param1;
      }
      
      public function set definition(param1:IActionDefinition) : void
      {
         this.var_1325 = param1;
      }
      
      public function dispose() : void
      {
         this.var_2062 = null;
         this._actionParameter = null;
         this.var_1325 = null;
      }
      
      public function get startFrame() : int
      {
         return this.var_2840;
      }
      
      public function get overridingAction() : String
      {
         return this.var_2839;
      }
      
      public function set overridingAction(param1:String) : void
      {
         this.var_2839 = param1;
      }
   }
}
