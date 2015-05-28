# Persist MX configurations using Persist Manager API

## Overview

This guide will walk you through creating an EMDK For Android application that will use Mx features introduced in EMDK V 2.1 API to perform device configurations. Mx represents a suite of Enterprise Features on top of standard, commercially available Android Open Source Project. So this tutorial will focus on [Persist Manager](../guide/profiles/refPersistanceManager) API, which allows user to persist configuration XML's. These XML's contain various Mx device configuration settings that user may want to persist even after performing Factory Reset or Enterprise Reset on the device. The persisted settings are applied by default when we Factory or Enterprise Reset the device so that user does not have to apply them manually again and again. This is the main purpose of Mx Persist Manager feature. Overall, the Persist Manager API supports following features:   

**1. Adding XML to be Persisted:**

Using this feature, user can create a new XML to be persisted that has specific configuration settings. (Ex. Mx Clock details)

   > Note: The profile feature "Data Capture Manager" will not be persisted.

**2. Removing a Persisted XML:**

User can remove a specific persisted XML through wizard or API query.

**3. Query to Receive List of all Persisted XML's:**  

This feature allows user to use EMDK V 2.1 API to query Persist Manager in order to receive a list of all persisted XML's.

**4. Query based on Parameters:** 
 
Using this feature, user can find a specific persisted XML based on Persist Manager attributes that were used while persisting the XML. These attributes are:

* PersistAsVersion
* PersistAsOrder
* PersistIfError

**5. Apply Persisted XML settings after Enterprise Reset:**

This feature re-sends the persisted XML's to the Mx Framework after an Enterprise Reset. This helps in re-applying configuration settings back to the device for which user had Persisted these XML's.

   > Note: 
   > In order for associated files to survive an ‘Enterprise Reset’ they must be placed in the Enterprise Folder on the device. A ‘Factory Reset’ will not persist any profiles features.  


So now we will create a tutorial to demonstrate how the configuration XML's are persisted and retrieved using Persist Manager API. Moreover we would perform an enterprise reset on the device and see how the configuration settings are re-applied to the device by designing our tutorial in following steps:

* We would store a Clock and App Manager's install configuration settings and create Persist Manager to store XML for each setting.
* It means we would change the Clock timing using Mx Clock and install any application using App Manager install feature, which will be stored by Persist Manager. 
* We would then deliberately change the Clock timings and uninstall the application that we had installed.
* We will then perform an Enterprise Reset on Enterprise Motorola Android device (Ex. Motorola TC55 in this Tutorial)
* Finally we will ensure how the persisted Clock and App Manager settings are re-applied automatically. It means you would see the Clock is reset to the time you had set and the application installed back to the device from the path provided.     
   
###Prerequisites

* Java Development Kit (JDK)
* Android Developer Tools (ADT)
* Motorola EMDK for Android V 2.1 and above
* Download the APK for sample App from [here](https://s3.amazonaws.com/emdk/Tutorials/AllInstalledApps.apk)
* Download the respective Enterprise Reset package (zip file) according to your device OS version from [here](https://portal.motorolasolutions.com/Support/US-EN/Mobile+Networks+RFID+and+BarCode+Scanners/Mobile+Computers/Handheld+Computers/TC55) and copy that file in SD card/Internal memory of the device.

    > Note: This above link provides the Update Packages of Motorola TC55 device only, which we have used in this tutorial. If you are using some other Motorola Enterprise Android device then download the respective update package from [here](https://portal.motorolasolutions.com/Support/US-EN/Mobile+Networks+RFID+and+BarCode+Scanners/Mobile+Computers/Handheld+Computers)

For more information about setting up the EMDK please see the EMDK Overview.

## Creating The Project
1.  Create new Android Application project.
  
    ![img](images/MxPersistManagerTutorialImages/create_new_app.jpg)

2.  Assign names for the application and package.
 
3.  Set the minimum required SDK to "API 16: Android 4.1 (Jelly Bean)".
  
    ![img](images/MxPersistManagerTutorialImages/set_app_name.jpg)

4.  Click "Next".
  
    ![img](images/MxPersistManagerTutorialImages/configure_project.jpg)
  
5.  Click "Next".
  
    ![img](images/MxPersistManagerTutorialImages/configure_launcher_icon.jpg)
  
6.  Click "Next".  

7.  Select "Empty Activity" Click "Next".  

    ![img](images/MxPersistManagerTutorialImages/create_activity.jpg)  

    >Note:  
    >If "Empty Activity" is not available make sure you are using "Android SDK Tools 22.6.3" and "Android SDK Platform Tools 19.0.2"

7.  Click "Next".  

    ![img](images/MxPersistManagerTutorialImages/empty_activity.jpg)
  
8.  Click "Finish".

    >Note:  
    >Currently there is nothing under "\assets" folder.  
    
    ![img](images/MxPersistManagerTutorialImages/main_activity.jpg)  

## Enabling the EMDK
1. Select the project.
  
2. Select "File -> Properties" or right click on the project and select "Properties".
  
    ![img](images/MxPersistManagerTutorialImages/project_properties_button_1.jpg)
   
    ![img](images/MxPersistManagerTutorialImages/project_properties_button_2.jpg)
   
3. Click "Android" from the left pane.
  
    ![img](images/MxPersistManagerTutorialImages/project_properties.jpg)
 
4. Select "EMDK APIs 2.1" from the list of Project Build Targets.
  
    ![img](images/MxPersistManagerTutorialImages/project_properties_build_target.jpg)  

    >Note:  
    >If "EMDK APIs 2.1" is not on the list of Build Targets, please confirm you have installed Android API 16 SDK Platform.

5. Click "Apply" and "OK".  
    >Note:  
    >The EMDK library will be added to the project.  
    
    ![img](images/MxPersistManagerTutorialImages/emdk_library_added.jpg) 

    >Note:
    >If you are using Java 1.7 as the compiler, you may see this error
    
    ![img](images/MxPersistManagerTutorialImages/compiler_error.jpg) 

    > To correct this, you will need to change the compiler to use 1.6
    
    > * Click on the Java Compiler
    > * Click Enable project specific settings
    > * Select 1.6 for Compiler compliance level
    
    ![img](images/MxPersistManagerTutorialImages/java_compiler_settings.jpg) 

## Adding The Persist Manager Profile Feature
1. Select "MxPersistManagerTutorial" project from Package Explorer.
    
2. Click "EMDK" menu and select "Profile Manager".
  
    ![img](images/MxPersistManagerTutorialImages/profile_manager_button.jpg)
  
3. The EMDK Profile Manager Window will appear.
  
    ![img](images/MxPersistManagerTutorialImages/emdk_profile_manager.jpg)
  
4. Click "Create" and assign a name for the profile (Ex: PersistManagerProfile).
  
    ![img](images/MxPersistManagerTutorialImages/create_new_profile.jpg)
  
5. Click "Create". The Profile Editor window will appear.
  
    ![img](images/MxPersistManagerTutorialImages/profile_editor.jpg)

    The earlier features are categorized on the basis of their functionality. (For Example - Data Input can be done in two ways viz Barcode and MSR). The new features introduced in EMDK V 2.1 are MX (Mobility Extension) interfaces that are used to configure the Motorola enterprise Android devices based on requirements. 
  
6. Now we will persist two XML's for two Mx features in this tutorial. The first feature is Clock. So select the "Clock" feature from the list and click "Right Arrow".

    ![img](images/MxPersistManagerTutorialImages/clock_feature.jpg)

    Set the Clock details by providing Timezone, Date and Time values. All the timings need to be in UTC. It means if you want to set the Timezone to PST, you will need to set the clock to GMT time and it will automatically change it to the local time for you.

    > Note: It means the time you enter always has to be in GMT.

    ForEample:  
	* **Name**: MxClock
	* **TimeZone**: GMT-07:00
	* **Date**: 2014-08-15
	* **Time**: 20:00:00

    Here , we have set the Timezone as GMT-07:00. It means if we want to set the PST time of 1PM, we have to set the GMT time as 8PM (20:00:00 in 24 hour format) and it will automatically set the PST time of 1PM for us.

    ![img](images/MxPersistManagerTutorialImages/clock_details.jpg)   
 
7. Click Apply and your Clock profile is created.    
  
    ![img](images/MxPersistManagerTutorialImages/clock_profile_created.jpg)

8. So now we will persist the Clock settings by creating a Persist Manager for Clock. To proceed with this, select "Persistence Manager" feature from the list and click "Right Arrow".

    ![img](images/MxPersistManagerTutorialImages/persist_manager.jpg) 

9. Provide some name in the Name field (Ex. PersistClock). Select Persist Action as "Make Current XML Persistent". Select Persist as Name field and a Name Selector dialog will appear. If you want to remove any persisted XML, select Persist Action as "Remove Persistent XML". 

    ![img](images/MxPersistManagerTutorialImages/name_selector_clock.jpg)

    Select Name Type as Generic/Absolute from the drop-down option and provide Generic/Absolute Name in the field (Ex. clock_profile). 

    ![img](images/MxPersistManagerTutorialImages/name_selector_clock_details.jpg)

10. Click OK. Enter 1 for "Persist As Version". Enter 1 for "Persist As Order". Check the "Persist if Error" field. This field will persist the XML even if Profile Creation returns error.

    ![img](images/MxPersistManagerTutorialImages/persist_clock_completed.jpg)

    Click Apply and the perist settings for the Clock feature will be added. 

    ![img](images/MxPersistManagerTutorialImages/clock_profile_added.jpg)

11. So far we have added the Persist configurations for Clock feature. Now its time to persist App Manager feature as discussed earlier. We will follow similar steps as we did for Clock. Select App Manager feature and Click "Right Arrow". It will show App Manager parameter list.

    ![img](images/MxPersistManagerTutorialImages/app_manager_parameter_list.jpg)

12. Provide some name in the Name field (Ex. MxAppManager). Select Action as "Install" and Provide the APK path to the SD Card of the application that we had downloaded earlier (Ex. /storage/sdcard1/AllInstalledApps.apk). So this feature will install the app in the device from the provided APK file.

    > Note: The SD Card path may be different on different devices.

    ![img](images/MxPersistManagerTutorialImages/app_manager_details.jpg)

13. We will add another Persist Manager to persist the App Manager settings. So select "Persistence Manager" from the feature list and click "Right Arrow".

    ![img](images/MxPersistManagerTutorialImages/persist_app_manager.jpg)

14. Provide some name in the Name field (Ex. PersistAppManager). Select Persist Action as "Make Current XML Persistent". If you want to remove any persisted XML, select Persist Action as "Remove Persistent XML". Select the "Persist As Name" field and provide Absolute/Generic path as we did earlier for the Clock (Ex. PersistAppManager). Enter 1 for "Persist As Version". Enter 1 for "Persist As Order". Check the "Persist if Error" field. This field will persist the XML even if Profile Creation returns error.

    ![img](images/MxPersistManagerTutorialImages/persist_app_manager_completed.jpg)  
  
15.  Click Apply and Finish. 

    ![img](images/MxPersistManagerTutorialImages/persist_manager_profile_created.jpg)  

16. Click "Close". This will create our Persist Manager Profile that is ready to Persist details for Clock and App manager features of Mx.   

    >Note:  
    >Now the "EMDKConfig.xml" is created under "\assets" folder. This file will contain a definition of all of your profiles that you create. 
    
    ![img](images/MxPersistManagerTutorialImages/emdk_config_file.jpg)
  
17. You can inspect the EMDKConfig.xml to see it is reflecting the changes made to the parameters via EMDK Profile Manager GUI earlier.  However, it is advised that this file not be manually updated and only be controlled via the Profile Manager.

    ![img](images/MxPersistManagerTutorialImages/emdk_config_file_entries.jpg)    

## Enabling Android Permissions
1. Modify the Application's Manifest.xml to use the EMDK library and to set permission for the EMDK.
  
    ![img](images/MxPersistManagerTutorialImages/manifest_file.jpg)

    You must first enable permissions for 'com.symbol.emdk.permission.EMDK':  
   
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/> 

    Then you must enable the library:  
      
        :::xml
        <uses-library android:name="com.symbol.emdk"/>

    When done, your manifest.xml should look like:

    ![img](images/MxPersistManagerTutorialImages/manifest_permissions_added.jpg) 

##Adding Some Code    
1. Now we will start to add some code. 

    First you must add references to the libraries:  
    
        :::java
        import com.symbol.emdk.*;  
        import com.symbol.emdk.EMDKManager.EMDKListener;  
		import android.widget.Toast;    

    Then you must extend the activity to implement EMDKListener. Use Eclipse’s Content Assist to implement the unimplemented functions of `onOpened` and `onClosed`.    
    
        :::java
        public class MainActivity extends Activity implements EMDKListener {  
          
            .. .. .. .. .. .. ...  
          
            @Override  
            public void onClosed() {  
                   // TODO Auto-generated method stub  
            }  
          
            @Override  
            public void onOpened(EMDKManager emdkManager) {  
                   // TODO Auto-generated method stub  
            }  
          
        }      

    We will now create some global variables to hold the profile name as well as instance objects of EMDKManager and ProfileManager. These variables would be used throughout the code. 

    >Note:
    >Verify the Profile name in the code with the one created in the Profile Manager. They both should be identical.    
    
        :::java
        // Assign the profile name used in EMDKConfig.xml
	    private String profileName = "PersistManagerProfile";

	    // Declare a variable to store ProfileManager object
	    private ProfileManager profileManager = null;

	    // Declare a variable to store EMDKManager object
	    private EMDKManager emdkManager = null;

    In the onCreate method, we call getEMDKManager so that the EMDK can be initialized and checked to see if it is ready. 

        :::java
        //The EMDKManager object will be created and returned in the callback.  
        EMDKResults results = EMDKManager.getEMDKManager(getApplicationContext(), this);  
          
        //Check the return status of getEMDKManager  
		if (results.statusCode == EMDKResults.STATUS_CODE.SUCCESS) {

			// EMDKManager object creation success

		} else {

			// EMDKManager object creation failed

		}


    So far your code should look like:
     
     ![img](images/MxPersistManagerTutorialImages/on_create_added.jpg) 

2. Now we need to use the `onOpened` method to get a reference to the EMDKManager. The EMDKListener interface will trigger this event when the EMDK is ready to be used. The EMDKListener interface must be implemented in order to get a reference to the EMDKManager APIs. This event will pass the EMDKManager instance and we assign it to the global variable `emdkManager` that we created in the previous steps. We then use that instance object to get an instance of ProfileManager and assign it to the global variable `profileManager`. This is how we will interface with the APIs in the rest of the code:

    > Note: 
    > Rename the argument of `onOpened` method from `arg0` to `emdkManager`  

        :::java
        // This callback will be issued when the EMDK is ready to use.
		this.emdkManager = emdkManager;

		// Get the ProfileManager object to process the profiles
		profileManager = (ProfileManager) emdkManager
				.getInstance(EMDKManager.FEATURE_TYPE.PROFILE);         
    
    Now that we have a reference to ProfleManager, we use it to install and activate the profile we built earlier using the `processProfile` method. We could have also performed this action at a different time, say when someone pressed a button, but we chose to do it as soon as the EMDK was ready:  

        :::java
        if (profileManager != null) {
			String[] modifyData = new String[1];

			// Call processPrfoile with profile name and SET flag to create the
			// profile. The modifyData can be null.
			EMDKResults results = profileManager.processProfile(profileName,
					ProfileManager.PROFILE_FLAG.SET, modifyData);

			if (results.statusCode == EMDKResults.STATUS_CODE.SUCCESS) {
				Toast.makeText(MainActivity.this,
						"XML Persisted successfully...", Toast.LENGTH_SHORT)
						.show();
			} else {
				Toast.makeText(MainActivity.this, "Failed to persist XML...",
						Toast.LENGTH_SHORT).show();
			}
		}  

    Your complete onOpened method should now look like this:
    
    ![img](images/MxPersistManagerTutorialImages/on_opened_method.jpg)  
    
3. Now let's override the "onDestroy" method so we can release the EMDKManager resources:  

        :::java
        @Override  
        protected void onDestroy() {  
            // TODO Auto-generated method stub  
            super.onDestroy();  
            //Clean up the objects created by EMDK manager  
            emdkManager.release();  
        } 

    Your onDestroy method should now look like this:  

    ![img](images/MxPersistManagerTutorialImages/on_destroy_method.jpg) 

That's it!!! We are done with all the coding and configuration part. Now let us run the application.
 
## Running the Application

1. Connect Motorola Solutions Android device (having the latest EMDK runtime) to the USB port. 

    > Note:   
    > Make sure the device is in USB debug.

    Check the Date-Time of the phone before running the app

    ![img](images/MxPersistManagerTutorialImages/before_running_app.png)
  
2. Run the application. The Clock and and App Manager configurations are applied and persisted in the device. It means you can now see the Clock Date-Time has been changed to the one we had set in the wizard. You can also see that EMDK App Manager has installed the application "AllInstalledApps" whose APK path we had provided in the wizard earlier. 
  
	![img](images/MxPersistManagerTutorialImages/xml_persisted.png)

    Now check the Date-Time of the device. You could see that it has changed to the one we set in the wizard during Profile Creation.

    ![img](images/MxPersistManagerTutorialImages/date_time_updated.png)

    You can also see that APK path of the application we had provided in the wizard during Profile creation has been installed successfully on the device using App Manager's install feature.

    ![img](images/MxPersistManagerTutorialImages/app_installed.png)
  
3. These configurations were implemented and applied by the respective Mx feature (Clock and App Manager) but the settings are persisted in the XML file by the Persist Manager. If you open the File browser of Motorola TC 55 and go to "/enterprise/usr/persist/mxframework/persistmgr", you will find the two XML's persisted that were created using Persist Manager for Clock and App Manager features of Mx. 

    ![img](images/MxPersistManagerTutorialImages/persist_path.png)

5. Now we will see how these Clock and App Manager settings are re-applied automatically after performing Enterprise Reset on the device.

    > Note: Enterprise Reset erases all the user installed applications and resets the Clock to the default time. But in our case system will read the details from Persisted XML files and apply changes to the device.
    > Make sure that the Enterprise Reset package (zip file) is present in the device's SD Card.

6. Let us perform Enterprise Reset on the Motorola TC55 Android device. Simultaneously press the Power, Programmable and Volume Up buttons 
 
	![img](images/MxPersistManagerTutorialImages/reset_process.jpg)

    The TC55 shuts down and then reboots. Now select the Enterprise Reset Package (Zip File) stored in the SD Card by navigating to the path. It will complete the Enterprise Reset by erasing data and reboot the device with the default configurations.

6. Once the Enterprise Reset is completed, Persist Manager resends the persisted XML's to the Mx Framework, which is captured by the device. These settings are then re-applied to the device. This is how the Persist Manager works in order to Persist and apply the Mx device configuration features.

    ![img](images/MxPersistManagerTutorialImages/after_reset.png)

##Important Programming Tips##

1. It is required to do the following changes in the application's AndroidManifest.xml:  
  
    >Note:
    >* Include the permission for EMDK:  
    
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/>
    
	>Note:
    >* Use the EMDK library:  
    
        :::xml
        <uses-library android:name="com.symbol.emdk"/>
  
2. Installing the EMDK for Android application without deploying the EMDK runtime on the Motorola Solutions Android  device will fail because of missing shared library on the device.
 
4. Use the DataWedge v1.7.12 or higher version to test the ProfileManager.processProfile() for DataWedge profiles.

## What's Next
Now that you have learned how to configure and persist device configuration XML's using Persist Manager on your Motorola Enterprise Android devices through applications, let us try to understand and implement some of the other Mx features. So in the next tutorial, we will concentrate on the "GPRS Manager" Mx feature and try to explore this feature by creating a tutorial.

## Download the Source
The project source to this tutorial can be [downloaded (Internet Connection Required)](https://s3.amazonaws.com/emdk/Tutorials/EMDKMxAppManagerTutorial.zip).