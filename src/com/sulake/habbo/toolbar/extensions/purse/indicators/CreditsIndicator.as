package com.sulake.habbo.toolbar.extensions.purse.indicators
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.purse.PurseEvent;
   import com.sulake.habbo.toolbar.extensions.purse.CurrencyIndicatorBase;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class CreditsIndicator extends CurrencyIndicatorBase
   {
      
      private static const const_1422:uint = 4291993382;
      
      private static const const_1420:uint = 4290807040;
      
      private static const const_486:Array = ["icon_credit_0_png","icon_credit_1_png","icon_credit_2_png","icon_credit_3_png","icon_credit_4_png","icon_credit_5_png","icon_credit_6_png"];
       
      
      private var var_1976:int = -1;
      
      private var _catalog:IHabboCatalog;
      
      public function CreditsIndicator(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboCatalog, param4:ICoreLocalizationManager)
      {
         super(param1,param2);
         this._catalog = param3;
         this.bgColorLight = const_1422;
         this.bgColorDark = const_1420;
         this.textElementName = "credits";
         this.textElementShadowName = "credits_shadow";
         this.iconAnimationSequence = const_486;
         this.iconAnimationDelay = 50;
         this.amountZeroText = param4.getKey("purse.credits.zero.amount.text","Buy");
         createWindow("purse_indicator_credits_xml",const_486[0]);
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(PurseEvent.const_129,this.onCreditBalance);
      }
      
      override protected function onContainerClick(param1:WindowMouseEvent) : void
      {
         this._catalog.openCreditsHabblet();
      }
      
      private function onCreditBalance(param1:PurseEvent) : void
      {
         var _loc2_:String = param1.balance.toString();
         if(param1.balance == 0)
         {
            _loc2_ = this.amountZeroText;
            setTextUnderline(true);
         }
         else
         {
            setTextUnderline(false);
         }
         this.setText(_loc2_);
         if(this.var_1976 != -1)
         {
            if(this.var_1976 > param1.balance)
            {
               animateIcon(CurrencyIndicatorBase.ANIM_DIRECTION_FORWARD);
            }
            else
            {
               animateIcon(CurrencyIndicatorBase.ANIM_DIRECTION_BACKWARD);
            }
         }
         this.var_1976 = param1.balance;
      }
   }
}
