#SimulScanReaderInfo

SimulScanReaderInfo provides information of the reader device.

**Example Usage:**

	:::java
	readerInfo.getFriendlyName();


**Version:**

1.0

##Public Methods
###getFriendlyName()
Returns the friendly name of the Device.

**Example Usage:**

	:::java
	String name = readerInfo.getFriendlyName();

**Returns:**

String Returns the friendly name.

###getDeviceType()
Returns the reader device type.

**Example Usage:**

	:::java
	SimulScanDeviceType deviceType = readerInfo.getDeviceType();

**Returns:**

[SimulScanDeviceType](SimulScanReaderInfo#SimulScanReaderInfo.SimulScanDeviceType) Returns the SimulScanDeviceType.


##Public Enums
###SimulScanReaderInfo.SimulScanDeviceType

**Values:**

**CAMERA** - The Scanner device class is camera.

**IMAGER** - The scanner device class is imager.

**UNDEFINED** - The scanner device class is not defined.