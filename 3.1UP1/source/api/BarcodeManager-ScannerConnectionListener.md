#BarcodeManager.ScannerConnectionListener

This interface is called to notify the client when the scanner device has been connected or disconnected to the mobile device.

**Example Usage:**

	:::java
	public class MainActivity extends Activity implements ScannerConnectionListener
    {
       .. .. .. 
    } 


**Version:**

3.1

##Public Methods
###onConnectionChange(ScannerInfo scannerInfo, ConnectionState connectionState)
Called to notify the client when the scanner device has been connected or disconnected to the mobile device.

**Parameters:**

**scannerInfo** - The [ScannerInfo](ScannerInfo) object of the affected scanner.

**connectionState** - The new [connection state](BarcodeManager#BarcodeManager.ConnectionState).

**Returns:**

void

