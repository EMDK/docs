#ScannerException

The methods of barcode scanning object throws ScannerException when an error occurs. The error could be due to:

1. Client using the API incorrectly OR
2. because an unexpected error occurred

##Public Methods
###getResult()
Returns the ScannerResults enum value.

**Returns:**

com.symbol.emdk.barcode.[BarcodeManager.ScannerResults](BarcodeManager#BarcodeManager.ScannerResults)