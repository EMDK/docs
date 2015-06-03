#com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ReaderParams.ReaderSpecific.LaserSpecific

LaserSpecific class provides access to the laser scanner specific parameters.



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

###aimType

This setting is used to change the behavior of the aimer.

**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

###sameSymbolTimeout

This setting is used to prevent the scanner driver from decoding the same symbol within this time interval (applicable only when 
 aim type is set to AIM_TYPE_CONTINUOUS_READ). Basically in the continuous mode the user can perform rapid scan and to prevent the 
 user from decoding the same barcode twice user can set this value to an appropriate interval (in milliseconds). A value of 0 means 
 no interval is required between two successive reads.

**Type:**

int

###differentSymbolTimeout

This setting is used to prevent the scanner from decoding another symbol within this time interval (applicable only when aim type 
 is set to AIM_TYPE_CONTINUOUS_READ). The user may want to prevent decoding too quickly and set an interval that the user can aim 
 before decoding the next barcode. A value of 0 means no interval is required between two successive reads.

**Type:**

int

###beamTimer

Sets the maximum amount of time that the reader remains on (0 - 60,000 ms in increments of 100 ms). 
 A value of 0 sets the reader to stay on indefinitely.
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	readerParams.beamTimer = 1500;


**Type:**

int

###linearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate decode.
 Use enum @link SvcScannerConfig.LinearSecurityLevel}.
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	readerParams.linearSecurityLevel = LinearSecurityLevel.ALL_THRICE;


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

###inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.
 Use enum @link SvcScannerConfig.Inverse1DMode}.
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	readerParams.cameraSpecific.inverse_1d_mode = Inverse1DMode.AUTO;


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

###powerMode



**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

