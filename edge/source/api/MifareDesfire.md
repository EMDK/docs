#MifareDesfire

Provides access to MIFARE DESFire properties and I/O operations on an IsoDep
 Tag object.



**Example Usage:**
	
	:::java	
	  
	 public class MainActivity  extends Activity implements EMDKListener {
	
	             SecureNfcManager secureNfcManager;
	             EMDKManager emdkManager;
	  		    SamType samType;
	  			MifareDesfire mifareDesfire;
	             @Override
	             protected void onCreate(Bundle savedInstanceState) {
	
	                EMDKResults results = EMDKManager.getEMDKManager(getApplicationContext(), this);
	             }
	
	             @Override
	             public void onOpened(EMDKManager emdkManager) {
	
	   			this.emdkManager = emdkManager;
	
	  			 this.secureNfcManager = (secureNfcManager)
	 							this.emdkManager.getInstance(FEATURE_TYPE.SECURENFC);
	
	 					if(this.secureNfcManager != null){
	
	 						try{
	
	 						samType = secureNfcManager.getAvailableSam();
	
	 						} catch (SecureNfcException e) {
	
	             				e.printStackTrace();
	             			}
	
	 						if (samType.equals(SamType.MIFARE)) {
	
	 						mifareSam = (MifareSam) secureNfcMgr.getSamInstance(samType);
	
	  						}
	
	            				if(mifareSam != null){
	
	 							try {
	                        		SamMode samMode = mifareSam.connect();
	
	                        		SamKey samKey = new SamKey();
	 								samKey.keyNum = 0x00;
	 								samKey.keyVer = 0x00;
	
	 							mifareSam.authenticateSam(authKey, samKey,null);
	
	 							mifareSam.close();
	
	 							} catch (MifareSamException e) {
	 								e.printStackTrace();
	       					  }
	  					}
	  				}
	             }
	
	
	       public void onNewIntent(Intent intent) {
	
	 				if (intent != null)
	 					tagDetection(intent);
	 			}
	
	 		private void tagDetection(Intent intent) {
	
	 		if (NfcAdapter.ACTION_NDEF_DISCOVERED.equals(intent.getAction())
	 				|| NfcAdapter.ACTION_TAG_DISCOVERED.equals(intent.getAction())
	 				|| NfcAdapter.ACTION_TECH_DISCOVERED.equals(intent.getAction())) {
	
	 			 lTag	 = intent.getParcelableExtra(NfcAdapter.EXTRA_TAG);
	
	 				try {
	
	 				TagTechType tagType = secureNfcMgr.getTagTechType(lTag);
	
	 				if (tagType.equals(TagTechType.MIFARE_DESFIRE)) {
	
	 				mifareDesfire = (MifareDesfire) secureNfcMgr.getTagTechInstance(tagType);
	
	 					try {
	 							if (!mifareDesfire.isEnabled()) {
	
	 								mifareDesfire.enable(lTag);
	 							}
	
	 						} catch (MifareDesfireExpection e) {
	 							e.printStackTrace();
	 						}
	
	 				}
	
	 			} catch (SecureNfcException e) {
	
	 				e.printStackTrace();
	 			}
	
	
	 			}
	 		}
	
	 		 @Override
	       public void onDestroy() {
	
	          		if (mifareDesfire != null) {
	 			try {
	 				mifareDesfire.disable();
	
	 			} catch (MifareDesfireExpection e) {
	
	 				e.printStackTrace();
	 			}
	
	 		}
	 			 if(this.emdkManager != null)
	               this.emdkManager.release();
	 				}
	
	        @Override
	        public void onClosed() {
	              this.emdkManager.release();
	             }
	
	
	 	}


##Public Methods

### enable

**public void enable( tag)**

Enable I/O operations to tfhe tag from IsoDep object and SAM
 communication. May cause RF activity and may block. Must not be called
 from the main application thread. A blocked call will be canceled with
 MiFareDesfireExpection by calling close() from another thread. Only one
 TagTechnology object can be connected to a Tag at a time. Applications
 must call close() when I/O operations are complete.On Tag lost connection
 needs to re-established by calling enable API in the application.

**Parameters:**

tag - Contactless tag already detected by device. We get this
            through the EXTRA_TAG information from the intent.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to enable the tag.

### disable

**public void disable()**

Disables I/O operations to the tag from IsoDep object and SAM
 communication. Also causes all blocked I/O operations on other thread to
 be canceled and return with MiFareDesfireExpection.On Tag lost connection
 needs to re-established by calling enable API in the application.This is
 a synchronous call.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to disable the tag.

### authenticate

**public void authenticate(MifareDesfire.AuthenticateType authType,  cardKeyNum, SamKey samkey, SamDiverseParams samDiverseParams)**

Authenticates card master key and application key by using SAM This is an
 I/O operation and will block until complete. It must not be called from
 the main application thread. A blocked call will be canceled with
 IOException if close() is called from another thread.On Tag lost
 connection needs to re-established by calling enable API in the
 application.

**Parameters:**

authType - Type of authentication to be used.

cardKeyNum - Card key number to be used for authentication. Valid range is
            from 0x00 to 0x0D.

samkey - SAM key to be used for authentication.

samDiverseParams - Diversification parameters for current key. If diversification
            is not required by current key then this parameter should be
            NULL. This is not supported

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to authenticate the
             tag.

### getKeyVersion

**public byte getKeyVersion( keyNum)**

Retrieves current version of specified card key.On Tag lost connection
 needs to re-established by calling enable API in the application.This is
 a synchronous call.

**Parameters:**

keyNum - Key number to retrieve version information.


            <p>
            <blockquote>

            <pre>
  {@code
   Example Usage:

    mifareDesfire.selectApplication(APP_ID);

     mifareDesfire.getKeyVersion(keynum);

 </pre>

            </blockquote>

**Returns:**

byte

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to retrieves current
             version of specified card key.

### getApplicationIDs

**public int getApplicationIDs()**

Retrieves AIDs of all active card applications.On Tag lost connection
 needs to re-established by calling enable API in the application.This is
 a synchronous call.

 

**Example Usage:**
	
	:::java	
	
	int[] getAppIDs =  mifareDesfire.getApplicationIDs();
	
	</pre>
	
	


**Returns:**

int

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to retrieves AIDs of
             all active card applications.

### getFreeMemory

**public int getFreeMemory()**

Gets total number of free user memory bytes available on card.On Tag lost
 connection needs to re-established by calling enable API in the
 application.This is a synchronous call.

**Returns:**

int

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to get the total
             free memory available on the tag.

### getDFNames

**public DFNames getDFNames()**

Retrieves the ISO 7816-4 DF names of all active card applications.On Tag
 lost connection needs to re-established by calling enable API in the
 application.This is a synchronous call.


 

**Example Usage:**
	
	:::java	
	
	DFNames dfnames[] = mifareDesfire.getDFNames();
	
	</pre>
	
	


**Returns:**

com.symbol.emdk.securenfc.MifareDesfire.DFNames

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to retrieves the ISO
             7816-4 DF names of all active card applications.

### getKeySettings

**public KeySettings getKeySettings()**

Retrieves master key settings and application key settings of selected
 card application or card.On Tag lost connection needs to re-established
 by calling enable API in the application.This is a synchronous call.

 

**Example Usage:**
	
	:::java	
	
	mifareDesfire.selectApplication(APP_ID);
	
	KeySettings keySettings = mifareDesfire.getKeySettings();
	
	</pre>
	
	


**Returns:**

com.symbol.emdk.securenfc.MifareDesfire.KeySettings

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to retrieves master
             key settings and application key settings of selected card
             application or card.

### selectApplication

**public void selectApplication( appID)**

Selects specified card application.On Tag lost connection needs to
 re-established by calling enable API in the application.This is a
 synchronous call.

**Parameters:**

appID - AID of application to be selected.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection



### getCardVersion

**public CardVersionInfo getCardVersion()**

Retrieves card version information such manufacturing, software and
 production related information.On Tag lost connection needs to
 re-established by calling enable API in the application.This is a
 synchronous call.

**Returns:**

com.symbol.emdk.securenfc.MifareDesfire.CardVersionInfo

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to retrieves card
             version information such manufacturing, software and
             production related information.

### getFileIDs

**public int getFileIDs(MifareDesfire.FileIDType fileIDType)**

Retrieves native file IDs or ISO 7816-4 file IDs of active files within
 the currently selected application.On Tag lost connection needs to
 re-established by calling enable API in the application.This is a
 synchronous call.

**Parameters:**

fileIDType - Type of file IDs to be retrieved.


            <p>
            <blockquote>

            <pre>
 {@code
  Example Usage:


  mifareDesfire.selectApplication(APP_ID);

 int[] getFileIDs= mifareDesfire.getFileIDs(FileIDType.NATIVE or FileIDType.ISO7816);

 </pre>

            </blockquote>

**Returns:**

int

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to retrieves native
             file IDs or ISO 7816-4 file IDs of active files within the
             currently selected application.

### getFileSettings

**public FileSettings getFileSettings( fileID)**

Retrieves file settings (properties) of specified file.On Tag lost
 connection needs to re-established by calling enable API in the
 application.

**Parameters:**

fileID - ID of file whose settings are to be retrieved. Should be
            within range 0x00-0x1F.

            <p>
            <blockquote>

            <pre>
              {@code
                 Example Usage:

                mifareDesfire.selectApplication(APP_ID);

 				FileSettings fileSettings = getFileSettings(fileID)

 </pre>

            </blockquote>

**Returns:**

com.symbol.emdk.securenfc.MifareDesfire.FileSettings

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to retrieves file
             settings (properties) of specified file.

### readData

**public byte readData( fileID, MifareDesfire.FileCommMode fileCommMode,  readOffset,  bytesToBeRead)**

Reads data from standard data or backup data file. Depending on
 communication settings of file, data read from card will be either plain
 or enciphered. Preceding authentication, either with the keys specified
 for Read or Read&Write access is required.On Tag lost connection needs to
 re-established by calling enable API in the application.

 

**Parameters:**

fileID - ID of standard or backup data file to be read. Should be
            within range 0x00-0x1F.

fileCommMode - File communication mode.

readOffset - File offset from which data is to be read. Should be within
            range 0x00 to (file size - 1)

bytesToBeRead - Number of bytes to be read. Should be within range
            0x00000000-0x00FFFFFF. To read all the data from the specified
            offset

**Returns:**

byte

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to read the data
             from the file.

### writeData

**public void writeData( fileID, MifareDesfire.FileCommMode fileCommMode,  writeOffset,  writeDataBuffer)**

Writes data to standard or backup data file. Preceding authentication,
 either with the keys specified for Write or Read&Write access is
 required. Should be succeeded by commitTransaction() which validates all
 previous write access on data files without which the changes will get
 invalidated.On Tag lost connection needs to re-established by calling
 enable API in the application. The exception will be thrown if it fails
 to write the data to the file.

 

**Parameters:**

fileID - ID of standard or backup data file to be written. Should be
            within range 0x00-0x1F.

fileCommMode - File communication mode

writeOffset - File offset at which data is to be written. Should be within
            range 0x00 to (file size - 1).

writeDataBuffer - Buffer having data to be written.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection



### getValue

**public int getValue( fileID)**

Retrieves value stored in value file.On Tag lost connection needs to
 re-established by calling enable API in the application.

**Parameters:**

fileID

**Returns:**

int

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to retieve the value
             from the value file.

### credit

**public void credit(MifareDesfire.CreditType creditType,  fileID, MifareDesfire.FileCommMode fileCommMode,  value)**

Increases a value stored in a value file with specified value.Depending
 on communication settings of file, data read from card will be either
 plain or enciphered. Preceding authentication, either with the keys
 specified for Credit or Read&Write access is required.On Tag lost
 connection needs to re-established by calling enable API in the
 application.

 

**Parameters:**

creditType - Credit type should be normal or limited.

fileID - Value file to credited. Should be within range 0x00-0x1F.

fileCommMode - File communication mode.

value - Value by which currently stored value should be increased.
            Only positive values are allowed.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to credit the value
             from the value file.

### debit

**public void debit( fileID, MifareDesfire.FileCommMode fileCommMode,  value)**

Decreases value stored in a value file with specified value.Depending on
 communication settings of file, data read from card will be either plain
 or enciphered. Preceding authentication, either with the keys specified
 for Debit or Read&Write access is required.On Tag lost connection needs
 to re-established by calling enable API in the application.

 

**Parameters:**

fileID - Value file to be debited. Should be within range 0x00-0x1F.

fileCommMode - File communication mode.

value - Value by which currently stored value should be decreased.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to debit the value
             from the value file.

### readRecord

**public byte readRecord( fileID, MifareDesfire.FileCommMode fileCommMode,  recordOffset,  recordsToBeRead)**

Reads records from cyclic or linear record file.Depending on
 communication settings of file, data read from card will be either plain
 or enciphered. Preceding authentication, either with the keys specified
 for Read or Read&Write access is required.On Tag lost connection needs to
 re-established by calling enable API in the application.

 

**Parameters:**

fileID - Linear or cyclic file to be read. Should be within range
            0x00-0x1F.

fileCommMode - File communication mode.

recordOffset - Record number from which read should start. Should be within
            range 0x00000000 to (existing records - 1).

recordsToBeRead - Number of records to be read. Should be within range
            0x00000000  (existing records - offset). To read all the
            records from the specified offset

**Returns:**

byte

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to read the data
             from the record.

### writeRecord

**public void writeRecord( fileID, MifareDesfire.FileCommMode fileCommMode,  recordOffset,  recordSize,  writeRecordBuffer)**

Writes records to cyclic or linear record file. Depending on
 communication settings of file, data read from card will be either plain
 or enciphered. Preceding authentication, either with the keys specified
 for Write or Read&Write access is required.The commitTransaction() must
 be called after this call which validates all previous write access on
 record files without which the changes will get invalidated.On Tag lost
 connection needs to re-established by calling enable API in the
 application.

 

**Parameters:**

fileID - Linear or cyclic file to be written. Should be within range
            0x00-0x1F.

fileCommMode - File communication mode

recordOffset - Record number from which write should start. Should be within
            range 0x00000000 to (records - 1).

recordSize - Size of each record

writeRecordBuffer - The buffer to be written

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to write the data to
             the record.

### resetRecord

**public void resetRecord( fileID)**

Resets cyclic or linear record file to empty state. Preceding
 authentication, with key specified for Read&Write access is required.The
 commitTransaction() must be called after this call.On Tag lost connection
 needs to re-established by calling enable API in the application.

 

**Parameters:**

fileID - Cyclic or linear file to be cleared. Should be within range
            0x00-0x1F.

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to reset the record
             on the tag.

### commitTransaction

**public void commitTransaction()**

Validates all previous write access on Backup data files, Value files,
 and Record files within one application. This API should be used only
 after executing below APIs: writeData() for Backup file credit() or
 debit() for Value file writeRecord() for Record file resetRecord() for
 Record file.On Tag lost connection needs to re-established by calling
 enable API in the application.

 

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to commit the
             transaction on the tag.

### abortTransaction

**public void abortTransaction()**

Invalidates all previous write access on Backup data files, Value files,
 and Record files within one application. This API should be used only
 after executing below APIs: writeData() for Backup file credit() or
 debit() for Value file writeRecord() for Record file resetRecord() for
 Record file.On Tag lost connection needs to re-established by calling
 enable API in the application.

 

**Returns:**

void

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if it fails to abort the
             transaction on the tag.

### isEnabled

**public boolean isEnabled()**

Checks if the connection with the tag is enabled or not.

**Returns:**

boolean

**Throws:**

com.symbol.emdk.securenfc.MifareDesfireExpection

The exception will be thrown if the emdk is not opened.

##Public Enums

###MifareDesfire.FileCommMode

File Communication Mode.

**Values:**

* **PLAIN**

* **MACED**

* **ENCIPHERED**

###MifareDesfire.CreditType

.

**Values:**

* **STANDARD**

* **LIMITED**

###MifareDesfire.FileIDType

.

**Values:**

* **NATIVE**

* **ISO7816**

###MifareDesfire.AuthenticateType

Authentication mode.

**Values:**

* **NATIVE**

* **ISO**

* **AES**

