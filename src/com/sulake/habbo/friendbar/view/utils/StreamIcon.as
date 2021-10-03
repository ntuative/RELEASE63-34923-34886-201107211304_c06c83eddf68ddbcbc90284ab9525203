package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   
   public class StreamIcon extends Icon
   {
      
      private static const const_1130:int = 500;
       
      
      private var _assets:IAssetLibrary;
      
      private var var_1961:IWindowContainer;
      
      public function StreamIcon(param1:IAssetLibrary, param2:IBitmapWrapperWindow, param3:IWindowContainer)
      {
         super();
         this._assets = param1;
         alignment = const_464 | const_463;
         image = param1.getAssetByName("icon_stream_png") as BitmapDataAsset;
         canvas = param2;
         this.var_1961 = param3;
         this.var_1961.visible = false;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            this._assets = null;
            super.dispose();
         }
      }
      
      override public function hover(param1:Boolean) : void
      {
         if(param1)
         {
            image = this._assets.getAssetByName("icon_stream_hover_png") as BitmapDataAsset;
         }
         else
         {
            image = this._assets.getAssetByName("icon_stream_png") as BitmapDataAsset;
         }
         super.hover(param1);
      }
      
      override public function notify(param1:Boolean) : void
      {
         super.notify(param1);
         this.var_1961.visible = param1;
      }
   }
}
