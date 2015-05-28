#ProfileConfig.DataCapture.Barcode.ReaderParams
Holds reader configuration settings.

**Example Usage:**

	:::java
	ReaderParams readerParams = profileConfig.dataCapture.barcode.readerParams;

**Version:**

2.0

##Public Fields

###beam_timer
Sets the maximum amount of time that the reader remains on (0 - 60,000 ms in increments of 100 ms). A value of 0 sets the reader to stay on indefinitely (default -15000).

**Example Usage:**

	:::java
	int timer = readerParams.beam_timer;

**Type:**

int

###illumination_mode
Turns camera illumination on and off. This option is only available when camera is selected in the Barcode input Scanner selection option. Use enum [ProfileConfig.ILLUMINATION_MODE](ProfileConfig.ILLUMINATION_MODE).

**Example Usage:**

	:::java
	readerParams.illumination_mode = ILLUMINATION_MODE.DEFAULT;

**Type:**

com.symbol.emdk.[ProfileConfig.ILLUMINATION_MODE](ProfileConfig.ILLUMINATION_MODE)

###inverse_1d_mode
This parameter allows the user to select decoding on inverse 1D bar codes. Use enum [ProfileConfig.INVERSE_1D_MODE](ProfileConfig.INVERSE_1D_MODE).

**Example Usage:**
	
	:::java
	readerParams.inverse_1d_mode = INVERSE_1D_MODE.AUTO;

**Type:**

com.symbol.emdk.[ProfileConfig.INVERSE_1D_MODE](ProfileConfig.INVERSE_1D_MODE)

###lcd_mode
Enables or disables LCD mode. LCD mode enhances the ability of the imager to read bar codes from LCD displays such as cellphones (imager only). Use enum [ProfileConfig.LCD_MODE](ProfileConfig.LCD_MODE).

**Example Usage:**

	:::java
	readerParams.lcd_mode = LCD_MODE.DEFAULT;

**Type:**

com.symbol.emdk.[ProfileConfig.LCD_MODE](ProfileConfig.LCD_MODE)

###linear_security_level
Sets the number of times a bar code is read to confirm an accurate decode. Use enum [ProfileConfig.LINEAR_SECURITY_LEVEL](ProfileConfig.LINEAR_SECURITY_LEVEL).

**Example Usage:**

	:::java
	readerParams.linear_security_level = LINEAR_SECURITY_LEVEL.DEFAULT;

**Type:**

com.symbol.emdk.[ProfileConfig.LINEAR_SECURITY_LEVEL](ProfileConfig.LINEAR_SECURITY_LEVEL)

###low_power_timeout
Time in milliseconds of non-use before dropping to a low-power mode.

**Example Usage:**

	:::java
	int timeout = readerParams.low_power_timeout;

**Type:**

int

###picklist
Allows the imager to decode only the bar code that is directly under the cross-hair/reticle (+) part of the pattern. This feature is useful in applications where multiple bar codes may appear in the field of view during a decode session and only one of them is targeted for decode. Use enum [ProfileConfig.PICK_LIST](ProfileConfig.PICK_LIST).

**Example Usage:**

	:::java
	readerParams.picklist = PICK_LIST.DEFAULT;

**Type:**

com.symbol.emdk.[ProfileConfig.PICK_LIST](ProfileConfig.PICK_LIST)

###viewfinder_mode
Configures the Viewfinder modes supported for camera scanning. Use enum [ProfileConfig.VIEWFINDER_MODE](ProfileConfig.VIEWFINDER_MODE).

**Example Usage:**

	:::java
	readerParams.viewfinder_mode = VIEWFINDER_MODE.DEFAULT;

**Type:**

com.symbol.emdk.[ProfileConfig.VIEWFINDER_MODE](ProfileConfig.VIEWFINDER_MODE)

