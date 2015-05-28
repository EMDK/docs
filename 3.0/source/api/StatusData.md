#StatusData
StatusData class provides access to scanner status.

**Example Usage:**

    :::java
    statusData.getState();

**Version:**

3.0

##Public Methods
###getFriendlyName()
Returns the friendly name of scanner for which the status data is returned.

**Returns:**

java.lang.String - Returns scanner index to the supported devices list.

###getState()
Returns the scan event state.

**Returns:**

com.symbol.emdk.barcode.StatusData.ScannerState

##Public Enums
###StatusData.ScannerStates
Defines the different states of the barcode scanner.

**Values:**

**IDLE** - Scanner is enabled but no reads are pending.

**WAITING** - Scanner has issued reads request and is waiting for trigger event. 

**SCANNING** - Scanner beam is on and it is acquiring data.

**DISABLED** - Scanner is not enabled.
