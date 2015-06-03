#com.symbol.emdk.emdkservice.barcode.SvcStatusData

StatusData class provides access to scanner status.



**Example Usage:**
	
	:::java	
	 	
	 	statusData.getState();


##Constructors

**SvcStatusData**



**Parameters:**

source



Parcel

##Public Methods

### getState

**public ScannerStates getState()**

Returns the scan event state.

**Returns:**

com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

### getFriendlyName

**public String getFriendlyName()**

Returns the friendly name of scanner for which the status data is returned.

**Returns:**

java.lang.String

### describeContents

**public int describeContents()**



**Returns:**

int

### writeToParcel

**public void writeToParcel( dest,  flags)**



**Parameters:**

dest

flags

**Returns:**

void

##Public Fields

###CREATOR



**Type:**

<any>

