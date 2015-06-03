#com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.DecoderParams.UpcEanParams

The UPCEAN class provides access to parameters that are available for
 the UPC/EAN decoder.



**Example Usage:**
	
	:::java	
	 	
	 	config.upcEanParams.booklandCode = true;


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

###booklandCode

Flag to enable Bookland code decoding.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.booklandCode = true;


**Type:**

boolean

###booklandFormat

Specifies the bookland format to use. Use enum
 @link SvcScannerConfig.BooklandFormat}.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.booklandFormat = BooklandFormat.ISBN_10;


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

###convertDataBarToUpcEan

If this is set it converts DataBar bar codes to UPC/EAN format.
 For this setting to work UPC/EAN symbologies must be enabled. A
 check in the checkbox indicates that the option is enabled.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.convertDataBarToUPCEAN = true;


**Type:**

boolean

###couponCode

Enables Coupon code decoding. Note that in order to successfully
 decode Coupon codes, all of the correct decoders must be enabled.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.couponCode = true;


**Type:**

boolean

###linearDecode

Flag to enable linear decode.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.linearDecode = true;


**Type:**

boolean

###randomWeightCheckDigit

Flag to enable random weight check digit verification.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.randomWeightCheckDigit = true;


**Type:**

boolean

###securityLevel

The scanner of fers four levels of decode security for UPC/EAN
 bar codes. Select higher security levels for lower quality bar
 codes. There is an inverse relationship between security and
 decode speed, so be sure to choose only that level of security
 necessary for the application. Use enum
 @link SvcScannerConfig.SecurityLevel}.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.securityLevel = SecurityLevel.LEVEL_0;


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

###supplemental2

Flag to enable length 2 supplementals.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.supplemental2 = false;


**Type:**

boolean

###supplemental5

Flag to enable length 5 supplementals.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.supplemental5 = false;


**Type:**

boolean

###supplementalMode

The supplemental mode. Use enum @link SvcScannerConfig.SupplementalMode}.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.supplementalMode = SupplementalMode.S_378_379;


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

###supplementalRetries

Retry count for auto-discriminating for supplementals. Possible
 values are 2 to 20 inclusive. Note that this flag is only
 considered if Supplemental Mode - UPC EAN is set to one of the
 following values: Supplementals Auto, Supplementals Smart,
 Supplementals 378-379 , Supplementals 978-979, Supplementals 977
 or Supplementals 414-419-434-439 (2 to 20, default 10).
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.supplementalRetries = 10;


**Type:**

int

###couponReport

Used to differentiate between old coupon (UPC/EAN and Code128)
 and new GS1 DataBar Coupons. NOTE: There is an Interim GS1
 DataBar Coupon (UPC A and the GS1 DataBar), which is meant for
 smooth transition of adaption from old coupon format to new
 coupon format. If an interim coupon is presented to the scanner,
 it will read old or new portion of it, depending on the report
 mode setting.
 
 Use enum @link SvcScannerConfig.CouponReport}.
 
 
 
 
 
 



**Example Usage:**
	
	:::java	
	 	
	 	upcEan.couponReport = CouponReport.OLD;


**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

###eanZeroExtend

Ean zero extend

**Type:**

boolean

