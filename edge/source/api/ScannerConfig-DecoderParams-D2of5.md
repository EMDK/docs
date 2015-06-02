#ScannerConfig.DecoderParams.D2of5

The D2OF5 class provides access to parameters that are available for
 the D2OF5 decoder.



##Public Fields

###length1

Used to set decode lengths. The valid range is 0 to 55.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	d2of5.length1 = 0;
 }
 </pre>
 
 </blockquote>

**Type:**

int

###length2

Used to set decode lengths. The valid range is 0 to 55.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	d2of5.length2 = 14;
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
 	d2of5.redundancy = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

