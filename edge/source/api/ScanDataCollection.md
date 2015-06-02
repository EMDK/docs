#ScanDataCollection

The ScanDataCollection object gives scanning result and the collection of ScanData.



**Example Usage:**
	
	:::java	
	 	
	 	@Override
		public void onData(ScanDataCollection scanDataCollection) {
	
			if(scanDataCollection != null && scanDataCollection.getResult() == ScannerResults.SUCCESS) {
				
				ArrayList<ScanData> scanData = scanDataCollection.getScanData();
				
				for(ScanData data : scanData ) {
					
					String barcodeDate = data.getData();
					LABEL_TYPE labelType = data.getLabelType();
					String timeStamp = scanData.getTimeStamp();
				}
			}
		 }


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

com.symbol.emdk.barcode.ScannerResults

### getScanData

**public ArrayList getScanData()**

This method is used to obtain the scanned data list.
 
 

**Example Usage:**
	
	:::java	
	ArrayList<ScanData> scanDataList = scanDataCollection.getScanData()
	
	
	


**Returns:**

java.util.ArrayList

##Public Enums

###ScanDataCollection.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

