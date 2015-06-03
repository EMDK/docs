#com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ReaderParams.ReaderSpecific.ImagerSpecific

ImagerSpecific provides access to the imager specific parameters.



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

###pickList

Allows the imager to decode only the bar code that is directly under the cross-hair/reticle (+) part of the pattern. 
 This feature is useful in applications where multiple bar codes may appear in the field of view during a decode session and 
 only one of them is targeted for decode.
 Use enum @link SvcScannerConfig.PickList}.
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	imagerSpecific.picklist = PickList.DISABLED;


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

###lcdMode

Enables or disables LCD mode. 
 LCD mode enhances the ability of the imager to read bar codes from LCD displays such as cellphones (imager only).
 Use enum @link SvcScannerConfig.LcdMode}.
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	imagerSpecific.lcdMode = LcdMode.DISABLED;


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

###inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.
 Use enum @link SvcScannerConfig.Inverse1DMode}.
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	imagerSpecific.inverse1DMode = Inverse1DMode.AUTO;


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

###illuminationBrightness

Illumination Brightness of the Imager. The valid range is 1 to 10.
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	imagerSpecific.illuminationBrightness = 2;


**Type:**

int

###disconnectOnExit



**Type:**

boolean

###connectionIdleTime



**Type:**

int

