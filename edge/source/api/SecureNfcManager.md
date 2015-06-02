#SecureNfcManager

This class provides access to obtain the object to communicate with the
 Secure Access Module (SAM).



**Example Usage:**
	
	:::java	 
	 
	 public class MainActivity  extends Activity implements EMDKListener {
	  
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
	  							
	  					try{
	  
	 						 samType = secureNfcManager.getAvailableSam();
	 
	 						} catch (SecureNfcException e) {
	             						
	             				e.printStackTrace();
	             			}
	 							
	 						if (samType.equals(SamType.MIFARE)) {
	 
	 						mifareSam = (MifareSam) secureNfcMgr.getSamInstance(samType);
	  
	  						}
	  
	            			if(mifareSam != null){
	         
	 							try {
	                        		SamMode samMode = mifareSam.connect();
	                        
	                        		SamKey samKey = new SamKey();
	 								samKey.keyNum = 0x00;
	 								samKey.keyVer = 0x00;
	 								
	 			   					if (samMode.equals(SamMode.AV1)) {
	 
	 								mifareSam .authenticateSamAv1(authKey, samKey,
	 								false, false, null);
	 
	 								} else if (samMode.equals(SamMode.AV2)) {
	 
	 									mifareSam .authenticateSamAv2(authKey, samKey,
	 									ProtectionMode.PLAIN);
	 								}
	 					
	 							mifareSam.close();
	 
	 					} catch (MifareSamException e) {
	 						e.printStackTrace();
	       			}
	  			}
	  		}
	       }
	             
	       public void onNewIntent(Intent intent) {
	 		
	 				if (intent != null)
	 					tagDetection(intent);
	 			}
	 
	 		private void tagDetection(Intent intent) {
	 		
	 		if (NfcAdapter.ACTION_NDEF_DISCOVERED.equals(intent.getAction())
	 				|| NfcAdapter.ACTION_TAG_DISCOVERED.equals(intent.getAction())
	 				|| NfcAdapter.ACTION_TECH_DISCOVERED.equals(intent.getAction())) {
	 
	 			 lTag	 = intent.getParcelableExtra(NfcAdapter.EXTRA_TAG);
	 
	 			
	 			try {
	 
	 				TagTechType tagType = secureNfcMgr.getTagTechType(lTag);
	 
	 					if (tagType.equals(TagTechType.MIFARE_DESFIRE)) {
	 	
	 					mMifareDesfire = (MifareDesfire) secureNfcMgr.getTagTechInstance(tagType);
	 				}
	 
	 			} catch (SecureNfcException e) {
	 			
	 				e.printStackTrace();
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

### getAvailableSam

**public SamType getAvailableSam()**

Gets the available SAM on the device.

**Returns:**

com.symbol.emdk.securenfc.SecureNfcManager.SamType

**Throws:**

com.symbol.emdk.securenfc.SecureNfcException



### getSamInstance

**public SamBase getSamInstance(SecureNfcManager.SamType samType)**

This method returns the object to authenticate between SAM with the Host.

**Parameters:**

samType

**Returns:**

com.symbol.emdk.securenfc.SamBase

### getTagTechType

**public TagTechType getTagTechType( tag)**

This method returns the tag type discovered by the device.

**Parameters:**

tag - - Contactless tag already detected by device. We get this
            through the EXTRA_TAG information from the intent.

**Returns:**

com.symbol.emdk.securenfc.SecureNfcManager.TagTechType

**Throws:**

com.symbol.emdk.securenfc.SecureNfcException



### getTagTechInstance

**public TagTechBase getTagTechInstance(SecureNfcManager.TagTechType tagType)**

Returns the tag technology object based for the Tag type passed. For
 unsupported tag type, null will be returned. The application must type
 cast to the corresponding tag technology object.

**Parameters:**

tagType

**Returns:**

com.symbol.emdk.securenfc.TagTechBase

##Public Enums

###SecureNfcManager.SamType

Supported SAM types.

**Values:**

* **NONE**

* **MIFARE**

* **FELICA**

* **UNDEFINED**

###SecureNfcManager.TagTechType

NFC tag types.

**Values:**

* **MIFARE_DESFIRE**

* **MIFARE_PLUS_SL3**

* **MIFARE_PLUS_SL2**

* **FELICA**

* **UNDEFINED**

