#ScanAndPair.StatusData

This class provides the Status detail of ScanAndPair.


##Constructor
###StatusData()


##Public Methods
###getState()
State of the scanAndPair or scanAndUnpair method.

**Returns:**

com.symbol.emdk.scanandpair.[StatusData.ScanAndPairStates](ScanAndPairStatusData#StatusData.ScanAndPairStates)

###getResult()
When the state is ERROR, this method can be used to find out the exact error information.

**Returns:**

[ScanAndPairResults](ScanAndPairManager#ScanAndPairResults)


##Public Enums
###StatusData.ScanAndPairStates
Defines the different states of the scan and pair/unpair.

**Values:**

**WAITING** - Scanner is waiting for hard trigger press

**SCANNING** - Scanner beam is on and it is acquiring data

**DISCOVERING** - Discovering the Bluetooth device to be paired

**PAIRED** - The Bluetooth device is paired.

**UNPAIRED** - The Bluetooth device is unpaired

**ERROR** - Error occurred during the scan and pair or unpair. Call StatusData.getResult() for error information

**UNDEFINED** - Undefined. This is the initial state