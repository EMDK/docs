#SmartCard.SmartCardConfig

This class provides access to get the smart card configurations.



##Constructors

**SmartCard.SmartCardConfig**



##Public Methods

### getClockRate

**public int getClockRate()**

Smart card clock frequency as coded in CCR register of TDA8029.

**Returns:**

int

### getFidi

**public int getFidi()**

Returns FIDI coded as in TA1 parameter.

**Returns:**

int

### getProtocolType

**public SmartCardProtocolType getProtocolType()**

Protocol used by the smart card.

**Returns:**

com.symbol.emdk.securenfc.SmartCard.SmartCardProtocolType

