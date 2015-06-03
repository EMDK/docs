#com.symbol.emdk.emdkservice.barcode.SvcScannerConfig

The ScannerConfig class provides access to scanner configuration settings.



**Example Usage:**
	
	:::java	
	 	
	 	ScannerConfig scannerConfig = scanner.getConfig(scannerConfig);  
	  scannerConfig.scanParams.decodeHapticFeedback = true;
	  scannerConfig.decoderParams.codabar.length1 = 6;
	  scanner.setConfig(scannerConfig);


##Constructors

**SvcScannerConfig**

Creates a new instance of ScannerConfig.

##Public Methods

### isParamSupported

**public boolean isParamSupported( param)**

This method helps to check scanner config parameters supported 
 Returns true if specified parameter is supported.
 The field name should be specify complete access path till the field in the string format.
 The scanner config object name can be any name, but following field names should exactly match the fields defined by scanner config class.
 

**Example Usage:**
	
	:::java	
	ScannerConfig config1 = scanner.getConfig(scannerConfig);
	if ( config1.isParamSupported("config1.scanParams.decodeHapticFeedback") ) {
	config1.scanParams.decodeHapticFeedback = true;
	}
	if ( config1.isParamSupported("config1.decoderParams.codabar.enabled") ) {
	config1.decoderParams.codabar.enabled = true;
	}
	scanner.setConfig(config1);
	
	
	


**Parameters:**

param

**Returns:**

boolean

### describeContents

**public int describeContents()**



**Returns:**

int

### writeToParcel

**public void writeToParcel( dest,  flags)**



**Parameters:**

dest

flags

**Returns:**

void

##Public Fields

###supportedParamList



**Type:**

java.util.HashMap

###skipOnUnsupported

This flag to tells whether to skip the unsupported parameter/values and continue or stop setting the configuration.
 Its set to UNSUPPORTED_PARAM by default which skips the unsupported params and continues.

**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

###interfaceParams

This method can be used to make a copy of the scanner config object.

**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.InterfaceParams

###scanParams

The ScanParams property provides access to scanning parameters that are
 available for all decoders. NOTE: When calling enable() after disable(),
 all the latest configuration parameter values (Config.DecoderParams,
 Config.ScannerParams, Config.ReaderParamss)
 will be set automatically.

**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ScanParams

###decoderParams

The DecoderParams class contains decoder parameters that are used by
 multiple decoder symbologies. The property provides access to such
 decoder parameters as Enabled and isSupported, among others. NOTE: When
 calling enable() after disable(), all the latest configuration parameter
 values (Config.DecoderParams, Config.ScannerParams, Config.ReaderParams) 
 will be set automatically.

**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.DecoderParams

###readerParams

The ReaderParams class holds the parameters for a scanner. Reader
 parameters are global to all reads on all open handles on the same
 scanner. NOTE: When calling enable() after disable(), all the latest
 configuration parameter values (Config.DecoderParams,
 Config.ScannerParams, Config.ReaderParams)
 will be set automatically.

**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ReaderParams

###CREATOR



**Type:**

<any>

