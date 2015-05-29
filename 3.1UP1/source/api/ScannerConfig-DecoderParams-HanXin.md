#ScannerConfig.DecoderParams.HanXin

The HanXin class provides access to parameters that are available for the HanXin decoder.

##Public Fields

###enabled
Returns whether or not the Decoder is currently enabled.

**Example Usage:**

    :::java
    boolean isEnabled = haxXin.enabled;


**Type:**

boolean


###hanXinInverse
Check the inverse of the HanXin decoder code. Use enum [ScannerConfig.HanXinInverse](ScannerConfig#ScannerConfig.HanXinInverse).

**Example Usage:**

    :::java
    hanXin.hanXinInverse = HanXinInverse.DISABLED;

**Type:**

com.symbol.emdk.barcode.[ScannerConfig.HanXinInverse](ScannerConfig#ScannerConfig.HanXinInverse)


