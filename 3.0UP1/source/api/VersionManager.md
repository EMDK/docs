#VersionManager
Version information can be captured from this class.

**Example Usage:**

	:::java
	@Override
	public void onOpened(EMDKManager emdkmanager)
	{
	VersionManager versionManager = (VersionManager)emdkmanager.getInstance(FEATURE_TYPE.VERSION);
	}

**Version:**

2.0

##Public Methods

###getVersion(VersionManager.VERSION_TYPE versionKey)

Gets the version of the specified [VersionManager.VERSION_TYPE](#VERSION_TYPE)

**Example Usage:**

	:::java
	versionManager.getVersion(VERSION_TYPE.EMDK)

**Parameters:**

**versionKey** - [VersionManager.VERSION_TYPE](#VERSION_TYPE)

**Returns:**

java.lang.String - Version number

##Public Enums

###VERSION_TYPE
All the version keys for [VersionManager.getVersion(VersionManager.VERSION_TYPE)](#getVersion(VersionManager.VERSION_TYPE)) are enumerated here.

**Example Usage:**

	:::java
	VERSION_TYPE.EMDK

**Values:**

* **EMDK("EMDK")** - EMDK version

* **MX("MX")** - MX framework version

* **BARCODE("BARCODE")** - Barcode Scanner Framework version.
