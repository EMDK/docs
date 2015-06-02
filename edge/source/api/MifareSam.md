#MifareSam

Provides access to MIFARE SAM properties and I/O operations on an SAM object.



**Example Usage:**
	
	:::java	
	   public class MainActivity  extends Activity implements EMDKListener
	                              {
	  
	             SecureNfcManager secureNfcManager;
	             EMDKManager emdkManager;
	  		    SamType samType;
	  			MifareSam mifareSam ;
	             @Override
	             protected void onCreate(Bundle savedInstanceState) {
	  
	                EMDKResults results = EMDKManager.getEMDKManager(getApplicationContext(), this);
	             }
	  
	             @Override
	             public void onOpened(EMDKManager emdkManager) {
	                             
	                   this.emdkManager = emdkManager;
	  
	                   this.secureNfcManager = (secureNfcManager)
	 					 this.emdkManager.getInstance(FEATURE_TYPE.SECURENFC);
	  
	  				 if(this.secureNfcManager != null){
	  
	 						samType = secureNfcManager.getAvailableSam();
	 
	   				if (samType.equals(SamType.MIFARE)) {
	    					mifareSam   = (MifareSam) secureNfcMgr.getSamInstance(samType);
	         				if(mifareSam != null){
	 							try {
	                        			SamMode samMode = mifareSam.connect();
	 								 } catch (MifareSamException e) {
	 									e.printStackTrace();
	       					   }
	  						}
	 						}
	             		}
	             }
	             
	            @Override
	             public void onDestroy() {
	 				 if(this.emdkManager != null)
	                  this.emdkManager.release();
	 				}
	  
	             @Override
	             public void onClosed() {
	               this.emdkManager.release();
	             }
	 
	  
	 	}
	 


##Public Methods

### connect

**public SamMode connect()**

Connects to the SAM to perform I/O operations. Application must call
 close() when I/O operations are complete.

**Returns:**

com.symbol.emdk.securenfc.MifareSam.SamMode

**Throws:**

com.symbol.emdk.securenfc.MifareSamException



### getSamInfo

**public SamInfo getSamInfo()**

Returns manufacturing related information of the MIFARESAM.

**Returns:**

com.symbol.emdk.securenfc.MifareSam.SamInfo

**Throws:**

com.symbol.emdk.securenfc.MifareSamException



### authenticateSam

**public void authenticateSam( authKey, SamKey samKey, MifareSam.AdditionalAuthData additionalAuthData)**

Performs the SAM authentication.
 If the SAM is in AV1 mode, performs mutual 3-pass authentication between host system and MIFARE SAM AV1 or MIFARE SAM AV2 set in AV1 compatibility mode.
 If the SAM is in AV2 mode, performs mutual authentication between host system and MIFARE SAM AV2 set in AV2 mode.

**Parameters:**

authKey - Authentication key to be used.

samKey - SAM key to be used for authentication

additionalAuthData - Additional authentication data and this is not supported now. It for future use only.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareSamException



### close

**public void close()**

Close with the SAM to perform I/O operations.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareSamException



##Public Fields

###TAG



**Type:**

java.lang.String

##Public Enums

###MifareSam.ProtectionMode

Protection mode.

**Values:**

* **PLAIN**

* **MAC**

* **FULL**

###MifareSam.SamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

