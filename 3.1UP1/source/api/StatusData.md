#StatusData

This class provides the Status detail of ScanAndPair.

##Constructors

###StatusData



##Public Methods

### getState

**public ScanAndPairStates getState()**

State of the scanAndPair or scanAndUnpair method.

**Returns:**

com.symbol.emdk.scanandpair.StatusData.ScanAndPairStates

### getResult

**public ScanAndPairResults getResult()**

When the state is ERROR, this method can be used to find out the
 exact error information.

**Returns:**

com.symbol.emdk.scanandpair.ScanAndPairResults

##Public Enums

###StatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE** -Scanner is enabled but no reads are pending.

* **WAITING** -Scanner has issued reads request and is waiting for trigger event.

* **SCANNING** -Scanner beam is on and it is acquiring data.

* **DISABLED** -Scanner is not enabled.

* **ERROR** -An error has occurred.

###StatusData.ScanAndPairStates

Defines the different states of the scan and pir/unpair.

**Values:**

* **WAITING** -Scanner is waiting for hard trigger press

* **SCANNING** -Scanner beam is on and it is acquiring data.

* **DISCOVERING** -Discovering the Bluetooth device to be paired.

* **PAIRED** -The Bluetooth device is paired.

* **UNPAIRED** -The Bluetooth device is unpaired.

* **ERROR** -Error occurred during the scan and pair or unpair.
  Call StatusData .getResult() for error information.

* **UNDEFINED** -Undefined. This is the initial state.

