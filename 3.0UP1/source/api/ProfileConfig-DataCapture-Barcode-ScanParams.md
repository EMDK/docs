#ProfileConfig.DataCapture.Barcode.ScanParams
Holds scanning configuration settings.

**Example Usage:**

	:::java
	ScanParams scanParams = profileConfig.dataCapture.barcode.scanParams;

**Version:**

2.0

##Public Fields

###code_id_type
A Code ID character identifies the code type of a scanned bar code. This is useful when the reader is decoding more than one code type. Select a code ID character to insert between the prefix and the decoded symbol. Use enum [ProfileConfig.CODE_ID_TYPE](ProfileConfig.CODE_ID_TYPE).

**Example Usage:**

	:::java
	scanParams.code_id_type = CODE_ID_TYPE.DEFAULT;

**Type:**

com.symbol.emdk.[ProfileConfig.CODE_ID_TYPE](ProfileConfig.CODE_ID_TYPE)

###datacapture_led_id
Data Capture LED ID

**Example Usage:**

	:::java
	int led = scanParams.datacapture_led_id;

**Type:**

int

###decode_audio_feedback_uri
Select an audio tone to sound upon a good decode.

**Example Usage:**

	:::java
	String audioFeedback = scanParams.decode_audio_feedback_uri;

**Type:**

java.lang.String

###decode_haptic_feedback
Enable the device to vibrate upon a good decode (default - enabled). Use enum [ProfileConfig.ENABLED_STATE](ProfileConfig.ENABLED_STATE).

**Example Usage:**

	:::java
	scanParams.decode_haptic_feedback = ENABLED_STATE.DEFAULT;

**Type:**

com.symbol.emdk.[ProfileConfig.ENABLED_STATE](ProfileConfig.ENABLED_STATE)

###good_decode_led_timer
Time for which Good Decode LED Notification Runs in milliseconds.

**Example Usage:**

	:::java
	int ledTimer = scanParams.good_decode_led_timer;

**Type:**

int

