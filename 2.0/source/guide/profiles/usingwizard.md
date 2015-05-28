# Using EMDK for Android Profiles
##EMDK Profiles Overview

Motorola's EMDK for Android allows you to easily access various capabilities of your Motorola Android device from within an Android application. These settings are grouped together into, what is referred to as EMDK profiles. Each EMDK profile is broken into various feature types. Each profile feature type has settings to provide automatic enablement as well as configuration options that will control it's behavior. One such profile feature type is Data Capture, which allows you to accesses the devices bar code scanner and magstripe reader. 

##EMDK Feature Types

###Data Capture

EMDK Data Capture profiles allow you to access and configure a devices bar code scanner and magstripe reader, along with how the data captured should be transmitted to your application. There are typically three components that are used to make this work:

* Activity Selector - Automatically activates the profile based on application & activity combinations.
* Input Sources - Choose if Barcode & MSR is the source of the data.
* Output Sources - Output the input source data as a Keystroke or Intent output.

####Activity Selector
This feature allows you to select a combination of applications and activities that will be used to automatically activate this profile.

![img](images/profiles/image018.jpg)

####Data Capture Inputs
Currently there are Barcode and MSR methods for Data Capture. In the future, there may be other methods for capturing data like RFID, etc. Each Input type can be configured individually and should be accompanied with an Output feature in order for the data to be received by your application.

* [Barcode](../guide/profiles/profilebarcode) - These settings allows you to select how the device should handle bar code scanning.
* [MSR](../guide/profiles/profilemsr) - This setting allows you to enable magstripe reader input support. 

![img](images/profiles/image019.jpg)

####Data Capture Outputs
Once data is captured using either Barcode or MSR, the data captured will not be delivered to your application unless you have a Data Capture output configured. Currently there are two options for outputting data:

* [Intent](../guide/profiles/profileintent) - These settings allows you to select how data should be delivered to your application in the form of an intent. 
* [Keystroke](../guide/profiles/profilekeystroke) - These settings allows you to specify how data should be delivered to your app in the form of keystrokes.

![img](images/profiles/image020.jpg)

##Using the EMDK Profile Manager

Profile Manager is an exclusive EMDK technology offered within the Eclipse IDE, providing a GUI based development tool. This allows you to write fewer lines of code resulting in reduced development time, effort and errors.  

###Accessing the Profile Manager
1. Inside the Eclipse ADT select an Android Application in the "Package Explorer".
2. Select "EMDK" -> "Profile Manager" on the toolbar.  
    ![img](images/profiles/image001.jpg)

###Creating a Profile

1. Open the "EMDK Profile Manager".  
2. Click "Create".  
    ![img](images/profiles/image002.jpg)

3. Enter a Profile Name and click "Create".  
	![img](images/profiles/image003.jpg)  
4. Select the features you would like to enable by selecting the item from the list of "Available Features" and clicking the right arrow button. 
	>Note:  
	>
	> You must enable both a Data Capture feature and a Data Capture Input Feature for the profile to send data to your application. For example "Barcode" and "Intent".
	>
	> You can remove a feature from the "Selected Features" list by clicking the left arrow button.
	
	![img](images/profiles/image004.jpg)  
5. Select a "Selected Features" and the list of settings will populate on the left hand side of the dialog. When click on a setting a description with populate on the lower left hand corner of the dialog.  
	![img](images/profiles/image005.jpg)  
6. When complete click "Finish". 
7. Click "Close".  
	![img](images/profiles/image006.jpg)

	>Note:  
	>The profile XML will be generated and saved to "EMDKConfig.XML" inside your projects "assets" folder.   
	
###Editing a Profile

1. Open the EMDK Profile Manager.
2. Select a Profile to modify and click "Edit".  
	![img](images/profiles/image007.jpg)  
3. Edit the profile using the Profile Manager in the same way you would when creating a new profile.
4. When complete click "Finish".
5. Click "Close".  
	![img](images/profiles/image008.jpg)

	>Note:  
	>The profile XML will be updated and saved to "EMDKConfig.XML" inside your projects "assets" folder. 
	
###Renaming a Profile

1. Open the EMDK Profile Manager.
2. Select a Profile to rename and click "Rename".  
	![img](images/profiles/image009.jpg)  
3. Enter the new name and click "Rename";  
	![img](images/profiles/image010.jpg)  
4. Click "Close".  
	![img](images/profiles/image011.jpg)  

	>Note:  
	>The profile XML will be updated and saved to "EMDKConfig.XML" inside your projects "assets" folder. 

###Copying a Profile

1. Open the EMDK Profile Manager.
2. Select a Profile to copy and click "Copy".  
	![img](images/profiles/image012.jpg)  
3. Enter the a name profile name to uses and click "Copy";  
	![img](images/profiles/image013.jpg)  
4. Click "Close".  
	![img](images/profiles/image014.jpg)  

	>Note:  
	>The profile XML will be updated and saved to "EMDKConfig.XML" inside your projects "assets" folder. 


###Deleting a Profile
1. Open the EMDK Profile Manager.
2. Select a Profile to delete and click "Delete".  
	![img](images/profiles/image015.jpg)  
3. Confirm delete by clicking "Delete";  
	![img](images/profiles/image016.jpg)  
4. Click "Close".  
	![img](images/profiles/image017.jpg)  

	>Note:  
	>The profile XML will be updated and saved to "EMDKConfig.XML" inside your projects "assets" folder. 

##Using the Profile Manager API
Once you create your profiles using the Profile Manager, they will be bundled with your application and available to access using the [Profile Manager APIs](../guide/reference/EMDKList).

### Multiple Ways to Access
In the ProfileManager API, you will see three methods for `processProfile`. Essentially the last parameter, `extraData`, is one of three types:

* **Document** - data will be handled as a XML Document.
* **String** - data will be handled as a raw string.
* **ProfileConfig** - data will be handled as a ProfileConfig class.

The preferred way is to use the `profileConfig` option and the examples below present using such option. Using the Document or String methods may not work if the XML is not structured properly.

###Creating or Activating a Profile
A profile is created or activated with using the PROFILE_FLAG.SET option. If the profileFlag is set to SET, and if the given profile is not available, it will look for valid profile in extraData argument and if present, the profile  will be added to the internal XML volatile repository and also applied to the device.  If the profile is present, then it will be applied to the device. 

	:::java
	@Override  
    public void onOpened(EMDKManager emdkmanager)  
    {  
        //Create the Profile Config object  
        ProfileConfig profileConfigObj = new ProfileConfig();  
       
        //Get the Profile Manager  
        ProfileManager profileManager = (ProfileManager)emdkmanager.getInstance(FEATURE_TYPE.PROFILE);  
       
        //Create the new profile  
        EMDKResults results = profileManager.processProfile("ProfileName", ProfileManager.PROFILE_FLAG.SET, profileConfigObj);     
    }  

###Getting a Profile
If profileFlag is set to GET and if the profile is present in the internal repository, it will be returned in the extraData object.

	:::java
	@Override  
    public void onOpened(EMDKManager emdkmanager)  
    {  
        //Create the Profile Config object  
        ProfileConfig profileConfigObj = new ProfileConfig();  
       
        //Get the Profile Manager  
        ProfileManager profileManager = (ProfileManager)emdkmanager.getInstance(FEATURE_TYPE.PROFILE);  
       
        //Get the profile and store it in the ProfileConfig object  
        EMDKResults results = profileManager.processProfile("ProfileName", ProfileManager.PROFILE_FLAG.GET, profileConfigObj);         
    }  

###Modifying a Profile
To modify a profile, you would:

* Use the PROFILE_FLAG.GET option to retrieve the profile (if it exists).
* Use the profileConfig Object and APIs to modify the settings.
* Use the PROFILE_FLAG.SET option to save the settings.


	 	:::java
	 	@Override  
	    public void onOpened(EMDKManager emdkmanager)  
	    {  
	        //Create the Profile Config object  
	        ProfileConfig profileConfigObj = new ProfileConfig();  
	       
	        //Get the Profile Manager  
	        ProfileManager profileManager = (ProfileManager)emdkmanager.getInstance(FEATURE_TYPE.PROFILE);  
	       
	        //Get the profile and store it in the ProfileConfig object  
	        EMDKResults results = profileManager.processProfile("ProfileName", ProfileManager.PROFILE_FLAG.GET, profileConfigObj);  
	        //Enable MSR  
	        profileConfigObj.dataCapture.msr.msr_input_enabled = ENABLED_STATE.TRUE;  
	        //Modify Profile  
	        EMDKResults ModifyResults = profileManager.processProfile("ProfileName", ProfileManager.PROFILE_FLAG.SET, profileConfigObj);  
	    }  