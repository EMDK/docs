#ProfileManager
This class handles all the profile related functions.

**Example Usage:**

	:::java
	@Override
	public void onOpened(EMDKManager emdkmanager)
	{
	ProfileManager profileManager = (ProfileManager)emdkmanager.getInstance(FEATURE_TYPE.PROFILE);
	}

**Version:**

2.0

##Public Methods

###processProfile(String profileName, ProfileManager.PROFILE_FLAG profileFlag, Document extraData)
Processes the given profile based on the data provided and the flag and return status of the action.

**Example Usage:**

	:::java
	DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
	DocumentBuilder db = dbf.newDocumentBuilder();
	Document extraData;
	extraData = db.newDocument();
	profileManager.processProfile("Profile1", PROFILE_FLAG.GET, extraData);

**Parameters:**

* **profileName** - Name of the profile. ex: 'Profile1'.
	* You can also specify just part of the profile when a fully qualified name of the following format is given: `[profileName][featureType][name in profile parameter]` to just edit part of the profile. For example, if my profile is called 'Profile1' and the name in profile parameter is 'myName'. Passing 'profileName' as 'Profile1/ActivitySelection/myName' will just process this part of the profile.
	* Valid `[featureType]`: ActivitySelection, Barcode, MSR, Intent, Keystroke, IP.

* **profileFlag** - [ProfileManager.PROFILE_FLAG](ProfileManager.PROFILE_FLAG) If the profileFlag is set to SET, and if the given profile is not available in the EMDKConfig.xml, it will look for valid profile in extraData argument and if present, the profile will be added to the internal XML volatile repository and also applied to the device. If the profile is present in the EMDKConfig.xml, it will be applied to the device. If profileFlag is set to GET and if the profile is present in the internal repository, it will be returned in extraData.

* **extraData** - This can be used to provide data for processing action. This parameter is only supported for DataCapture profile features.

**Returns:**

com.symbol.emdk.EMDKResults - [EMDKResults](EMDKResults) object.

###processProfile(String profileName, ProfileManager.PROFILE_FLAG profileFlag, java.lang.String[] extraData)
Processes the given profile based on the data provided and the flag and return status of the action.

**Example Usage:**

	:::java
	profileManager.processProfile("Profile1", PROFILE_FLAG.GET, new String[]{""});

**Parameters:**

* **profileName** - Name of the profile. ex: 'Profile1'
	* You can also specify just part of the profile when a fully qualified name of the following format is given: `[profileName][featureType][name in profile parameter]` to just edit part of the profile. For example, if my profile is called 'Profile1' and the name in profile parameter is 'myName'. Passing 'profileName' as 'Profile1/ActivitySelection/myName' will just process this part of the profile.
	* Valid `[featureType]`:	ActivitySelection, Barcode, MSR, Intent, Keystroke, IP, Clock, PowerMgr, PersistMgr, CertMgr, AppMgr, AccessMgr, Wi-Fi, GprsMgr

* **profileFlag** - [ProfileManager.PROFILE_FLAG](ProfileManager.PROFILE_FLAG) If the profileFlag is set to SET, and if the given profile is not available in the EMDKConfig.xml, it will look for valid profile in extraData argument and if present, the profile will be added to the internal XML volatile repository and also applied to the device. If the profile is present in the EMDKConfig.xml, it will be applied to the device. If profileFlag is set to GET and if the profile is present in the internal repository, it will be returned in extraData.

* **extraData** - This can be used to provide data for processing action. 

**Returns:**

com.symbol.emdk.EMDKResults - [EMDKResults](EMDKResults) object.

###processProfile(String profileName, ProfileManager.PROFILE_FLAG profileFlag, ProfileConfig extraData)
Processes the given profile based on the data provided and the flag and return status of the action.

**Example Usage:**

	:::java
	//Create the ProfileConfig object
	ProfileConfig profileConfigObj = new ProfileConfig();
	//Get the ProfileConfig from the profile XML
	EMDKResults results = mProfileManager.processProfile(profileName, ProfileManager.PROFILE_FLAG.GET, profileConfigObj);
	//Set the code128
	profileConfigObj.dataCapture.barcode.decoders.code128 = ENABLED_STATE.TRUE;
	//call processPrfoile with profile name, SET flag and config data to update the profile
	EMDKResults results = mProfileManager.processProfile(profileName, ProfileManager.PROFILE_FLAG.SET, profileConfigObj);

**Parameters:**

* **profileName** - Name of the profile. ex: 'Profile1'
	* You can also specify just part of the profile when a fully qualified name of the following format is given: `[profileName][featureType][name in profile parameter]` to just edit part of the profile. For example, if my profile is called 'Profile1' and the name in profile parameter is 'myName'. Passing 'profileName' as 'Profile1/ActivitySelection/myName' will just process this part of the profile.
	* Valid `[featureType]`:	ActivitySelection, Barcode, MSR, Intent, Keystroke, IP

* **profileFlag** - [ProfileManager.PROFILE_FLAG](ProfileManager.PROFILE_FLAG) If the profileFlag is set to SET, and if the given profile is not available in the EMDKConfig.xml, it will look for valid profile in extraData argument and if present, the profile will be added to the internal XML volatile repository and also applied to the device. If the profile is present in the EMDKConfig.xml, it will be applied to the device. If profileFlag is set to GET and if the profile is present in the internal repository, it will be returned in extraData.
* **extraData** - [ProfileConfig](ProfileConfig) This can be used to provide data for processing action. This parameter is only supported for DataCapture profile features.

**Returns:**

com.symbol.emdk.EMDKResults - [EMDKResults](EMDKResults) object.

##Public Enums

###ProfileManager.PROFILE_FLAG
All the possible actions for [ProfileManager.processProfile(String, PROFILE_FLAG, Document)](ProfileManager.processProfile(String, PROFILE_FLAG, Document)) and [ProfileManager.processProfile(String, PROFILE_FLAG, String[])](ProfileManager.processProfile(String, PROFILE_FLAG, String[]))is enumerated here.

**Example Usage:**

	:::java
	PROFILE_FLAG.SET

**Values:**

* **SET** - Creates a profile with given XML data. If the profile is already created, this activates the profile if it is not bound to any activity.
* **GET** - Retrieves a profile from the EMDK internal repository. 

