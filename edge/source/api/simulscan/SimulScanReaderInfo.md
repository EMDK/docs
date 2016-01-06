#SimulScanReaderInfo

SimulScanReaderInfo provides information of the reader device.
 
 

**Example Usage:**
	
	:::java	
	readerInfo.getFriendlyName();


##Public Methods

### getFriendlyName

**public String getFriendlyName()**

Returns the friendly name of the Device.
 
 

**Example Usage:**
	
	:::java	
	String name = readerInfo.getFriendlyName();


**Returns:**

java.lang.String - String
 		Returns the friendly name

### getDeviceType

**public DeviceType getDeviceType()**

Returns the reader device type
 
 

**Example Usage:**
	
	:::java	
	SimulScanDeviceType deviceType = readerInfo.getDeviceType();


**Returns:**

com.symbol.emdk.simulscan.SimulScanReaderInfo.DeviceType - SimulScanDeviceType
 		Returns the SimulScanDeviceType

##Public Enums

###SimulScanReaderInfo.DeviceType

List of supported scanner device type.
 
 

**Example Usage:**
	
	:::java	
	SimulScanDeviceType.CAMERA;


**Values:**

* **CAMERA** -The Scanner device class is camera.

* **IMAGER** -The scanner device class is imager.

* **UNDEFINED** -The scanner device class is not defined.

