#ScannerInfo
ScannerInfo provides information of the scanner device.

**Example Usage:**

    :::java
    scannerInfo.getFriendlyName();

**Version:**

3.0

##Public Methods
###getConnectionType()
Returns the scanner connection type to mobile computer Note: The connection type information is not available on Scanner Framework 1.18.P03 on TC55 REV A device.

**Example Usage:**

    :::java
    ConnectionType deviceType = scannerInfo.getConnectionType();

**Returns:**

com.symbol.emdk.barcode.ScannerInfo.ConnectionType - Returns the ConnectionType

###getDecoderType()
Returns the barcode scanning type supported by scanner. Note: The decoder type information is not available on Scanner Framework 1.18.P03 on TC55 REV A device.

**Example Usage:**

    :::java
    DecoderType decoderType = scannerInfo.getScannerInfo().getDecoderType();

**Returns:**

com.symbol.emdk.barcode.ScannerInfo.DecoderType - Returns the DECODER_TYPE

###getDeviceType()
Returns the scanner device type.

**Example Usage:**

    :::java
    DeviceType deviceType = scannerInfo.getDeviceType();

**Returns:**

com.symbol.emdk.barcode.ScannerInfo.DeviceType - Returns the DeviceType

###getFriendlyName()
Returns the friendly name of the Device.

**Example Usage:**

    :::java
    String name = scannerInfo.getFriendlyName();

**Returns:**

java.lang.String - Returns the friendly name

###getModelNumber()
Returns the scanner device model number. This information will be available only after the scanner is enabled. Note: The model number is supported on the Scanner Framework version 3.0.11 or later.

**Example Usage:**

    :::java
    String model = scannerInfo.getModelNumber();

**Returns:**

java.lang.String - Returns the model string

###isConnected()

**Returns:**

boolean

###isDefaultScanner()
Returns true if it is a default scanner else false.

**Returns:**

boolean

##Public Enums
###ScannerInfo.ConnectionType
List of supported scanner connection types.

**Example Usage:**

    :::java
    ConnectionType.INTERNAL;

**Values:**

**INTERNAL** - The scanner device connected internally within the mobile device.

**BLUETOOTH_SSI** - The scanner device connected via Bluetooth to the mobile device.

**SERIAL_SSI** - The scanner device connected via serial SSI to the mobile device.

**USB** - The scanner device connected via USB to the mobile device.

**UNDEFINED** - Connection type is not defined.

###ScannerInfo.DecoderType
This lists all the barcode types supported by scanners.

**Example Usage:**

    :::java
    DecoderType.ONE_DIMENSIONAL

**Values:**

**ONE_DIMENSIONAL** - Barcode scanning is 1-D only.

**TWO_DIMENSIONAL** - Barcode scanning is 2-D. This supports both 1-D and 2-D barcode scanning.

**UNDEFINED** - Decoder type not defined.

###ScannerInfo.DeviceType
List of supported scanner device types.

**Example Usage:**

    :::java
    DeviceType.LASER;

**Values:**

**CAMERA** - The Scanner device class is camera.

**IMAGER** - The scanner device class is imager.

**LASER** - The scanner device class is laser.

**UNDEFINED** - The scanner device class is not defined.