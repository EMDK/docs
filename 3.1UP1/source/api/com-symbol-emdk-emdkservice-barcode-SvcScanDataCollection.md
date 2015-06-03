#com.symbol.emdk.emdkservice.barcode.SvcScanDataCollection

The ScanDataCollection object gives scanning result and the collection of
 ScanData.



**Example Usage:**
	
	:::java	
	 	
	 	@Override
		public void onData(ScanDataCollection scanDataCollection) {
	
			if(scanDataCollection != null && scanDataCollection.getResult() == SCANNER_RESULTS.SUCCESS) {
				
				ArrayList<ScanData> scanData = scanDataCollection.getScanData();
				
				for(ScanData data : scanData ) {
					
					String barcodeDate = data.getData();
					LABEL_TYPE labelType = data.getLabelType();
					String timeStamp = scanData.getTimeStamp();
				}
			}
		 }


##Constructors

**SvcScanDataCollection**



**SvcScanDataCollection**



**Parameters:**

source



Parcel

##Public Methods

### getFriendlyName

**public String getFriendlyName()**

Returns the friendly name of scanner for which the data is returned.

**Returns:**

java.lang.String

### getResult

**public ScannerResults getResult()**

This method used to obtain the scanned result.
 
 

**Example Usage:**
	
	:::java	
	ScannerResults results = scanDataCollection.getResult();
	
	
	


**Returns:**

com.symbol.emdk.emdkservice.barcode.ScannerResults

### getScanData

**public ArrayList getScanData()**

This method is used to obtain the scanned data list.
 
 

**Example Usage:**
	
	:::java	
	ArrayList<ScanData> scanDataList = scanDataCollection.getScanData()
	
	
	


**Returns:**

java.util.ArrayList

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

