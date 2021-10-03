package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit, IAvatarImageListener
   {
       
      
      private var var_26:HabboAvatarEditor;
      
      private var var_710:String;
      
      private var var_1087:String;
      
      private var _view:OutfitView;
      
      private var var_1155:Boolean;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         this.var_26 = param1;
         this._view = new OutfitView(param1.manager.windowManager,param1.manager.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_93:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.FEMALE:
            case "f":
            case "F":
               param3 = "null";
         }
         this.var_710 = param2;
         this.var_1087 = param3;
         this.update();
      }
      
      public function dispose() : void
      {
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         this.var_710 = null;
         this.var_1087 = null;
         this.var_1155 = true;
         this.var_26 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1155;
      }
      
      public function update() : void
      {
         var _loc2_:* = null;
         var _loc1_:IAvatarImage = this.var_26.manager.avatarRenderManager.createAvatarImage(this.figure,AvatarScaleType.const_117,this.var_1087,this);
         if(_loc1_)
         {
            _loc1_.setDirection(AvatarSetType.const_41,int(FigureData.const_795));
            _loc2_ = _loc1_.getImage(AvatarSetType.const_41,true);
            if(this._view)
            {
               this._view.udpate(_loc2_);
            }
            _loc1_.dispose();
         }
      }
      
      public function get figure() : String
      {
         return this.var_710;
      }
      
      public function get gender() : String
      {
         return this.var_1087;
      }
      
      public function get view() : OutfitView
      {
         return this._view;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.update();
      }
   }
}
