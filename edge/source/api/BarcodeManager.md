#BarcodeManager

This is the primary object to access the barcode scanning feature.
 
 



**Example Usage:**
	
	:::java	
	 
	 	public class MainActivity extends Activity implements EMDKListener,
			StatusListener, DataListener, ScannerConnectionListener {
	
	    @Override
		  protected void onCreate(Bundle savedInstanceState) {
	   
	    //..
	    EMDKResults results = EMDKManager.getEMDKManager(getApplicationContext(), this);
	   
	   }	
	
	   @Override
		public void onOpened(EMDKManager emdkManager) {
			this.emdkManager = emdkManager;
		 }
	 
	  //...
	  barcodeManager = (BarcodeManager)this.emdkManager.getInstance(FEATURE_TYPE.BARCODE);
	
	  //...
	  Scanner scanner = barcodeManager.getDevice(DeviceIdentifier.DEFAULT);
	  scanner.enable();
	  scanner.addDataListener(callbackObj);
	  scanner.addStatusListener(callbackObj);
	  scanner.read();
	  
	  //...
	  scanner.cancelRead();
	  
	  //...
	  scanner.disable();
	  
	  //..
	  
	  EMDKManager.release(FEATURE_TYPE.BARCODE);
	  
	  }
	  


##Public Methods

### getSupportedDevicesInfo

**public List getSupportedDevicesInfo()**

Returns list of supported scanner devices information.

**Returns:**

java.util.List

### getDevice

**public Scanner getDevice(ScannerInfo scannerInfo)**

This method returns the scanner object if the scanner info specified is valid
 and scanner info object can obtain from the BarcoderManager.getSupportedDevices(). 
 The scanner object created will be singleton object for a specific scanner.

**Parameters:**

scannerInfo

**Returns:**

com.symbol.emdk.barcode.Scanner

### getDevice

**public Scanner getDevice(BarcodeManager.DeviceIdentifier deviceIdentifier)**



**Parameters:**

deviceIdentifier - The device identifier specifies which scanner the application wants.

**Returns:**

com.symbol.emdk.barcode.Scanner

### addConnectionListener

**public void addConnectionListener(BarcodeManager.ScannerConnectionListener connectionListener)**

Add ScannerConnectionListener to receive scanner connection changes via
 callback.

**Parameters:**

connectionListener

**Returns:**

void

### removeConnectionListener

**public void removeConnectionListener(BarcodeManager.ScannerConnectionListener connectionListener)**

Remove ScannerConnectionListener to receive scanner connection changes
 via callback.

**Parameters:**

connectionListener

**Returns:**

void

##Public Enums

###BarcodeManager.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###BarcodeManager.DeviceIdentifier

Defines specific scanner devices of each type.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

* **INTERNAL_LASER1**

* **BLUETOOTH_IMAGER1**

