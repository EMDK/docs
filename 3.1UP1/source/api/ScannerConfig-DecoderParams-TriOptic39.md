#ScannerConfig.DecoderParams.TriOptic39

The TriOptic39 class provides access to parameters that are available for the TriOptic39 decoder.

##Public Fields

###enabled
Returns whether or not the Decoder is currently enabled.

**Example Usage:**

    :::java
    boolean isEnabled = triOptic39.enabled;


**Type:**

boolean


###redundancy
Sets the reader to read the bar code twice before accepting data.

**Example Usage:**

    :::java
    triOptic39.redundancy = true;

**Type:**

boolean