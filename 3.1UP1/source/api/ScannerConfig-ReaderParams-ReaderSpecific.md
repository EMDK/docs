#ScannerConfig.ReaderParams.ReaderSpecific

ReaderSpecific class provides access to the reader specific parameters.



##Constructors

**ScannerConfig.ReaderParams.ReaderSpecific**



Parameters:

Throws:

##Public Fields

###imagerSpecific

Provide access to set the imager specific settings if the scanner device is imager.
 <p><blockquote><pre>
 {@code
 	Example Usage:
 	if (scanner.getScannerInfo().getDeviceType() == DeviceType.IMAGER) {
   readerParams.readerSpecific.imagerSpecific.picklist = PickList.DISABLED;   		  
  }
 }</pre></blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.ReaderParams.ReaderSpecific.ImagerSpecific

###cameraSpecific

Provide access to set the camera specific settings if the scanner device is camera.
 <p><blockquote><pre>
 {@code
 	Example Usage:
 	if (scanner.getScannerInfo().getDeviceType() == DeviceType.IMAGER) {
   readerParams.readerSpecific.cameraSpecific.illuminationMode = IlluminationMode.ON;   		  
  }
 }</pre></blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.ReaderParams.ReaderSpecific.CameraSpecific

###laserSpecific

Provide access to set the laser specific settings if the scanner device is laser.

**Type:**

com.symbol.emdk.barcode.ScannerConfig.ReaderParams.ReaderSpecific.LaserSpecific

