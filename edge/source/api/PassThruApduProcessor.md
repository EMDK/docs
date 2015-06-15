#PassThruApduProcessor

This class is designed for the NFC applications to perform secure communication with the
 contact-less secure cards (tags) at the low level protocol.



##Public Methods

### enable

**public void enable(PassThruApduProcessor.ProtocolType protocolType)**

Enables connection between host device and Secure Access Module (SAM).

**Parameters:**

protocolType - Protocol to be used for communication between card reader
            (SAM) and contactless cards. This parameter is added for future use only.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.PassThruApduException

The exception will be thrown if it fails to enable the
             smartcard.

### disable

**public void disable()**

Closes already established connection between host device and SAM.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.PassThruApduException

The exception will be thrown if it fails to disable the
             smartcard.

### getVersion

**public String getVersion(PassThruApduProcessor.VersionType versionType)**

Retrieves version of smart card stack or connected smart card.

**Parameters:**

versionType

**Returns:**

java.lang.String

**Throws:**

com.symbol.emdk.securenfc.PassThruApduException

The exception will be thrown if it fails to retrieve version
             of smart card stack or connected smart card.

### process

**public byte process( cmdApdu,  expectedRespLength,  userFormattedProtocolFrame)**

Sends the Command APDU (C-APDU) (Application Protocol Data Unit) and
 receives Response APDU (R-APDU) from connected contactless smart cards.
 Application has to create C-APDU and send it to SAM using this API.
 Application should have process the R-APDU received from SAM.
 
 **Note:** This is a synchronous call and may block the main thread
 depending on the time process the command and its payload. The
 recommendation is not to be called from the main application thread.

**Parameters:**

cmdApdu - Command APDU (C-APDU) to be processed by smart card

expectedRespLength - Length of expected response. Pass this parameter as 0

userFormattedProtocolFrame - This parameter applicable for only T1 protocol. Typically user
            will provide this parameter as false. true: User provides
            frame header

**Returns:**

byte

**Throws:**

com.symbol.emdk.securenfc.PassThruApduException

The exception will be thrown if it fails to process the given
             APDU.

##Public Enums

###PassThruApduProcessor.VersionType

The enum to get the Smart Card stack and connected Smart Card versions.

**Values:**

* **SMART_CARD**

* **SMART_CARD_STACK**

###PassThruApduProcessor.ProtocolType

Communication protocol between a SAM and tag.

**Values:**

* **T0**

* **T1**

