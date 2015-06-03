#SimulScanStatusData

SimulScanStatusData class provides access to reader status.



**Example Usage:**
	
	:::java	
	 	
	 	SimulScanStatusData.getState();


##Constructors

**SimulScanStatusData**



##Public Methods

### getState

**public SimulScanStatus getState()**

Returns the the current status

**Returns:**

com.symbol.emdk.simulscan.SimulScanStatusData.SimulScanStatus

### getFriendlyName

**public String getFriendlyName()**

Returns the friendly name of the Reader from which the SimulScanStatusData 
 object was from

**Returns:**

java.lang.String

##Public Fields

###ssdcStatus



**Type:**

com.symbol.emdk.simulscan.SimulScanStatusData.SimulScanStatus

###friendlyName



**Type:**

java.lang.String

##Public Enums

###SimulScanStatusData.SimulScanStatus

.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

