#com.symbol.emdk.emdkservice.barcode.SvcScanData

The ScanData object gives information on the barcode data scanned.



**Example Usage:**
	
	:::java	
	 	
	  ArrayList<ScanData> scanDataList = scanDataCollection.getScanData()
	  for(ScanData scanData :scanDataList) {
	   String data = scanData.getData();
	   LABEL_TYPE labelType = scanData.getLabelType();
	   String timeStamp = scanData.getTimeStamp();
	  }


##Constructors

**SvcScanData**



**Parameters:**

source



Parcel

##Public Methods

### getData

**public String getData()**

Returns the scanned barcode data.

**Returns:**

java.lang.String

### getLabelType

**public LabelType getLabelType()**

Returns label type of the scanned data.

**Returns:**

com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

### getTimeStamp

**public String getTimeStamp()**

Returns the time at which the barcode was scanned.
 The time format is "yyyy-MM-dd HH:mm:ss.nnnnnnnnn"

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

