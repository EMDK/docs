#EMDKManager

The EMDKManager class is the key class in Android EMDK. This class provides access to different classes for the supported features. Clients should call EMDKManager.getEMDKManager(Context, EMDKManager.EMDKListener), to get the EMDKManager object. Each application implements EMDKListener interface. The EMDKManager object will be returned on successful opening through the EMDKListener callback.

**Example Usage:**

	:::java
	EMDKResults results = EMDKManager.getEMDKManager(getApplicationContext(), emdkListener);


**Version:**

1.0

##Public Methods
###getEMDKManager(Context context, EMDKManager.EMDKListener emdkListener)
This is static method and it is the key function to get the EMDKManager object. Clients must implement [EMDKManager.EMDKListener](EMDKManager.EMDKListener) to get notified of the EMDK manager status and to get the EMDKManager object.

**Example Usage:**

	:::java
	EMDKResults results = EMDKManager.getEMDKManager(getApplicationContext(), emdkListener);


**Parameters:**

**context** - The application context should be provided by the user.
**emdkListener** - The EMDK Listener for listener callbacks.

**Returns:**
com.symbol.emdk.EMDKResults - [EMDKResults](EMDKResults) object.

###getInstance(EMDKManager.FEATURE_TYPE featureType)
This method returns an object instance which has derived from [EMDKBase](EMDKBase). Based on the type given, the object needs to be type-casted before used. Calling this method [EMDKManager.getInstance(FEATURE_TYPE)](#getInstance(EMDKManager.FEATURE_TYPE featureType)) before EMDKManager opened will return null.

**Example Usage:**

	:::java
	@Override
	public void onOpened(EMDKManager emdkmanager)
	{
	ProfileManager profileManager = (ProfileManager)emdkmanager.getInstance(FEATURE_TYPE.PROFILE);
	VersionManager versionManager = (VersionManager)emdkmanager.getInstance(FEATURE_TYPE.VERSION);
	BarcodeManager barcodeManager = (BarcodeManager)emdkmanager.getInstance(FEATURE_TYPE.BARCODE); 
	}


**Parameters:**

**featureType** - The [EMDKManager.FEATURE_TYPE](EMDKManager.FEATURE_TYPE) the object to be created.

**Returns:**

com.symbol.emdk.EMDKBase - Object derived from [EMDKBase](EMDKBase) to be type-casted to the appropriate type. Currently [ProfileManager](ProfileManager), [VersionManager](VersionManager) and [BarcodeManager](BarcodeManager) are returned based on the [EMDKManager.FEATURE_TYPE](EMDKManager.FEATURE_TYPE) given in.

###release()
This method releases all the resources constructed by EMDKManager. EMDKManager can't be used after this call. The clients should call this method only before exiting the application.

**Example Usage:**

	:::java
	emdkManager.release();


**Returns:**

void

###release(EMDKManager.FEATURE_TYPE featureType)
This method releases resources of a given manager type. Instance variable is not required as multiple instances are not allowed by design.

**Example Usage:**

	:::java
	emdkManager.release(EMDKManager.FEATURE_TYPE.PROFILE);


**Parameters:**

**featureType** - Type of [EMDKManager.FEATURE_TYPE](EMDKManager.FEATURE_TYPE) to be released. Only the given feature related manager will be cleared if it has been constructed.

**Returns:**

void

##Public Enums
###FEATURE_TYPE
This lists all the features exposed by the EMDK.

**Example Usage:**

	:::java
	FEATURE_TYPE.PROFILE


**Values:**

**PROFILE** - EMDK feature type profile

**VERSION** - EMDK feature type version

**BARCODE** - EMDK feature type for Barcode Scanning

**SCANANDPAIR** - EMDK feature type for ScanAndPair

**SIMULSCAN** - EMDK feature type for SimulScan & Document Capture