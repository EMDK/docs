#ScannerConfig.DecoderParams.Code11

The Code11 class provides access to parameters that are available for the Code11 decoder.


##Public Fields

###enabled
Returns whether or not the Decoder is currently enabled.

**Example Usage:**

    :::java
    boolean isEnabled = code11.enabled;


**Type:**

boolean

###length1
Use to set decode length. The supported range is 0 to 55. 

**Example Usage:**

    :::java
    code11.length1 = 4;

**Type:**

int

###length2
Use to set decode length. The supported range is 0 to 55. 

**Example Usage:**

    :::java
    code11.length2 = 55;

**Type:**

int

###redundancy
Sets the reader to read the bar code twice before accepting data.

**Example Usage:**

    :::java
    code11.redundancy = true;

**Type:**

boolean

###reportCheckDigit
Transmit Code 11 data with or without the check digit.

**Example Usage:**

    :::java
    code11.reportCheckDigit = false; 

**Type:**

boolean

###verifyCheckDigit
Check the integrity of all Code 11 symbols to verify that the data complies with the specified check digit algorithm. This selects the check digit mechanism for the decoded Code 11 bar code. Use enum [ScannerConfig.VerifyCheckDigit](ScannerConfig#ScannerConfig.VerifyCheckDigit).

**Example Usage:**

    :::java
    code11.verifyCheckDigit = VerifyCheckDigit.NO;

**Type:**

com.symbol.emdk.barcode.[ScannerConfig.VerifyCheckDigit](ScannerConfig#ScannerConfig.VerifyCheckDigit)
