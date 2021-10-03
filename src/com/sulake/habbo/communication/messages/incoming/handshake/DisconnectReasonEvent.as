package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2227:int = 0;
      
      public static const const_2002:int = 1;
      
      public static const const_1991:int = 2;
      
      public static const const_2250:int = 3;
      
      public static const const_2219:int = 4;
      
      public static const const_2239:int = 5;
      
      public static const const_1775:int = 10;
      
      public static const const_2327:int = 11;
      
      public static const const_2124:int = 12;
      
      public static const const_2203:int = 13;
      
      public static const const_2134:int = 16;
      
      public static const const_2182:int = 17;
      
      public static const const_2332:int = 18;
      
      public static const const_2176:int = 19;
      
      public static const const_2266:int = 20;
      
      public static const const_2164:int = 22;
      
      public static const const_2199:int = 23;
      
      public static const const_2310:int = 24;
      
      public static const const_2315:int = 25;
      
      public static const const_2192:int = 26;
      
      public static const const_2324:int = 27;
      
      public static const const_2163:int = 28;
      
      public static const const_2229:int = 29;
      
      public static const const_2165:int = 100;
      
      public static const const_2141:int = 101;
      
      public static const const_2142:int = 102;
      
      public static const const_2133:int = 103;
      
      public static const const_2238:int = 104;
      
      public static const const_2155:int = 105;
      
      public static const const_2157:int = 106;
      
      public static const const_2221:int = 107;
      
      public static const const_2226:int = 108;
      
      public static const const_2252:int = 109;
      
      public static const const_2166:int = 110;
      
      public static const const_2295:int = 111;
      
      public static const const_2140:int = 112;
      
      public static const const_2290:int = 113;
      
      public static const const_2300:int = 114;
      
      public static const const_2303:int = 115;
      
      public static const const_2311:int = 116;
      
      public static const const_2185:int = 117;
      
      public static const const_2264:int = 118;
      
      public static const const_2288:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_2002:
            case const_1775:
               return "banned";
            case const_1991:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
