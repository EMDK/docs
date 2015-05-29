#SimulScanStatusData

SimulScanStatusData class provides access to reader status.

**Example Usage:**

	:::java
	SimulScanStatusData.getState();


**Version:**

1.0

##Constructors
###SimulScanStatusData()


##Public Fields
###extendedInfo

**Type:**

[SimulScanStatusData.ExtendedInfo](SimulScanStatusData.ExtendedInfo)


##Public Methods
###getState()
Returns the the current status.

**Returns:**

[SimulScanStatus](SimulScanStatusData#SimulScanStatusData.SimulScanStatus)


###getFriendlyName()
Returns the friendly name of the Reader from which the SimulScanStatusData object was from.

**Returns:**

java.lang.String



##Public Enums
###SimulScanStatusData.ExtendedStatus

**Values:**

**NONE** - No extended error.

**PROCESS_TIMEOUT** - Timeout occurred during processing.

**IDENTIFICATION_TIMEOUT** - Timeout occurred during identification.


###SimulScanStatusData.SimulScanStatus

**Values:**

**DISABLED** - Disabled called successfully on reader.

**ENABLED** - Enabled reader successfully.

**SCANNING** - Successfully started scanning.

**IDLE** - Finished scanning.

**ERROR** - Error occurred.

**UNKNOWN** - Unknown status.
