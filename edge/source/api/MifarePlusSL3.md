#MifarePlusSL3

Provides access to Mifare Plus tag in security level 3 and I/O operations on
 an IsoDep Tag object. This class encapsulates all the methods required for
 communicating with the IsoDep tag using the tag technology protocol.


 

##Public Methods

### enable

**public void enable(Tag tag)**

Enable I/O operations to the tag from IsoDep object and SAM
 communication. May cause RF activity and may block. Must not be called
 from the main application thread. A blocked call will be canceled with
 MifarePlusSL3Exception by calling close() from another thread. Only one
 TagTechnology object can be connected to a Tag at a time. Applications
 must call close() when I/O operations are complete.

**Parameters:**

tag - Contactless tag already detected by device. We get this
            through the EXTRA_TAG information from the intent.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to enable the tag.

### disable

**public void disable()**

Disables I/O operations to the tag from IsoDep object, closes connection
 to SAM, and releases resources. Also causes all blocked I/O operations on
 other thread to be canceled and return with MifarePlusSL3Exception.This is a
 synchronous call.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to disable the tag.

### firstAuthentication

**public byte firstAuthentication(short keyBlockNo, SamKey samkey, byte samDiverseParams, byte pcdCap2)**

Performs First authentication on specified block number using SAM key.

 

**Parameters:**

keyBlockNo - Key Block Number of the block to be authenticated.(range
            0x4000 to 0x404F depending card size). keyBlockNo represent a
            key in the card which is the same key that SamKey represent in
            the SAM.

samkey - SAM key to be used for authentication. Only AES key should be
            used.

samDiverseParams - Diversification parameters for current key. If present

pcdCap2 - Capabilities of PCD. If present

**Returns:**

byte

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to perform firstAuthentication on the tag.


 

**Example Usage:**
	
	:::java	
	SamKey lSamKey = new SamKey();
	lSamKey.keyNum = 0x10;
	lSamKey.keyVer = 0x00;
	mifarePlusSl3.firstAuthentication(blockNo_of_the_key,lSamKey, null, null);
	


### followingAuthentication

**public void followingAuthentication(short keyBlockNo, SamKey samkey, byte samDiverseParams)**

Performs Following authentication on specified block number using SAM
 key. This authentication should be performed after successful First
 authentication.

 

**Parameters:**

keyBlockNo - Key Block Number of the block to be authenticated.(range
            0x4000 to 0x404F depending card size) . keyBlockNo represent a
            key in the card which is the same key that SamKey represent in
            the SAM.

samkey - SAM key to be used for authentication. Only AES key should be
            used.

samDiverseParams - Diversification parameters for current key. If present

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to perform followingAuthentication on the tag.

 

**Example Usage:**
	
	:::java	
	SamKey lSamKey = new SamKey();
	lSamKey.keyNum = 0x10;
	lSamKey.keyVer = 0x00;
	byte[] rawdata = mifarePlusSl3.firstAuthentication(
	blockNo_of_the_key,
	lSamKey, null, null);
	mifarePlusSl3,followingAuthentication(
	blockNo_of_the_key,
	lSamKey, null);
	


### resetAuthentication

**public void resetAuthentication()**

Resets authentication status of card. After execution of this method,
 card will not be in an authenticated state. Hence host must authenticate
 card before further communication. *
 

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to perform resetAuthentication on the tag.

### readBlock

**public byte readBlock(boolean isEncrypted, boolean macOnCmd, boolean macOnResponse, short blockNumber, short numOfBlocks)**

Reads specified number of blocks starting from specified block number.

**Parameters:**

isEncrypted - false: Communication between device and card will be plain
            true: Communication between device and card will be encrypted

macOnCmd - false: Command sent to card will not be MACed true: Command
            sent to card will be MACed

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

blockNumber - Card block number from which multiple blocks have to be read.
            (range 0x00 to 0xFF depending card size)

numOfBlocks - Number of blocks to be read. Maximum of 216 blocks can be
            read

**Returns:**

byte

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to read the data from the block.

             Note: 1. The specified blocks must be authenticated before
             calling the read, otherwise the read will fail. 2. If
             specified blocks are located in different sectors and are not
             authenticated with same key, then also read will fail. 3.
             Mifare Plus S tag supports only below values of parameters
             (as per datasheet): encrypted: false macOnCmd: true
             macOnResponse: true 4. Parameter macOnCmd: Value false is not
             allowed for Mifare Plus X, hence user should pass true.

 

**Example Usage:**
	
	:::java	
	SamKey lSamKey = new SamKey();
	lSamKey.keyNum = 0x10;
	lSamKey.keyVer = 0x00;
	mifarePlusSl3.firstAuthentication(
	blockNo_of_the_key,
	lSamKey, null, null);
	byte[] data =  mifarePlusSl3.readBlock(true, true, true,
	BLOCK_NO, NumberOfBlocksToBeRead);
	


### writeBlock

**public void writeBlock(boolean encrypted, boolean macOnResponse, short blockNo, byte blockData)**

Writes specified number of blocks starting from specified block number.

**Parameters:**

encrypted - false: Communication between device and card will be plain
            true: Communication between device and card will be encrypted

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

blockNo - Card block number from which multiple blocks have to be
            written(range 0x00 to 0xFF depending card size)

blockData - Data to be written. Maximum of upto 3 blocks can be written

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to write the data to the block.

             Note: 1. The specified blocks must be authenticated before
             calling the write, otherwise the write will fail. 2. If
             specified blocks are located in different sectors and are not
             authenticated with same key, then also write will fail. 3.
             Mifare Plus S tag supports only below values of parameters
             (as per datasheet): encrypted: false macOnCmd: true macOnRsp:
             true



 

**Example Usage:**
	
	:::java	
	SamKey lSamKey = new SamKey();
	lSamKey.keyNum = 0x10;
	lSamKey.keyVer = 0x00;
	mifarePlusSl3.firstAuthentication(
	blockNo_of_the_key,
	lSamKey, null, null);
	mifarePlusSl3.writeBlock(true, true,
	BLOCK_NO, dataToBeWritten);
	


### isValueBlock

**public boolean isValueBlock(boolean macOnResponse, short blockNumber)**

Validates whether specified block is value block or not.This call should
 be preceded with the first authentication.

**Parameters:**

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

blockNumber - Block number to be validated

**Returns:**

boolean

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to perform the value block check on the given block number.


 

**Example Usage:**
	
	:::java	
	SamKey lSamKey = new SamKey();
	lSamKey.keyNum = 0x10;
	lSamKey.keyVer = 0x00;
	mifarePlusSl3.firstAuthentication(
	blockNo_of_the_key,
	lSamKey, null, null);
	boolean value= mifarePlusSl3.isValueBlock(false,BLOCK_NO);
	


### readValue

**public int readValue(boolean encrypted, boolean macOnCmd, boolean macOnResponse, short blockNumber)**

Reads value from specified value block.This call should be preceded with
 the first authentication.

**Parameters:**

encrypted - false: Communication between device and card will be plain
            true: Communication between device and card will be encrypted

macOnCmd - false: Command sent to card will not be MACed true: Command
            sent to card will be MACed

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

blockNumber - Card value block number to be read. (range 0x00 to 0xFF
            depending card size)

**Returns:**

int

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to read the value from the block.

             Note: 1. If sector of specified value block is not already
             authenticated then readValue will fail. 2. If specified block
             is not value block then readValue will fail. 3. Mifare Plus S
             tag supports only these values of parameters (as per
             datasheet): encrypted: false macOnCmd: true macOnRsp: true


 

**Example Usage:**
	
	:::java	
	SamKey lSamKey = new SamKey();
	lSamKey.keyNum = 0x10;
	lSamKey.keyVer = 0x00;
	mifarePlusSl3.firstAuthentication(
	blockNo_of_the_key,
	lSamKey, null, null);
	int value = mifarePlusSl3.readValue(false, true,
	true, VALUE_BLOCK_NO);
	


### writeValue

**public void writeValue(boolean encrypted, boolean macOnResponse, short blockNumber, int value)**

Writes value to a specified value block.This call should be preceded with
 the first authentication.

**Parameters:**

encrypted - false: Communication between device and card will be plain
            true: Communication between device and card will be encrypted

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

blockNumber - Card value block number to be written(range 0x00 to 0xFF
            depending card size)

value - Value to be written

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to write the value to the block.

             Note: 1. If sector of specified block is not already
             authenticated then writeValue will fail. 2. This API should
             be called when the specified data block to value block 3. To
             perform operation on value block such as
             increment(),incrementTransfer(),
             decrementTransfer(),decrement(),transfer(),restore(), we need
             to call API writeValue() first. 4. Mifare Plus S tag supports
             only these values of parameters (as per datasheet):
             encrypted: false macOnCmd: true macOnResponse: true.


 

**Example Usage:**
	
	:::java	
	SamKey lSamKey = new SamKey();
	lSamKey.keyNum = 0x10;
	lSamKey.keyVer = 0x00;
	mifarePlusSl3.firstAuthentication(
	blockNo_of_the_key,
	lSamKey, null, null);
	mifarePlusSl3.writeValue(false,true, VALUE_BLOCK_NO,
	Value_To_Be_Written);
	


### increment

**public void increment(boolean macOnResponse, short blockNumber, int value)**

Increments contents of given value block by specified value and stores
 result in transfer buffer. Content of specified value block will not be
 affected, until transfer() is called.This call should be preceded with
 the first authentication.

**Parameters:**

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

blockNumber - Card value block to be incremented(range 0x00 to 0xFF
            depending card size)

value - Value to be incremented

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to increment the value in the block.

             Note: 1. If sector of specified value block is not already
             authenticated then increment will fail. 2. If specified block
             is not value block then increment will fail.


 

**Example Usage:**
	
	:::java	
	SamKey lSamKey = new SamKey();
	lSamKey.keyNum = 0x10;
	lSamKey.keyVer = 0x00;
	mifarePlusSl3.firstAuthentication(
	blockNo_of_the_key,
	lSamKey, null, null);
	mifarePlusSl3.increment(true,VALUE_BLOCK_NO,
	value);
	mifarePlusSl3.transfer(true,VALUE_BLOCK_NO);
	


### decrement

**public void decrement(boolean macOnResponse, short blockNumber, int value)**

Decrements contents of given value block by specified value and stores
 result in transfer buffer. Content of specified value block will not be
 affected, until transfer() is called.This call should be preceded with
 the first authentication.

**Parameters:**

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

blockNumber - Card value block to be decremented(range 0x00 to 0xFF
            depending card size)

value - Value to be decremented

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to decrement the value in the block.

             Note: 1. If sector of specified value block is not already
             authenticated then decrement will fail. 2. If specified block
             is not value block then decrement will fail.

### restore

**public void restore(boolean macOnResponse, short blockNumber)**

Restores transfer buffer i.e. copies contents of specified value block to
 transfer buffer.

**Parameters:**

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

blockNumber - Card value block to be decremented(range 0x00 to 0xFF
            depending card size)

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to restore the value from the block to the transfer buffer.

             Note: 1. If sector of specified value block is not already
             authenticated then restore will fail. 2. If specified block
             is not value block then restore will fail.

### transfer

**public void transfer(boolean macOnResponse, short blockNumber)**

Transfers contents of value block stored in transfer buffer to specified
 block.

**Parameters:**

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

blockNumber - Card block whose contents is replaced by transfer buffer(range
            0x00 to 0xFF depending card size).

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to transfer the value from the transferbuffer to the block.

             Note: 1. If sector of specified value block is not already
             authenticated then transfer will fail. 2. If specified block
             is not value block then transfer will fail.

### incrementTransfer

**public void incrementTransfer(boolean macOnResponse, short srcblockNumber, short destBlockNumber, int value)**

Performs combined operation of increment() and transfer() on specified
 value block. It stores value of source value block in transfer buffer
 after adding given value and then copies contents of transfer buffer to
 destination block.

**Parameters:**

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

srcblockNumber - Source block for increment

destBlockNumber - Destination block for transfer

value - Value to be added

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to do incrementTransfer on the block.

             Note: 1. If sector of specified value block is not already
             authenticated then API will fail. 2. If source block is not
             value block then API will fail.

 

**Example Usage:**
	
	:::java	
	SamKey lSamKey = new SamKey();
	lSamKey.keyNum = 0x10;
	lSamKey.keyVer = 0x00;
	mifarePlusSl3.firstAuthentication(
	blockNo_of_the_key,
	lSamKey, null, null);
	mifarePlusSl3.incrementTransfer(true, VALUE_BLOCK_NO, VALUE_BLOCK_NO
	value);
	


### decrementTransfer

**public void decrementTransfer(boolean macOnResponse, short srcblockNumber, short destBlockNumber, int value)**

Performs combined operation of decrement() and transfer() on specified
 value block. It stores value of source value block in transfer buffer
 after subtracting given value from it and then copies contents of
 transfer buffer to destination block.

**Parameters:**

macOnResponse - false: Response received from card will not be MACed true:
            Response received from card will be MACed

srcblockNumber - Source block for increment

destBlockNumber - Destination block for transfer

value - Value to be subtracted

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if it fails to do decrementTransfer on the block.

             Note: 1. If sector of specified value block is not already
             authenticated then API will fail. 2. If source block is not
             value block then API will fail.

### isEnabled

**public boolean isEnabled()**

Checks if the connection with the tag is enabled or not.This is a
 synchronous call.

**Returns:**

boolean

**Throws:**

com.symbol.emdk.securenfc.MifarePlusSL3Exception

The exception will be thrown if the emdk is not opened.

