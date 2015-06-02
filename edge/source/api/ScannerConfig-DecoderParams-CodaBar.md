#ScannerConfig.DecoderParams.CodaBar

The CodaBar class provides access to parameters that are available
 for the CodaBar decoder.



##Public Fields

###length1

Use to set decode lengths. The supported range is 0 to 55.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	codabar.length1 = 6;
 }
 </pre>
 
 </blockquote>

**Type:**

int

###length2

Use to set decode lengths. The supported range is 0 to 55.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	codabar.length2 = 55;
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
 	codabar.redundancy = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###clsiEditing

Enable this parameter to strip the start and stop characters and
 insert a space after the first, fifth, and tenth characters of a
 14-character Codabar symbol. Enable this feature if the host
 system requires this data format.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	codabar.clsi_editing = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###notisEditing

Enable this parameter to strip the start and stop characters from
 a decoded Codabar symbol. Enable this feature if the host system
 requires this data format.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	codabar.notis_editing = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

