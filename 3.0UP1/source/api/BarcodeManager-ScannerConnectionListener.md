#BarcodeManager.ScannerConnectionListener

An interface for notifying client applications when the external scanner is connected or disconnected to the mobile device.

**Example Usage:**

	:::java
	public class MainActivity extends Activity implements ScannerConnectionListener
    {
       .. .. .. 
    } 


**Version:**

3.0

##Public Methods
###onConnectionChange(BarcodeManager.ScannerConnectionListener.ConnectionStatus connectionStatus)
Called to notify the client when the scanner device has been connected or disconnected to the mobile device.

**Parameters:**

**connectionStatus** - The Scanner connection status object.

**Returns:**

void

