#SimulScanReaderInfo

SimulScanReaderInfo provides information of the reader device.



**Example Usage:**
	
	:::java	
	 	
	 	readerInfo.getFriendlyName();


##Constructors

**SimulScanReaderInfo**



**Parameters:**

rdInfo



com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo

##Public Methods

### getFriendlyName

**public String getFriendlyName()**

Returns the friendly name of the Device.
 
 

**Example Usage:**
	
	:::java	
	String name = readerInfo.getFriendlyName();
	
	
	


**Returns:**

java.lang.String

### getDeviceType

**public DeviceType getDeviceType()**

Returns the reader device type
 
 

**Example Usage:**
	
	:::java	
	SimulScanDeviceType deviceType = readerInfo.getDeviceType();
	
	
	


**Returns:**

com.symbol.emdk.simulscan.SimulScanReaderInfo.DeviceType

##Public Fields

###deviceIdentifier



**Type:**

com.symbol.emdk.simulscan.SimulScanManager.DeviceIdentifier

###deviceType



**Type:**

com.symbol.emdk.simulscan.SimulScanReaderInfo.DeviceType

###readerIndex



**Type:**

int

###friendlyName



**Type:**

java.lang.String

##Public Enums

###SimulScanReaderInfo.DeviceType

List of supported scanner device type.

**Values:**

* **CAMERA** - The Scanner device class is camera.

* **IMAGER** - The scanner device class is imager.

* **UNDEFINED** - The scanner device class is not defined.

