#com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.DecoderParams.Upce0

The Upce0 class provides access to parameters that are available for
 the Upce0 decoder.



##Public Methods

### readFromParcel

**public void readFromParcel( in)**



**Parameters:**

in

**Returns:**

void

### writeToParcel

**public void writeToParcel( dest,  flags)**



**Parameters:**

dest

flags

**Returns:**

void

##Public Fields

###reportCheckDigit

Flag to enable reporting the bar code check digit.

**Type:**

boolean

###preamble

Controls the preamble applied to the bar code.

**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

###convertToUpca

Flag to enable conversion from UPCE0 to UPCA bar code. If this
 flag is set, the bar code is converted to UPCA and UPCA
 parameters are used.

**Type:**

boolean

