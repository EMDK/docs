#ScanAndPairConfig

The ScanAndPairConfig class provides a way to configure the settings to use it in scanAndPair() or scanAnUnpair() methods.



##Public Methods

### resetToDefaults

**public void resetToDefaults()**

Resets all config to default values.

**Returns:**

void

##Public Fields

###alwaysScan

Specifies if a scan should always be performed to get the Bluetooth address
 or name of the remote device. If set to true, the provided mBluetoothInfo.mDeviceName or
 mBluetoothInfo.mDeviceAddress properties are ignored and scanning is always done. If set to false,
 then scanning is skipped and the provided mBluetoothInfo.Address or mBluetoothInfo.Name properties
 are directly used for pairing.

**Type:**

java.lang.Boolean

###bluetoothInfo

Specifies the Bluetooth related information. The settings provided through this object are used
 for pairing/unpairing.

**Type:**

com.symbol.emdk.scanandpair.ScanAndPairConfig.BluetoothInfo

###notificationType

Specifies the notification related information. When using the ScanAndPair() and ScanAndUnPair() methods,
 notifications can be provided to the user to indicate the progress of the operation. This object provides
 access to the settings for the notifications. The default value for NotificationType is BEEPER.
 For more information on notifications refer to the NotificationType class.

**Type:**

com.symbol.emdk.scanandpair.ScanAndPairConfig.NotificationType

###scanInfo

Specifies the scanning related information. The settings provided through this object are used for scanning
 the barcode. It also exposes the scanned data. NOTE: The maximum allowed length of the barcode that can be
 scanned is 123 characters.

**Type:**

com.symbol.emdk.scanandpair.ScanAndPairConfig.ScanInfo

##Public Enums

###ScanAndPairConfig.NotificationType

This enum is used by the ScanAndPairTool class.

**Values:**

* **BEEPER**

* **NONE**

###ScanAndPairConfig.ScanDataType

Provides the different types of barcode data to be scanned.

**Values:**

* **MAC_ADDRESS**

* **DEVICE_NAME**

* **UNSPECIFIED**

###ScanAndPairConfig.DeviceIdentifier

Provides the list of DeviceIdentifier types.

**Values:**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

* **INTERNAL_LASER1**

* **BLUETOOTH_IMAGER1**

* **DEFAULT**

###ScanAndPairConfig.TriggerType

Provides the list of supported trigger types.

**Values:**

* **SOFT**

* **HARD**
