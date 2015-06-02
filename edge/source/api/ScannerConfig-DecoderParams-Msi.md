#ScannerConfig.DecoderParams.Msi

The Msi class provides access to parameters that are available for
 the Msi decoder.



##Public Fields

###length1

Use to set decode lengths. The range is 0 to 55.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	msi.length1 = 4;
 }
 </pre>
 
 </blockquote>

**Type:**

int

###length2

Use to set decode lengths. The range is 0 to 55.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	msi.length2 = 55;
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
 	msi.redundancy = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###checkDigits

With MSI symbols, one check digit is mandatory and always
 verified by the reader. The second check digit is optional. Use
 enum {@link ScannerConfig.CheckDigit}.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	msi.checkDigits = CheckDigit.ONE;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.CheckDigit

###checkDigitScheme

Two algorithms are possible for the verification of the second
 MSI check digit. Select the algorithm used to encode the check
 digit. Use enum {@link ScannerConfig.CheckDigitScheme}.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	msi.check_digit_scheme = CheckDigitScheme.MOD_10_10;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.CheckDigitScheme

###reportCheckDigit

Transmit MSI data with or without the check digit.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	msi.reportCheckDigit = false;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

