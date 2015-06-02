#ScannerConfig.DecoderParams.UpcEanParams

The UPCEAN class provides access to parameters that are available for the UPC/EAN decoder.



**Example Usage:**
	
	:::java	
	 	
	 	config.upcEanParams.booklandCode = true;


##Public Fields

###booklandCode

Flag to enable Bookland code decoding.
 Any EAN which begins with the 978 prefix is called a Bookland EAN barcode 
 and is used on books and book related products internationally.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.booklandCode = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###booklandFormat

Specifies the bookland format to use. Use enum
 {@link ScannerConfig.BooklandFormat}.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.booklandFormat = BooklandFormat.ISBN_10;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.BooklandFormat

###convertDataBarToUpcEan

If this is set it converts DataBar bar codes to UPC/EAN format.
 For this setting to work UPC/EAN symbologies must be enabled. A
 check in the checkbox indicates that the option is enabled.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.convertDataBarToUPCEAN = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###couponCode

Enables Coupon code decoding. Note that in order to successfully
 decode Coupon codes, all of the correct decoders must be enabled.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.couponCode = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###linearDecode



**Type:**

boolean

###randomWeightCheckDigit

Flag to enable random weight check digit verification.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.randomWeightCheckDigit = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###securityLevel

The scanner of fers four levels of decode security for UPC/EAN
 bar codes. Select higher security levels for lower quality bar
 codes. There is an inverse relationship between security and
 decode speed, so be sure to choose only that level of security
 necessary for the application. Use enum
 {@link ScannerConfig.SecurityLevel}.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.securityLevel = SecurityLevel.LEVEL_0;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.SecurityLevel

###supplemental2

Flag to enable length 2 supplementals.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.supplemental2 = false;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###supplemental5

Flag to enable length 5 supplementals.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.supplemental5 = false;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###supplementalMode

The supplemental mode. Use enum {@link ScannerConfig.SupplementalMode}.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.supplementalMode = SupplementalMode.S_378_379;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.SupplementalMode

###supplementalRetries

Retry count for auto-discriminating for supplementals. Possible
 values are 2 to 20 inclusive. Note that this flag is only
 considered if Supplemental Mode - UPC EAN is set to one of the
 following values: Supplementals Auto, Supplementals Smart,
 Supplementals 378-379 , Supplementals 978-979, Supplementals 977
 or Supplementals 414-419-434-439 (2 to 20, default 10).
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.supplementalRetries = 10;
 }
 </pre>
 
 </blockquote>

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
 
 Use enum {@link ScannerConfig.CouponReport}.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	upcEan.couponReport = CouponReport.OLD;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.CouponReport

###eanZeroExtend

Enable this parameter to add five leading zeros to decoded 
  EAN-8 symbols to make them compatible in format to EAN-13 symbols.
  Disable this to transmit EAN-8 symbols as is

**Type:**

boolean

