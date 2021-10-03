package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1030:BigInteger;
      
      private var var_2311:BigInteger;
      
      private var var_1794:BigInteger;
      
      private var var_2390:BigInteger;
      
      private var var_1472:BigInteger;
      
      private var var_1795:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1472 = param1;
         this.var_1795 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1472.toString() + ",generator: " + this.var_1795.toString() + ",secret: " + param1);
         this.var_1030 = new BigInteger();
         this.var_1030.fromRadix(param1,param2);
         this.var_2311 = this.var_1795.modPow(this.var_1030,this.var_1472);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1794 = new BigInteger();
         this.var_1794.fromRadix(param1,param2);
         this.var_2390 = this.var_1794.modPow(this.var_1030,this.var_1472);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2311.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2390.toRadix(param1);
      }
   }
}
