#ProfileConfig.DataCapture.Barcode.DecoderParams.UK_Postal

Holds UK Postal configuration settings.

 

**Example Usage:**
	
	:::java	
	UK_Postal ukPostal = profileConfig.dataCapture.barcode.decoderParams.uk_Postal;


##Public Fields

###report_check_digit

Transmit UK Postal data with or without the check digit (default - disabled).
 Use enum  ProfileConfig.ENABLED_STATE.

 

**Example Usage:**
	
	:::java	
	ukPostal.report_check_digit = ENABLED_STATE.DEFAULT;


**Type:**

com.symbol.emdk.ProfileConfig.ENABLED_STATE

