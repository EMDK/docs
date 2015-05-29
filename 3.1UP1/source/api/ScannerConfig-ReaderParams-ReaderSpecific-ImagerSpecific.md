#ScannerConfig.ReaderParams.ReaderSpecific.ImagerSpecific

ImagerSpecific provides access to the imager specific parameters.

##Public Fields
###beamTimer
Sets the maximum amount of time that the reader remains on (0 - 60,000 ms in increments of 100 ms). A value of 0 sets the reader to stay on indefinitely.

**Type:**

int

**Example Usage:**

	:::java
	readerParams.beamTimer = 1500;

###connectionIdleTime
This is the time (in seconds) when an external scanner is idle in a particular state (ScannerStates.IDLE to ScannerStates.WAITING) after which the connection between the terminal and the scanner is severed to conserve power. This is currently applicable to Bluetooth scanners only.

**Type:**

int

**Example Usage:**

    :::java
    readerParams.connectionIdleTime = 600;

###continuousRead
ContinuousRead class provides access to continuous scanning related parameters.

**Type:**

[ScannerConfig-ReaderParams-ReaderSpecific-ContinuousRead](ScannerConfig-ReaderParams-ReaderSpecific-ContinuousRead)


###disconnectOnExit
This parameter indicates to the scan driver to disconnect any existing connection between an external Bluetooth scanner and the terminal. When a BT scanner establishes connection to the terminal it will not automatically disconnect when the scanner is disabled by calling Scanner.disable(). If this parameter is set the scanning driver will force the scanner to disconnect.
                 
> Note: If this parameter is set to true, it will not fire the DISCONNECTED state.

**Type:**

boolean

**Example Usage:**

    :::java
    readerParams.disconnectOnExit = true;

###linearSecurityLevel
Sets the number of times a bar code is read to confirm an accurate decode. Use enum ScannerConfig.LinearSecurityLevel.

**Type:**

[ScannerConfig.LinearSecurityLevel](ScannerConfig#ScannerConfig.LinearSecurityLevel)

**Example Usage:**
readerParams.linearSecurityLevel = LinearSecurityLevel.ALL_THRICE;


###illuminationBrightness
Illumination Brightness of the Imager. The valid range is 1 to 10.

**Example Usage:**

    :::java
    imagerSpecific.illuminationBrightness = 2;

**Type:**

int

###inverse1DMode
This parameter allows the user to select decoding on inverse 1D bar codes. Use enum [ScannerConfig.Inverse1DMode](ScannerConfig#ScannerConfig.Inverse1DMode).

**Example Usage:**

    :::java
    imagerSpecific.inverse1DMode = Inverse1DMode.AUTO;

**Type:**

com.symbol.emdk.barcode.[ScannerConfig.Inverse1DMode](ScannerConfig#ScannerConfig.Inverse1DMode)

###lcdMode
Enables or disables LCD mode. LCD mode enhances the ability of the imager to read bar codes from LCD displays such as cellphones (imager only). Use enum [ScannerConfig.LcdMode](ScannerConfig#ScannerConfig.LcdMode).

**Example Usage:**

    :::java
    imagerSpecific.lcdMode = LcdMode.DISABLED;

**Type:**

com.symbol.emdk.barcode.[ScannerConfig.LcdMode](ScannerConfig#ScannerConfig.LcdMode)

###pickList
Allows the imager to decode only the bar code that is directly under the cross-hair/reticle (+) part of the pattern. This feature is useful in applications where multiple bar codes may appear in the field of view during a decode session and only one of them is targeted for decode. Use enum [ScannerConfig.PickList](ScannerConfig#ScannerConfig.PickList).

**Example Usage:**

    :::java
    imagerSpecific.picklist = PickList.DISABLED;

**Type:**

com.symbol.emdk.barcode.[ScannerConfig.PickList](ScannerConfig#ScannerConfig.PickList)