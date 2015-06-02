#SmartCard

Provides access to SAM properties and I/O operations on an SAM object at
 protocol level.



##Public Methods

### connect

**public void connect(SmartCard.SmartCardProtocolType protocolType)**

Connects host device to smart card. Specified transmission protocol will
 be used for communication.

**Parameters:**

protocolType

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.SmartCardException



### close

**public void close()**

Closes already established connection between host device and smart card.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.SmartCardException



### process

**public byte process( cmdApdu,  expectedRespLength,  userFormattedProtocolFrame)**

Processes the Command APDU (Application Protocol Data Unit) and returns
 Response APDU from connected smart card. Application has to create SAM
 command APDU and send it to SAM using this API. Application should
 validate response APDU received from SAM.
 
 **Note:** May cause RF activity and may block. Must not be called from
 the main application thread.

**Parameters:**

cmdApdu - Command APDU to be processed by smart card

expectedRespLength - Length of expected response. Pass this parameter as 0

userFormattedProtocolFrame - This parameter applicable for only T1 protocol. true: User
            provides frame header

**Returns:**

byte

**Throws:**

com.symbol.emdk.securenfc.SmartCardException



### checkSmartCardPresence

**public boolean checkSmartCardPresence()**

Checks whether smart card is present or not.

**Returns:**

boolean

**Throws:**

com.symbol.emdk.securenfc.SmartCardException



### getVersion

**public SmartCardVersion getVersion()**

Gets the smart version.

**Returns:**

com.symbol.emdk.securenfc.SmartCard.SmartCardVersion

**Throws:**

com.symbol.emdk.securenfc.SmartCardException



### getConfig

**public SmartCardConfig getConfig()**

Gets the smart card configuration.

**Returns:**

com.symbol.emdk.securenfc.SmartCard.SmartCardConfig

**Throws:**

com.symbol.emdk.securenfc.SmartCardException



### setConfig

**public void setConfig(SmartCard.SmartCardConfig smartCardConfig)**

Sets the smart card configuration.

**Parameters:**

smartCardConfig

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.SmartCardException



##Public Enums

###SmartCard.SmartCardProtocolType

.

**Values:**

* **T0**

* **T1**

* **UNKNOWN**

