#StatusData

StatusData class provides access to scanner status.



**Example Usage:**
	
	:::java	
	 	
	 	statusData.getState();


##Public Methods

### getState

**public ScannerStates getState()**

Returns the scan event state.

**Returns:**

com.symbol.emdk.barcode.StatusData.ScannerStates

### getFriendlyName

**public String getFriendlyName()**

Returns the friendly name of scanner for which the status data is returned.

**Returns:**

java.lang.String

##Public Enums

###StatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

