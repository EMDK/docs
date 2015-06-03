#com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.DecoderParams.HanXin

The HanXin class provides access to parameters that are available for
 the HanXin decoder.



##Public Methods

### readFromParcel

**public void readFromParcel( in)**



**Parameters:**

in

**Returns:**

void

### writeToParcel

**public void writeToParcel( dest,  flags)**



**Parameters:**

dest

flags

**Returns:**

void

##Public Fields

###hanXinInverse

Select an option for select the state of the HanXinInverse. Use the
 enum @link SvcScannerConfig.HanXinInverse}.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	hanXin.hanXinInverse = HanXinInverse.DISABLED;


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

