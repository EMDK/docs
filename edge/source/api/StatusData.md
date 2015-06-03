#StatusData

This class provides the Status detail of ScanAndPair.



##Constructors

**StatusData**



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

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###StatusData.ScanAndPairStates

Defines the different states of the scan and pir/unpair.

**Values:**

* **WAITING**

* **SCANNING**

* **DISCOVERING**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

