#SimulScanReader

SimulScanReader class will represent and provides access to the physical Reader device.

**Example Usage:**

	:::java
	List<SimulScanReaderInfo> readerInfoList = simulscanManager.getSupportedDevicesInfo();
    SimulScanReader reader = simulscanManager.getDevice(readerInfoList.get(0));
    reader.addDataListener(callbackObj);
    reader.addStatusListener(callbackObj);
    reader.enable();
    // Set template before calling read
    reader.read();
    reader.cancelRead();
    reader.disable();


**Version:**

1.0

##Public Methods
###getReaderInfo()
Returns information about the reader device.

**Returns:**

Returns the [SimulScanReaderInfo](SimulScanReaderInfo) object.


###isReadPending()
Another read() cannot be submitted while a read is pending.

**Returns:**

boolean Returns true if a read is pending.


###enable() throws [SimulScanException](SimulScanException)
Enables the reader hardware. This method does not make the reader to scan. If another reader is already enabled, this will throw a SimulScanException. You must call disable() when you are done, otherwise all readers will remain locked and will be unavailable for this and any other application that uses SimulScan.

**Example Usage:**

	:::java
	reader.enable();

**Returns:**

void

**Throws:**

[SimulScanException](SimulScanException) - The exception will thrown if the reader enable fails.


###disable() throws [SimulScanException](SimulScanException)
Disables the reader hardware. Any pending scanned data will be lost. This method releases the reader hardware resources so that other readers can be enabled. You must call this as soon as you're done with the scanning. Other applications will not be able to access SimulScan related functions till this function is called.

**Example Usage:**

	:::java
	reader.disable();

**Throws:**

[SimulScanException](SimulScanException) - The exception will thrown if the reader disable fails.


###isEnabled() throws SimulScanException
Returns reader enabled state

**Returns:**

boolean Returns true if reader is enabled.

**Throws:**

[SimulScanException](SimulScanException) - Exception will be throw if any error occurs.


###getConfig() throws [SimulScanException](SimulScanException)
Gets the current configuration settings for this reader device. The reader must be enabled before the calling this function. If modifications are made to the returned SimulScanConfig object, the Reader.setConfig(SimulScanConfig) must be called to take effect.

**Example Usage:**

	:::java
	reader.enable();
 	SimulScanConfig config = reader.getConfig();

**Returns:**

[SimulScanConfig](SimulScanConfig) - The valid reader configuration object will be returned on successful get.

**Throws:**

[SimulScanException](SimulScanException) - Exception will be throw if any error occurs.


###setConfig(SimulScanConfig config) throws [SimulScanException](SimulScanException)
Changes the settings for this reader device. The reader must be enabled and must not have a read pending to call this method. This method skips the unsupported parameters and continues with setting the supported values.

**Example Usage:**

	:::java
	SimulScanMultiTemplate template1 = new SimulScanMultiTemplate(fileUri);//fileUri points to the template
 	SimulScanReader reader = simulscanManager.getDevice(template1.deviceIdentifier);
 	reader.enable();
 	SimulScanConfig config = reader.getConfig();
 	config.multiTemplate = template1;
 	reader.setConfig(config);

**Parameters:**

[SimulScanConfig](SimulScanConfig) config - The Parameters to use for this reader device.

**Returns:**

void

**Throws:**

[SimulScanException](SimulScanException) - Exception will be throw if any error occurs while setting the parameters.


###read() throws [SimulScanException](SimulScanException)
This method starts a SimulScan scan. If a read() is submitted while another read is pending, the method call will fail. The read request can be cancelled by issuing a cancelRead(). It is recommended to check whether a read is pending by calling isReadPending() before submitting a read().

**Example Usage:**

	:::java
	reader.read();

**Returns:**

void

**Throws:**

[SimulScanException](SimulScanException) - Exception will be throw if any error occurs during the read request.


###cancelRead() throws [SimulScanException](SimulScanException)
This cancels any pending read() calls.

**Example Usage:**

	:::java
	reader.cancelRead();

**Returns:**

void

**Throws:**

[SimulScanException](SimulScanException) - The exception will thrown if error occurs during the cancelRead request.


###addDataListener([SimulScanReader.DataListerner](SimulScanReader.DataListerner) dataListener) 
The client can register to get data notification via callbacks.

**Parameters:**

dataListener - The [DataListerner](SimulScanReader.DataListerner) callabck object.

**Returns:**

void


###removeDataListener([SimulScanReader.DataListerner](SimulScanReader.DataListerner) dataListener)
The client can unregister to not get data notification via callbacks.

**Parameters:**

dataListener - The [DataListerner](SimulScanReader.DataListerner) callback object to be unregistered.

**Returns:**

void


###addStatusListener([SimulScanReader.StatusListerner](SimulScanReader.StatusListerner) statusListener)
The client can register to get status notification via callbacks.

**Parameters:**

statusListener - The [StatusListener](SimulScanReader.StatusListerner) callback object.

**Returns:**

void 


###removeStatusListener([SimulScanReader.StatusListerner](SimulScanReader.StatusListerner) statusListener)
The client can unregister to not get status notification via callbacks.

**Parameters:**

statusListener - The [StatusListerner](SimulScanReader.StatusListerner) callback object to be unregistered.

**Returns:**

void
