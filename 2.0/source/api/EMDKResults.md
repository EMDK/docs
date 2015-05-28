#EMDKResults
Class for holding result data.

**Example Usage:**

	:::java
	@Override
	public void onOpened(EMDKManager emdkmanager)
	{
	ProfileConfig profileConfigObj = new ProfileConfig();
	ProfileManager profileManager = (ProfileManager)emdkmanager.getInstance(FEATURE_TYPE.PROFILE);
	EMDKResults results = profileManager.processProfile("Profile Name", ProfileManager.PROFILE_FLAG.GET, profileConfigObj);
	}


**Version:**
2.0

##Public Methods
###getStatusDocument()
Gets status results from process profile as xml document.

**Example Usage:**

	:::java
	Document document = results.getStatusDocument();


**Returns:**
org.w3c.dom.Document - XML document.

###getStatusString()
Gets status results from process profile as xml string.

**Example Usage:**

	:::java
	String xml = results.getStatusString();


**Returns:**
java.lang.String - XML text.

##Public Fields
###statusCode
Gets status code result from process profile as enum value of type [EMDKResults.STATUS_CODE](EMDKResults.STATUS_CODE)	.

**Example Usage:**

	:::java
	STATUS_CODE statusCode = results.statusCode;


**Type:**
com.symbol.emdk.[EMDKResults.STATUS_CODE](EMDKResults.STATUS_CODE)

##Public Enums
###STATUS_CODE
Defines all the status codes the library returns.

**Example Usage:**

	:::java
	results.statusCode.SUCCESS;


**Values:**

* **SUCCESS** - Process profile was a success.
* **FAILURE** - Process profile was a failure.
* **UNKNOWN** - Process profile had mixed results.
* **NULL_POINTER** - Process profile was a had a null value.
* **EMPTY_PROFILENAME** - Profile name passed Process profile was empty.
* **EMDK_NOT_OPENED** - EMDK is not opened
