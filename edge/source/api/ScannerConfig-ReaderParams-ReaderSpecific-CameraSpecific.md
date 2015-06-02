#ScannerConfig.ReaderParams.ReaderSpecific.CameraSpecific

CameraSpecific class provides access to the camera scanner specific parameters.



##Public Fields

###continuousRead

ContinuousRead class provides access to continuous scanning related parameters.

**Type:**

com.symbol.emdk.barcode.ScannerConfig.ReaderParams.ReaderSpecific.ContinuousRead

###beamTimer

Sets the maximum amount of time that the reader remains on (0 - 60,000 ms in increments of 100 ms). 
 A value of 0 sets the reader to stay on indefinitely.
 
 <p><blockquote><pre>
 {@code
 	Example Usage:
 	readerParams.beamTimer = 1500;
 }</pre></blockquote>

**Type:**

int

###linearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate decode.
 Use enum {@link ScannerConfig.LinearSecurityLevel}.
 
 <p><blockquote><pre>
 {@code
 	Example Usage:
 	readerParams.linearSecurityLevel = LinearSecurityLevel.ALL_THRICE;
 }</pre></blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.LinearSecurityLevel

###illuminationMode

Turns camera illumination on and off. 
 This option is only available when camera is selected in the Barcode input Scanner selection option.
 Use enum {@link ScannerConfig.IlluminationMode}.
 
 <p><blockquote><pre>
 {@code
 	Example Usage:
 	readerParams.cameraSpecific.illuminationMode = IlluminationMode.ON;
 }</pre></blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.IlluminationMode

###inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.
 Use enum {@link ScannerConfig.Inverse1DMode}.
 
 <p><blockquote><pre>
 {@code
 	Example Usage:
 	readerParams.cameraSpecific.inverse_1d_mode = Inverse1DMode.AUTO;
 }</pre></blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.Inverse1DMode

###viewfinderMode

Configures the Viewfinder modes supported for camera scanning.
 Use enum {@link ScannerConfig.ViewFinderMode}.
 
 <p><blockquote><pre>
 {@code
 	Example Usage:
 	readerParams.cameraSpecific.viewfinder_mode = ViewFinderMode.DISABLED;
 }</pre></blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.ViewFinderMode

