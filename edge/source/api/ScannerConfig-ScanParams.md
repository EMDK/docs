#ScannerConfig.ScanParams

The ScanParams class provides access to scanning
 parameters that are available for all decoders.



##Public Fields

###codeIdType

A Code ID character identifies the code type of a scanned bar code.
 This is useful when the reader is decoding more than one code type.
 Select a code ID character to insert between the prefix and the
 decoded symbol. Use enum {@link ScannerConfig.CodeIdType}.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	scanParams.codeIdType = CODE_ID_TYPE.NONE;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.CodeIdType

###decodeAudioFeedbackUri

Select an audio tone to sound upon a good decode.
 The valid audio files from the RingTone manager can be used for audio feedback.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	scanParams.decodeAudioFeedbackURI = "system/media/audio/notifications/decode-short.wav"; 
	scanParams.decodeAudioFeedbackUri = "sdcard/sample-audio.wav";
	scanParams.decodeAudioFeedbackUri = "sdcard/sample-audio.ogg";
	scanParams.decodeAudioFeedbackUri = "/sdcard/sample-audio.wav";
 }
 </pre>
	Note: To achieve no feedback (silent) upon a good decode, specify an empty string as below:
		scanParams.decodeAudioFeedbackURI = "";
 </blockquote>

**Type:**

java.lang.String

###decodeHapticFeedback

Enable the device to vibrate upon a good decode.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	scanParams.decodeHapticFeedback = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

###decodeLEDTime

Decode LED ON duration upon successful decode in milliseconds.
 This value can be from 0ms to 1000ms with a step of 25ms.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	scanParams.decodeLEDTime = 75;
 }
 </pre>
 
 </blockquote>

**Type:**

int

###audioStreamType

The audio stream type refers to type of streaming on which the scan beep should be played. 
 The decodeAudioFeedbackUri specified must be available for the audio streaming type specified.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	scanParams.audioStreamType = AudioStreamType.RINGER;
 }
 </pre>
 
 </blockquote>

**Type:**

com.symbol.emdk.barcode.ScannerConfig.AudioStreamType

###decodeLEDFeedback

Decoding LED Notification.
 
 <p>
 <blockquote>
 
 <pre>
 {@code
 	Example Usage:
 	scanParams.decodeLEDFeedback = true;
 }
 </pre>
 
 </blockquote>

**Type:**

boolean

