#ProfileConfig.DataCapture.Barcode
Holds Barcode configuration settings

**Example Usage:**

	:::java
	Barcode barcode = profileConfig.dataCapture.barcode;


**Version:**

2.0

##Public Fields

###decoderParams
Gets and Sets DecoderParams configuration object [ProfileConfig.DataCapture.Barcode.DecoderParams](ProfileConfig.DataCapture.Barcode.DecoderParams).

**Example Usage:**

	:::java
	barcode.decoderParams.upca.preamble = PREAMBLE.SYS_CHAR;


**Type:**

com.symbol.emdk.[ProfileConfig.DataCapture.Barcode.DecoderParams](ProfileConfig.DataCapture.Barcode.DecoderParams)

###decoders
Gets and Sets Decoders configuration object [ProfileConfig.DataCapture.Barcode.Decoders](ProfileConfig.DataCapture.Barcode.Decoders).

**Example Usage:**

	:::java
	barcode.decoders.codabar = ENABLED_STATE.DEFAULT;


**Type:**

com.symbol.emdk.[ProfileConfig.DataCapture.Barcode.Decoders](ProfileConfig.DataCapture.Barcode.Decoders)

###readerParams
Gets and Sets ReaderParams configuration object [ProfileConfig.DataCapture.Barcode.ReaderParams](ProfileConfig.DataCapture.Barcode.ReaderParams).

**Example Usage:**

	:::java
	barcode.readerParams.illumination_mode = ILLUMINATION_MODE.DEFAULT;


**Type:**

com.symbol.emdk.[ProfileConfig.DataCapture.Barcode.ReaderParams](ProfileConfig.DataCapture.Barcode.ReaderParams)

###scanParams
Gets and Sets ScanParams configuration object [ProfileConfig.DataCapture.Barcode.ScanParams](ProfileConfig.DataCapture.Barcode.ScanParams).

**Example Usage:**

	:::java
	barcode.ScanParams.decode_haptic_feedback = ENABLED_STATE.DEFAULT;


**Type:**

com.symbol.emdk.[ProfileConfig.DataCapture.Barcode.ScanParams](ProfileConfig.DataCapture.Barcode.ScanParams)

###scannerSelection
Gets and Sets scanner selection [ProfileConfig.DEVICETYPES](ProfileConfig.DEVICETYPES).

**Example Usage:**

	:::java
	barcode.scannerSelection = DEVICETYPES.DEFAULT;


**Type:**

com.symbol.emdk.[ProfileConfig.DEVICETYPES](ProfileConfig.DEVICETYPES)

###scanner_input_enabled
Gets and Sets scanner enabled state [ProfileConfig.ENABLED_STATE](ProfileConfig.ENABLED_STATE).

**Example Usage:**

	:::java
	barcode.scanner_input_enabled = ENABLED_STATE.DEFAULT;


**Type:**

com.symbol.emdk.[ProfileConfig.ENABLED_STATE](ProfileConfig.ENABLED_STATE)

###upcEanParams
Gets and Sets UpcEanParams configuration object [ProfileConfig.DataCapture.Barcode.UpcEanParams](ProfileConfig.DataCapture.Barcode.UpcEanParams).

**Example Usage:**

	:::java
	barcode.upcEanParams.linear_decode = ENABLED_STATE.DEFAULT;


**Type:**

com.symbol.emdk.[ProfileConfig.DataCapture.Barcode.UpcEanParams](ProfileConfig.DataCapture.Barcode.UpcEanParams)

