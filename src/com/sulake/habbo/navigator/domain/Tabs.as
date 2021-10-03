package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_369:int = 1;
      
      public static const const_222:int = 2;
      
      public static const const_276:int = 3;
      
      public static const const_378:int = 4;
      
      public static const const_257:int = 5;
      
      public static const const_451:int = 1;
      
      public static const const_976:int = 2;
      
      public static const const_818:int = 3;
      
      public static const const_987:int = 4;
      
      public static const const_292:int = 5;
      
      public static const const_940:int = 6;
      
      public static const const_990:int = 7;
      
      public static const const_403:int = 8;
      
      public static const const_579:int = 9;
      
      public static const const_2267:int = 10;
      
      public static const const_1022:int = 11;
      
      public static const const_516:int = 12;
       
      
      private var var_503:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_503 = new Array();
         this.var_503.push(new Tab(this._navigator,const_369,const_516,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_545));
         this.var_503.push(new Tab(this._navigator,const_222,const_451,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_545));
         this.var_503.push(new Tab(this._navigator,const_378,const_1022,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1346));
         this.var_503.push(new Tab(this._navigator,const_276,const_292,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_545));
         this.var_503.push(new Tab(this._navigator,const_257,const_403,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1389));
         this.setSelectedTab(const_369);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_378;
      }
      
      public function get tabs() : Array
      {
         return this.var_503;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_503)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_503)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_503)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
