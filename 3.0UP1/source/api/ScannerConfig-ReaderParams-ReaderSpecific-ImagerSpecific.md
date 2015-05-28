#ScannerConfig.ReaderParams.ReaderSpecific.ImagerSpecific

ImagerSpecific provides access to the imager specific parameters.

##Public Fields
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