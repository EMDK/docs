#ScannerConfig.ReaderParams.ReaderSpecific.CameraSpecific

CameraSpecific class provides access to the camera scanner specific parameters.

##Public Fields
###beamTimer
Sets the maximum amount of time that the reader remains on (0 - 60,000 ms in increments of 100 ms). A value of 0 sets the reader to stay on indefinitely.

**Type:**

int

**Example Usage:**

	:::java
	readerParams.beamTimer = 1500;

###continuousRead
ContinuousRead class provides access to continuous scanning related parameters.

**Type:**

[ScannerConfig-ReaderParams-ReaderSpecific-ContinuousRead](ScannerConfig-ReaderParams-ReaderSpecific-ContinuousRead)

###linearSecurityLevel
Sets the number of times a bar code is read to confirm an accurate decode. Use enum ScannerConfig.LinearSecurityLevel.

**Type:**

[ScannerConfig.LinearSecurityLevel](ScannerConfig#ScannerConfig.LinearSecurityLevel)

**Example Usage:**

	:::java
	readerParams.linearSecurityLevel = LinearSecurityLevel.ALL_THRICE;

###illuminationMode
Turns camera illumination on and off. This option is only available when camera is selected in the Barcode input Scanner selection option. Use enum [ScannerConfig.IlluminationMode](ScannerConfig#ScannerConfig.IlluminationMode).

**Example Usage:**

    :::java
    readerParams.cameraSpecific.illuminationMode = IlluminationMode.ON;

**Type:**

com.symbol.emdk.barcode.[ScannerConfig.IlluminationMode](ScannerConfig#ScannerConfig.IlluminationMode)

###inverse1DMode
This parameter allows the user to select decoding on inverse 1D bar codes. Use enum [ScannerConfig.Inverse1DMode](ScannerConfig#ScannerConfig.Inverse1DMode).

**Example Usage:**

    :::java
    readerParams.cameraSpecific.inverse_1d_mode = Inverse1DMode.AUTO;

**Type:**

com.symbol.emdk.barcode.[ScannerConfig.Inverse1DMode](ScannerConfig#ScannerConfig.Inverse1DMode)

###viewfinderMode
Configures the Viewfinder modes supported for camera scanning. Use enum [ScannerConfig.ViewFinderMode](ScannerConfig#ScannerConfig.ViewFinderMode).

**Example Usage:**

    :::java
    readerParams.cameraSpecific.viewfinder_mode = ViewFinderMode.DISABLED;

**Type:**

com.symbol.emdk.barcode.[ScannerConfig.ViewFinderMode](ScannerConfig#ScannerConfig.ViewFinderMode)