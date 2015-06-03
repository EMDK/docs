#com.symbol.emdk.emdkservice.barcode.SvcScannerInfo

ScannerInfo provides information of the scanner device.



**Example Usage:**
	
	:::java	
	 	
	 	scanneInfo.getFriendlyName();


##Public Methods

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

###scannerIndex



**Type:**

int

###friendlyName



**Type:**

java.lang.String

###modelNumber



**Type:**

java.lang.String

###deviceType



**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

###connectionType



**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

###decoderType



**Type:**

com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

###isDefaultScanner



**Type:**

boolean

###isConnected



**Type:**

boolean

###CREATOR



**Type:**

<any>

