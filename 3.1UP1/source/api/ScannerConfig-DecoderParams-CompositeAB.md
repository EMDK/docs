#ScannerConfig.DecoderParams.CompositeAB

The CompositeAB class provides access to parameters that are available for the CompositeAB decoder.

##Public Fields

###enabled
Returns whether or not the Decoder is currently enabled.

**Example Usage:**

    :::java
    boolean isEnabled = compositeAB.enabled;


**Type:**

boolean


###uccLinkMode
Gets and Sets UCC Link Mode using [ScannerConfig.UccLinkMode](ScannerConfig#ScannerConfig.UccLinkMode) enum; 

**Example Usage:**

    :::java
    compositeAB.uccLinkMode = UccLinkMode.ALWAYS_LINKED;

**Type:**

com.symbol.emdk.barcode.[ScannerConfig.UccLinkMode](ScannerConfig#ScannerConfig.UccLinkMode)