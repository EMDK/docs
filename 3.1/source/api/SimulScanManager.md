#SimulScanManager

This is the primary object to access the SimulScan feature.

**Example Usage:**

	:::java
	public class MainActivity extends Activity implements EMDKListener,
		SimulScanDataEventListerner, SimulScanStatusEventListerner {

	  	protected void onCreate(Bundle savedInstanceState) {
 			//..
   		 EMDKResults results = EMDKManager.getEMDKManager(getApplicationContext(), this);
		}

		public void onOpened(EMDKManager emdkManager) {
			this.emdkManager = emdkManager;
	 	}

		//...
		simulscanManager = (SimulScanManager)this.emdkManager.getInstance(FEATURE_TYPE.SimulScan);
	  //...
	  List<SimulScanReaderInfo> readerInfoList = simulscanManager.getSupportedDevicesInfo();
	  SimulScanReader reader = simulscanManager.getDevice(readerInfoList.get(0));
	  reader.addDataListener(callbackObj);
	  reader.addStatusListener(callbackObj);
	  reader.enable();
	  // set template before calling read
	  reader.read();
	  
	  //...
	  reader.cancelRead();
	  
	  //...
	  reader.disable();
	  
	  //..
	  
	  EMDKManager.release(FEATURE_TYPE.SimulScan);
	  
	}


**Version:**

1.0

##Public Methods
###getSupportedDevicesInfo()
Returns list of supported reader devices information.

**Returns:**

Returns list of supported reader devices information ([SimulScanReaderInfo](SimulScanReaderInfo)).

###getDevice([SimulScanReaderInfo](SimulScanReaderInfo) simulscanReaderInfo) throws [SimulScanException](SimulScanException)
This method returns the reader object based on the input SimulScanReaderInfo object.

**Parameters:**

[simulscanReaderInfo](SimulScanReaderInfo) - The [SimulScanReadInfo](SimulScanReaderInfo) specifies which reader the application wants.

**Returns:**

[SimulScanReader](SimulScanReader) - SimulScanReader if the input is valid. Otherwise null is returned.

**Throws:**

[SimulScanException](SimulScanException) - Exception will be throw if any error occurs.


###getDevice(SimulScanManager.DeviceIdentifier deviceIdentifier) throws [SimulScanException](SimulScanException)
This method returns the reader object based on device identifier specified.

**Parameters:**

[deviceIdentifier](SimulScanManager#SimulScanManager.DeviceIdentifier) - The device identifier specifies which reader the application wants.

**Returns:**

[SimulScanReader](SimulScanReader) - SimulScanReader if the device identifier specified is valid on the device. Otherwise null is returned.

**Throws:**
[SimulScanException](SimulScanException) - Exception will be throw if any error occurs.

##Public Enums
###SimulScanManager.DeviceIdentifier

**Values:**

**DEFAULT** - The scanner device is selected based on the template.

**INTERNAL_CAMERA1** - Use the internal camera.

**INTERNAL_IMAGER1** - Use the internal imager.


###SimulScanManager.SimulScanResults
Defines all the error codes the SimulScan API returns.

**Values:**

**SUCCESS** - Success.

**ALREADY_SCANNING** - A scan operation is already in progress.

**ALREADY_STOPPED_SCANNING** - The reader has already stopped scanning.

**READER_ALREADY_ENABLED** - Reader is already enabled.

**READER_IN_USE** - Another reader is already enabled and in use. Only one reader can be enabled at a time.

**READER_ALREADY_DISABLED** - The reader is already disabled.

**FEATURE_NOT_SUPPORTED** - The feature is not supported completely or for specified input.

**READER_NOT_ENABLED** - The selected reader is not enabled.

**INVALID_OBJECT** - The reader has been released and is not valid.

**FAILED_TO_LOAD_TEMPLATE** - Failed to load template.

**FAILED_TO_SET_TEMPLATE** - Failed to set template.

**TEMPLATE_NOT_SET** - Failed to set template.

**INVALID_VALUE** - The value passed is not valid.

**NO_DATA_LISTENER** - Data listener is not set

**EMDK_NOT_OPENED** - EMDK is not opened

**READER_INIT_FAILED** - Reader initialization failed.

**READER_DEINIT_FAILED** - Reader initialization failed.

**UNDEFINED** - Undefined

**FAILURE** - Failure