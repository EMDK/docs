#ScannerConfig.DecoderParams.Upce0

The Upce0 class provides access to parameters that are available for the Upce0 decoder.

##Public Fields

###enabled
Returns whether or not the Decoder is currently enabled.

**Example Usage:**

    :::java
    boolean isEnabled = upce0.enabled;


**Type:**

boolean


###convertToUpca
Flag to enable conversion from UPCE0 to UPCA bar code. If this flag is set, the bar code is converted to UPCA and UPCA parameters are used.

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