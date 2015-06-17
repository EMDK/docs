#PersonalShopper

This is the primary class to access the cradle and diagnostics API and this class is extends the EMDKBase class.  
This class creates the cradle instance field to communicate with the cradle.
 
 



**Example Usage:**
	
	:::java	
	 
	 	public class MainActivity extends Activity implements EMDKListener {
	
	    @Override
		  protected void onCreate(Bundle savedInstanceState) {
	   
	    //..
	    EMDKResults results = EMDKManager.getEMDKManager(getApplicationContext(), this);
	   
	   }	
	
	   @Override
		public void onOpened(EMDKManager emdkManager) {
			this.emdkManager = emdkManager;
		 }
	 
	  //...
	 PersonalShopper  personalshopper = (PersonalShopper)this.emdkManager.getInstance(FEATURE_TYPE.PERSONALSHOPPER);
			try {
	
				personalshopper.cradle.enable();
				
			    CradleInfo cradleInfo = personalshopper.cradle.getCradleInfo();
				
				String serialNumber = cradleInfo.getSerialNumber();
				
				personalshopper.cradle.config.setFastChargingState(false);
			
				personalshopper.cradle.flashLed(2, new CradleLedFlashInfo(100, 200, true));
					
			
				personalShopper.cradle.unlock(10, new CradleLedFlashInfo(100, 200, true));
				
				personalShopper.cradle.disable();
				
	          DiagnosticData diagnosticdata = personalshopper.diagnostic.getDiagnosticData(paramId, diagnosticconfig);
				
			   }   catch (CradleException ex) {   
				   
				Log.e(TAG,"Failure creating Personalshopper object");
			   }
	  
	  EMDKManager.release(FEATURE_TYPE.PERSONALSHOPPER);
	  
	  }


##Public Fields

###cradle

The field to access the cradle features.

**Type:**

com.symbol.emdk.personalshopper.Cradle

###diagnostic

The field to access the diagnostics feature.

**Type:**

com.symbol.emdk.personalshopper.Diagnostic

