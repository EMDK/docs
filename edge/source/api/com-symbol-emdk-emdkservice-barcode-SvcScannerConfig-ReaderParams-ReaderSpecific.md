#com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ReaderParams.ReaderSpecific

ReaderSpecific class provides access to the reader specific parameters.



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

###imagerSpecific

Provide access to set the imager specific settings if the scanner device is imager.
 
 



**Example Usage:**
	
	:::java	
	 	
	 	if (scanner.getScannerInfo().getDeviceType() == DeviceType.IMAGER) {
	   readerParams.readerSpecific.imagerSpecific.picklist = PickList.DISABLED;   		  


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ReaderParams.ReaderSpecific.ImagerSpecific

###cameraSpecific

Provide access to set the imager specific settings if the scanner device is camera.
 
 



**Example Usage:**
	
	:::java	
	 	
	 	if (scanner.getScannerInfo().getDeviceType() == DeviceType.IMAGER) {
	   readerParams.readerSpecific.cameraSpecific.illuminationMode = IlluminationMode.ON;   		  


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ReaderParams.ReaderSpecific.CameraSpecific

###laserSpecific



**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ReaderParams.ReaderSpecific.LaserSpecific

