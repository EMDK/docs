#ScannerConfig.DecoderParams.Upca

The Upca class provides access to parameters that are available for the Upca decoder.

##Public Fields

###enabled
Returns whether or not the Decoder is currently enabled.

**Example Usage:**

    :::java
    boolean isEnabled = upca.enabled;


**Type:**

boolean


###preamble
Controls the preamble applied to the bar code.

**Type:**

com.symbol.emdk.barcode.[ScannerConfig.Preamble](ScannerConfig#ScannerConfig.Preamble)

###reportCheckDigit
Flag to enable reporting the bar code check digit.

**Type:**

boolean
