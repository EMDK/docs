#ScannerConfig.ReaderParams.ReaderSpecific.CameraSpecific

CameraSpecific class provides access to the camera scanner specific parameters.

##Public Fields
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