#ScannerConfig.DecoderParams.I2of5

The I2of5 class provides access to parameters that are available for
 the I2of5 decoder.



##Public Fields

###length1

Use to set decode lengths. The valid range is 0 to 55.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	i2of5.length1 = 14;
 }
 </pre>
 
 </blockquote>

**Type:**

int

###length2

Use to set decode lengths. The valid range is 0 to 55.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	i2of5.length2 = 10;
 }
 </pre>
 
 </blockquote>

**Type:**

int

###redundancy

Sets the reader to read the bar code twice before accepting data.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	i2of5.redundancy = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###verifyCheckDigit

The check digit type to verify. Use enum
 {@link ScannerConfig.CheckDigitType}.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	i2of5.verifyCheckDigit = CHECK_DIGIT_TYPE.NO;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.CheckDigitType

###reportCheckDigit

Transmit Interleaved 2 of 5 data with or without the check digit.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	i2of5.reportCheckDigit = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###convertToEan13

Convert 14-character Interleaved 2 of 5 bar codes to EAN-13, and
 transmit as EAN-13. The Interleaved 2 of 5 bar code must be
 enabled and must have a leading zero and a valid EAN-13 check
 digit.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	i2of5.convertToEan13 = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###securityLevel

Specifies security level
 
 Use enum {@link ScannerConfig.SecurityLevel}.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	i2of5.securityLevel = SecurityLevel.LEVEL_1;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.SecurityLevel

