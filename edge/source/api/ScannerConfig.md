#ScannerConfig

The ScannerConfig class provides access to scanner configuration settings.



**Example Usage:**
	
	:::java	
	 	
	 	ScannerConfig scannerConfig = scanner.getConfig(scannerConfig);  
	  scannerConfig.scanParams.decodeHapticFeedback = true;
	  scannerConfig.decoderParams.codabar.length1 = 6;
	  scanner.setConfig(scannerConfig);


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

### resetToDefault

**public void resetToDefault(Scanner scanner)**

Resets the scanner parameters to defaults values for the specified scanner.
 The unsupported parameters left as it is.

**Parameters:**

scanner

**Returns:**

void

**Throws:**

**com.symbol.emdk.barcode.ScannerException**



##Public Fields

###skipOnUnsupported

This flag to tells whether to skip the unsupported parameter/values and continue or stop setting the configuration.
 Its set to UNSUPPORTED_PARAM by default which skips the unsupported params and continues.

**Type:**

com.symbol.emdk.barcode.ScannerConfig.SkipOnUnSupported

###scanParams

The ScanParams property provides access to scanning parameters that are
 available for all decoders. NOTE: When calling enable() after disable(),
 all the latest configuration parameter values (Config.DecoderParams,
 Config.ScannerParams, Config.ReaderParamss)
 will be set automatically.

**Type:**

com.symbol.emdk.barcode.ScannerConfig.ScanParams

###decoderParams

The DecoderParams class contains decoder parameters that are used by
 multiple decoder symbologies. The property provides access to such
 decoder parameters as Enabled and isSupported, among others. NOTE: When
 calling enable() after disable(), all the latest configuration parameter
 values (Config.DecoderParams, Config.ScannerParams, Config.ReaderParams) 
 will be set automatically.

**Type:**

com.symbol.emdk.barcode.ScannerConfig.DecoderParams

###readerParams

The ReaderParams class holds the parameters for a scanner. Reader
 parameters are global to all reads on all open handles on the same
 scanner. NOTE: When calling enable() after disable(), all the latest
 configuration parameter values (Config.DecoderParams,
 Config.ScannerParams, Config.ReaderParams)
 will be set automatically.

**Type:**

com.symbol.emdk.barcode.ScannerConfig.ReaderParams

##Public Enums

###ScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###ScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###ScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###ScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###ScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###ScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###ScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###ScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###ScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###ScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###ScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###ScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###ScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###ScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###ScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###ScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###ScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###ScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###ScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###ScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###ScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###ScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

