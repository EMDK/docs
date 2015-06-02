#ScannerConfig.DecoderParams.Code93

The Code93 class provides access to parameters that are available for
 the Code93 decoder.



##Public Fields

###length1

Use to set decode lengths. The valid range is 0 to 55.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	int length1 = 0;
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
 	code93.length2 = 55;
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
 	code93.redundancy = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

