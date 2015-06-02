#ScannerConfig.DecoderParams.Code39

The Code39 class provides access to parameters that are available for
 the Code39 decoder.



##Public Fields

###length1

Use to set decode lengths. The valid range is 0 to 55.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	code39.length1 = 0;
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
 	code39.length2 = 55;
 }
 </pre>
 
 </blockquote>

**Type:**

int

###verifyCheckDigit

Enable this feature to check the integrity of all Code 39 symbols
 to verify that the data complies with a specified check digit
 algorithm. The digital scanner decodes only those Code 39 symbols
 that include a modulo 43 check digit. Enable this feature only if
 the Code 39 symbols contain a modulo 43 check digit.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	code39.verifyCheckDigit = false;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###reportCheckDigit

Transmit Code 39 data with or without the check digit.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	code39.reportCheckDigit = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###fullAscii

Code 39 Full ASCII is a variant of Code 39 that pairs characters
 to encode the full ASCII character set.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	code39.fullAscii = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###redundancy

Sets the reader to read the bar code twice before accepting data.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	code39.redundancy = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###convertToCode32

Code 32 is a variant of Code 39 used by the Italian
 pharmaceutical industry.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	code39.convertToCode32 = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###reportCode32Prefix

Scan the appropriate bar code to enable or disable adding the
 prefix character "A" to all Code 32 bar codes.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	code39.reportCode32Prefix = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###securityLevel

Options: Security level 0 , Security Level 1 , Security Level 2
 and Security Level 3. Use enum {@link ScannerConfig.SecurityLevel}.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	code39.securityLevel = SecurityLevel.LEVEL_1;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.SecurityLevel

