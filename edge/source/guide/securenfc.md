#Secure NFC Programmer’s 

##Introduction	  
The EMDK for Android provides developers with a comprehensive set of tools to easily create Secure NFC application for use with the Zebra Technologies Corporation mobility device.

##SecureNfcManager Usage 

The APIs provided by this class are used to determine the type of SAM available in the mobile device, get the instance of the SAM object, to know the type of the tag detected by the device and to get the instance of the tag type object.
The following are the prerequisites to use the SecureNfcManager APIs:
Need to insert the SAM to SIM Slot 1 in the device. 

###Android Manifest Changes
**Request NFC Access**

		:::xml
		<uses-permission android:name="android.permission.NFC" />

**Set minimum AndroidSDK version**

		:::xml
		<uses-sdk android:minSdkVersion="10"/>

**Add uses-feature element so that your application shows up in Google Play only for devices that have NFC hardware**

		:::xml
		<uses-feature android:name="android.hardware.nfc" />


**Register NFC Intent Actions**

		:::xml
		<intent-filter>
        	<action android:name="android.nfc.action.NDEF_DISCOVERED" />
        </intent-filter>

        <intent-filter>
           	 <action android:name="android.nfc.action.TAG_DISCOVERED" />
        </intent-filter>

        <intent-filter>
           	 <action android:name="android.nfc.action.TECH_DISCOVERED" />
        </intent-filter>



###Example usage

**Determine the type of SAM available on device and get the instance of MifareSam object**


		:::java
		SecureNfcManager secureNfcMgr = (SecureNfcManager) emdkManager.getInstance(FEATURE_TYPE.SECURENFC);

		if (secureNfcMgr != null) {
			try {
				if (samType.equals(SamType.MIFARE)) {
					MifarSam mifareSam = (MifareSam) secureNfcMgr.getSamInstance (samType);
				}
			} catch (SecureNfcException e) {
				e.printStackTrace();
			}
		}



**Determine the type of tag detected by the device and get the instance MifareDesfire object**
		
		:::java
		public void onNewIntent(Intent intent) {
			if (NfcAdapter.ACTION_NDEF_DISCOVERED.equals(intent.getAction())
							|| NfcAdapter.ACTION_TAG_DISCOVERED.equals(intent.getAction ())
							|| NfcAdapter.ACTION_TECH_DISCOVERED.equals(intent.getAction ())) {

				Tag lTag = intent.getParcelableExtra(NfcAdapter.EXTRA_TAG);
				if (lTag != null) {
					TagTechType tagType;
					try {
						tagType = secureNfcMgr.getTagTechType(lTag);
						if (tagType.equals(TagTechType.MIFARE_DESFIRE)) 

			MifareDesfire mMifareDesfire = (MifareDesfire)   secureNfcMgr.getTagTechInstance(tagType);

			} catch(SecureNfcException e) {
			e.printStackTrace ();
			}

##MifareSam API Usage

The APIs provided by this class are used to establish a secure connection with SAM and to do SAM to Host authentication. There is API to get the SAM information such as manufacturer Id, type, version , memory size ,compliant protocol ,UID, batch number and production date(MM/DD/YYYY).

**Host to SAM Authentication**

An important point to be considered, before using any of the tag APIs i.e., MifareDesfire or MifarePlus APIs the SAM to host authentication is mandatory. 
If not, data cannot be read/written from/to the files. Once the authentication is successful, it exists until the device is rebooted. It is recommended to close the MifareSam as soon as the authentication is done. 

###Example Usage

**Establish the secure connection from SAM to host**

		:::java
		samMode = mifareSam.connect();

		SamKey = new SamKey();
		samKey.keyNum = 0x00;
		samKey.keyVer = 0x00;

		mifareSam.authenticateSam(authKey, samKey, null);


##MifareDesfire API Usage

The APIs provided by this class are used to:

* Enable a connection with the tag
* Authenticate the applications on the tag
* Get tag information such as manufacturer Id, type, version , memory size ,compliant protocol ,UID, batch no and production details (month and year)
* Get the file settings of the files created on the tag 
* Get key settings of the keys stored on the tag
* Read/write the data from/to the standard file
* Read/write record file (linear and cyclic record)
* Read/write credit/debit integer value from the value file
* Retrieve the application Ids and file Ids created on the tag
* Determine the free memory available on the tag and etc.



###Enabling and authentication with Desfire APIs

The enable API is used to establish a connection with the tag. Without which other operations cannot be performed. The application on the tag on which I/O operations are to be performed, needs to be authenticated using the authenticate API. The tag is enabled until the connection is disabled or until a tag lost exception has occurred. After which, the connection has to enabled again by the application user.

###Performing the I/O operation on the tag

To perform any I/O operation on the tag , it has to be preceded with authentication .

**SamKey** - SamKey is the key which is stored on the MifareSam using the NXP Pegoda reader and are used for authentication purposes.

**Commit Transaction** - This transaction has to committed to validate all previous write access’ on Backup data files, Value files, and Record files within one application.

This API should be used only after executing below APIs:

* writeData() for Backup file
* credit() or debit() for Value file
* writeRecord() for Record file
* resetRecord() for Record file.

**Abort Transaction**

Abort transaction is used to invalidate all previous write access’ on Backup data files, Value files, and Record files within one application. 

This API should be used only after executing below APIs: 

* writeData() for Backup file
* credit() or debit() for Value file 
* writeRecord() for Record file
* resetRecord() for Record file.


**Reset Record**

Resets cyclic or linear record file to empty state. Preceding authentication, with key specified for Read&Write access is required. The transaction  has to be committed after reset call without which the changes will get invalidated.

###Example Usage

Authentication must occur before performing credit operation on the Value File. After calling credit(), commitTransaction() has to be called to validate all previous write access’ on value files, within one application

		:::java
		SamKey lSamKeyForReadWrite = new SamKey();
		lSamKeyForReadWrite.keyNum = 0x05;   //Samkey on MifareSam
		lSamKeyForReadWrite.keyVer = 0x00;  
		mifareDesfire.enable(lTag);

		mifareDesfire.selectApplication( application_Id);

		// Authenticating with Read&Write access key. If we authenticate
		// once with read&write access key this authentication
		// is valid for all the subsequent operations unless exception
		// has occurred or disable() call.
		
		mifareDesfire.authenticate(AuthenticateType.NATIVE,
				MifareTagConstants.CARD_KEY_FOR_READ_WRITE,
				lSamKeyForReadWrite, null);

		mifareDesfire.credit(CreditType.STANDARD,Value_File_Id,communication_type,valueTobeCredited);
						
		mifareDesfire.commitTransaction();

		mifareDesfire.disable();


Authentication must occur before performing credit operation on the Record file. The commitTransaction() has to be called after the writeRecord() to validate all previous write access’ on record files, within one application**

		:::java
		SamKey lSamKeyForReadWrite = new SamKey();
		lSamKeyForReadWrite.keyNum = 0x05;   //Samkey on MifareSam
		lSamKeyForReadWrite.keyVer = 0x00;  
		mifareDesfire.enable(lTag);

		mifareDesfire.selectApplication( application_Id);

 		// Authenticating with Read&Write access key. If we authenticate
		// once with read&write access key this authentication
		// is valid for all the subsequent operations unless exception
		// has occurred or disable() call.
				
		mifareDesfire.authenticate(AuthenticateType.NATIVE,
						MifareTagConstants.CARD_KEY_FOR_READ_WRITE,
						lSamKeyForReadWrite, null);
		
		mifareDesfire.writeRecord(RECORD_FILE_ID, CommunicationType,0, RECORD_SIZE,dataToBeWritten);
						
		mifareDesfire.commitTransaction();

		mifareDesfire.disable();

















