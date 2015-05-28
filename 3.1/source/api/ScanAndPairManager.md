#ScanAndPairManager

The ScanAndPairManager provides interfaces, classes and methods to scan a Bluetooth barcode (name or address) of a remote Bluetooth device and pair/unpair with the remote Bluetooth device.


##Public Fields
###config
The [ScanAndPairConfig](ScanAndPairConfig) provides a way to configure the settings to use it in scanAndPair() or scanAndUnpair() methods. These settings must be done before calling the scanAndPair() or scanAndUnpair() methods and do not modify the this while the method is processing its job.

**Type:**

com.symbol.emdk.scanandpair.[ScanAndPairConfig](ScanAndPairConfig)


##Public Methods
###isPreviousCommandPending()
This method provides information if any of the previous request is pending. If this method returns true, the client application must wait for the current complete before calling the issuing the next request.

**Returns:**

Boolean value

###scanAndPair(java.lang.String pin)
This is an asynchronous method. The status of the scanAndPair() method will be returned if the callback is registered. If the always scan is enabled in the configuration, this method scans a barcode to get the Bluetooth address or name of a remote device, and pairs with that remote device. If a Bluetooth address is scanned, the remote device is paired without performing a discovery. If a Bluetooth name is scanned, then a discovery is done to find the address of the device and then the pairing is done. The provided authentication PIN is used for pairing. The maximum allowed length for the authentication PIN is 15 characters.

**Parameters:**

**pin** - Pin required to pair with the Bluetooth device.

**Returns:**

[ScanAndPairResults](ScanAndPairManager.ScanAndPairResults) - Returns success if the scan and pair request is successfully initiated.

###scanAndUnpair()
This is an asynchronous method. The status of the scanAndUnpair() method will be returned if the callback is registered. If the always scan is enabled in the configuration, this method scans a barcode to get the Bluetooth address or name of a remote device, and pairs with that remote device. If a Bluetooth address was scanned for pairing during scanAndPair() calls, then the same address can be scanned for unpairing during the ScanAndUnPair call.

**Returns:**

[ScanAndPairResults](ScanAndPairManager.ScanAndPairResults) - Returns success if the scan and unpair request is successfully initiated.

###getStatus()
This method provides an option to get the current or recent status of scanAndPair or scanAndUnpair calls.

**Returns:**
[StatusData](StatusData) object.

###addStatusListener(ScanAndPairManager.StatusListener listener) throws com.symbol.emdk.scanandpair.ScanAndPairException
The client can register to get status notification via callbacks.

**Parameters:**

listener

**Returns:**

void

**Throws:**
com.symbol.emdk.scanandpair.ScanAndPairException

###removeStatusListener(ScanAndPairManager.StatusListener listener) throws com.symbol.emdk.scanandpair.ScanAndPairException
The client can un-register to get status notification via callbacks.

**Parameters:**

listener

**Returns:**

void

**Throws:**
com.symbol.emdk.scanandpair.ScanAndPairException



##Public Enums
###ScanAndPairResults
Provides list of result codes for ScanAndPair class.

**Values:**

**SUCCESS** - Success

**FAILURE** - Operation is failed.

**INVALID_OBJECT** - The object is not valid.

**INVALID_CONFIG** - Invalid configuration

**INVALID_BLUETOOTH_DEVICE_INFO** - Invalid Bluetooth address or name provided

**INVALID_PAIRING_PIN** - Invalid Pin entered for Bluetooth pairing

**BLUETOOTH_NOT_ENABLED** - Failure in Bluetooth initialization

**BLUETOOTH_DEVICE_DISCOVERY_FAILED** - Unable to discover Bluetooth device

**BLUETOOTH_SERVICE_DISCOVERY_FAILED** - Unable to perform Bluetooth service discovery

**DEVICE_NOT_PAIRED** - Trying to unpair a Bluetooth device which is not yet paired.

**DEVICE_ALREADY_PAIRED** - Trying to pair a Bluetooth device which is already paired.

**DEVICE_PAIRING_FAILED** - Failure in Bluetooth pairing

**DEVICE_UNPAIRING_FAILED** - Failure in Bluetooth unpairing

**PAIRING_TIMEDOUT** - Bluetooth pairing timed out

**SCANNER_INIT_FAILURE** - Error in opening scanner

**SCANNER_UNINT_FAILED** - Error in closing scanner

**SCANNER_NOT_SUPPORTED** - Scanner not supported or not available

**SCANNER_IN_USE** - Scanner is busy in performing some other operation

**INVALID_SCANNED_DATA** - Invalid scanned data.

**SCANNER_READ_FAILED** - Error in scanning barcode

**PREVIOUS_COMMAND_PENDING** - Previously requested command is in progress, wait for it to complete.

**INPROGRESS** - The operation requested is in progress.