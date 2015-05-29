#BarcodeManager

This is the primary object to access the barcode scanning feature.

**Example Usage:**

    :::java
    public class MainActivity extends Activity implements EMDKListener, StatusListener, DataListener, ScannerConnectionListener {
    
      Override:
      protected void onCreate(Bundle savedInstanceState) { 
      //.. 
      EMDKResults results = EMDKManager.getEMDKManager(getApplicationContext(), this); 
      }

      Override:
      public void onOpened(EMDKManager emdkManager) { 
      this.emdkManager = emdkManager; 
      } 

       //... 
       barcodeManager = (BarcodeManager)this.emdkManager.getInstance(FEATURE_TYPE.BARCODE); 
       //... 
       Scanner scanner = barcodeManager.getDevice(DeviceIdentifier.DEFAULT); 
       scanner.enable(); 
       scanner.addDataListener(callbackObj); scanner.addStatusListener(callbackObj); 
       scanner.read(); 
       //... 
       scanner.cancelRead(); 
       //... 
       scanner.disable(); 
       //.. 
       EMDKManager.release(FEATURE_TYPE.BARCODE);  
    } 


**Version:**

1.0

##Public Methods

###public void addConnectionListener(BarcodeManager.ScannerConnectionListener connectionListener)
Add ScannerConnectionListener to receive scanner connection changes via callback.

**Parameters:**

connectionListener -

**Returns:**

void


###removeConnectionListener
public void removeConnectionListener(BarcodeManager.ScannerConnectionListener connectionListener)
Remove ScannerConnectionListener to receive scanner connection changes via callback.

**Parameters:**

connectionListener -

**Returns:**

void

###getDevice(ScannerInfo scannerInfo)
This method returns the scanner object if the scanner info specified is valid and scanner info object can obtain from the BarcoderManager.getSupportedDevices(). The scanner object created will be singleton object for a specific scanner.

**Parameters:**

**scannerInfo** - friendlyName The scanner friendly name.

**Returns:**

com.symbol.emdk.barcode.[Scanner](Scanner) - Returns the scanner object if scanner friendly name is valid. Otherwise null is returned.

###getDevice(BarcodeManager.DeviceIdentifier deviceIdentifier)
This method returns the scanner object based on device identifier specified. The scanner object created will be signleton object for a specific scanner.

**Parameters:**

**deviceIdentifier** - The device identifier specifies which scanner the application wants.

**Returns:**

com.symbol.emdk.barcode.[Scanner](Scanner) - [Scanner](Scanner) object if the device identifier specified is valid on the device. Otherwise null is returned.

###getSupportedDevicesInfo()
Returns list of supported scanner devices information.

**Returns:**

java.util.List&lt;com.symbol.emdk.barcode.[ScannerInfo](ScannerInfo)&gt; - Returns list of supported scanner devices information.


###addConnectionListener(BarcodeManager.ScannerConnectionListener connectionListener)
Add ScannerConnectionListener to receive scanner connection changes via callback.

**Parameters:**

connectionListener - [BarcodeManager.ScannerConnectionListener](BarcodeManager.ScannerConnectionListener)


###removeConnectionListener(BarcodeManager.ScannerConnectionListener connectionListener)
Remove ScannerConnectionListener to receive scanner connection changes via callback.

**Parameters:**

connectionListener - [BarcodeManager.ScannerConnectionListener](BarcodeManager.ScannerConnectionListener)


##Public Enums
###BarcodeManager.ConnectionState
Connection states of a scanner device.

**Values:**

**CONNECTED** - Indicates that a pluggable scanner was connected.

**DISCONNECTED** - Indicates that a pluggable scanner was removed and no longer avail for scanning.

###BarcodeManager.DeviceIdentifier
Defines specific scanner devices of each type.

**Values:**

**DEFAULT**

**INTERNAL_CAMERA1**

**INTERNAL_IMAGER1**

**INTERNAL_LASER1**

**BLUETOOTH_IMAGER1**

###BarcodeManager.ScannerResults
Defines all the error codes the barcode scanning API returns. 

**Values:**

**SUCCESS** - Success.

**FAILURE** - Failure.

**ALREADY_SCANNING** - Scanning in progress.

**SCANNER_IN_USE** - Cannot enable scanner and is already in use.

**VF_ERROR** - View finder error.

**INVALID_VALUE** - The value is invalid.

**SCAN_PARAM_NOT_SUPPORTED** - Particular parameter not supported.

**SCAN_DATA_FAILURE** - Unexpected scan data

**SCAN_PARAM_READ_ONLY** - Read only parameters.

**LENGTH_MISMATCH** - Decoded barcode does not meet length requirements.

**SCANNER_OPERATION_FAILURE** - Scanner operation failed.

**FEATURE_NOT_SUPPORTED** - The feature is not supported.

**SCANNER_NOT_SUPPORTED** - Scanner not supported.

**SCANNER_NOT_ENABLED** - The scanner device is not enabled.

**SCANNER_TIMED_OUT** - The timer out error occurred.

**INVALID_OBJECT** - The object is not valid.

**NO_DATA_LISTENER** - Scan read is issued without adding the data listener.

**TRIGGER_KEY_REG_FAILED** - Failed to register for the hard trigger key notification.

**TRIGGER_KEY_IN_USE** - Trigger key is already used by other user.

**TRIGGER_KEY_UNREG_FAILED** - Failed to unRegister for the hard trigger key notification.

**SCANNER_INIT_FAILURE** - Scanner initialization failed.

**SCANNER_DEINIT_FAILURE** - Scanner de-initialization failed.

**UNDEFINED** - Error code not defined.