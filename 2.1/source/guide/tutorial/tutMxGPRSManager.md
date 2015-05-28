# Configure Access Points using Mx GPRS Manager

## Overview

This guide will walk you through creating an EMDK For Android application that will use Mx features introduced in EMDK V 2.1 API to perform device configurations. Mx represents a suite of Enterprise Features on top of standard, commercially available Android Open Source Project. So this tutorial will focus on configuring Access Points of the mobile networks present in your Motorola Enterprise Android device using [GPRS Manager](../guide/profiles/refGPRS) feature of Mx. [GPRS Manager](../guide/profiles/refGPRS) allows you to perform following operations on Access Points of your device's mobile network: 

**1. Add/Replace named APN:**

Using this feature, user can add a new APN (Access Point Name) or replace an existing APN on your device's Mobile Network. User can also set a specific APN as default. The EMDK wizard for GPRS Manager requires various inputs such as GPRS Carrier (ATT, T-Mobile or Custom), APN Name and supply details for APN (Access Point, User Name and Password).

   > Note: For ATT and T-Mobile option the user and password filed are required. 

**2. Remove existing named APN:**

This removes a specific named APN from the list of APN's in the device's mobile network. The user just have to provide "APN Name" and it will remove that particular named APN from your device's mobile network. 

**3. Remove all existing APN's:**  

This GPRS Manager feature allows user to remove all the existing APN's from the device's mobile network. The user does not need to provide any additional input except selecting the APN Action as "Remove all existing APN's".


So now we will create a tutorial to demonstrate how to configure Access Points in the device's mobile Network by creating GPRS Profile in the EMDK Wizard.

   > Note: The device should have network carrier to test GPRS Manager Tutorial.     
   
###Prerequisites

* Java Development Kit (JDK)
* Android Developer Tools (ADT)
* Motorola EMDK for Android V 2.1 and above
* Motorola Enterprise Android Device should have Network Carrier. 

For more information about setting up the EMDK please see the EMDK Overview.

## Creating The Project
1.  Create new Android Application project.
  
    ![img](images/MxGPRSManagerTutorialImages/create_new_app.jpg)

2.  Assign names for the application and package.
 
3.  Set the minimum required SDK to "API 16: Android 4.1 (Jelly Bean)".
  
    ![img](images/MxGPRSManagerTutorialImages/set_app_name.jpg)

4.  Click "Next".
  
    ![img](images/MxGPRSManagerTutorialImages/configure_project.jpg)
  
5.  Click "Next".
  
    ![img](images/MxGPRSManagerTutorialImages/configure_launcher_icon.jpg)
  
6.  Click "Next".  

7.  Select "Empty Activity" Click "Next".  

    ![img](images/MxGPRSManagerTutorialImages/create_activity.jpg)  

    >Note:  
    >If "Empty Activity" is not available make sure you are using "Android SDK Tools 22.6.3" and "Android SDK Platform Tools 19.0.2"

7.  Click "Next".  

    ![img](images/MxGPRSManagerTutorialImages/empty_activity.jpg)
  
8.  Click "Finish".

    >Note:  
    >Currently there is nothing under "\assets" folder.  
    
    ![img](images/MxGPRSManagerTutorialImages/main_activity.jpg)  

## Enabling the EMDK
1. Select the project.
  
2. Select "File -> Properties" or right click on the project and select "Properties".
  
    ![img](images/MxGPRSManagerTutorialImages/project_properties_button_1.jpg)
   
    ![img](images/MxGPRSManagerTutorialImages/project_properties_button_2.jpg)
   
3. Click "Android" from the left pane.
  
    ![img](images/MxGPRSManagerTutorialImages/project_properties.jpg)
 
4. Select "EMDK APIs 2.1" from the list of Project Build Targets.
  
    ![img](images/MxGPRSManagerTutorialImages/project_properties_build_target.jpg)  

    >Note:  
    >If "EMDK APIs 2.1" is not on the list of Build Targets, please confirm you have installed Android API 16 SDK Platform.

5. Click "Apply" and "OK".  
    >Note:  
    >The EMDK library will be added to the project.  
    
    ![img](images/MxGPRSManagerTutorialImages/emdk_library_added.jpg) 

    >Note:
    >If you are using Java 1.7 as the compiler, you may see this error
    
    ![img](images/MxGPRSManagerTutorialImages/compiler_error.jpg) 

    > To correct this, you will need to change the compiler to use 1.6
    
    > * Click on the Java Compiler
    > * Click Enable project specific settings
    > * Select 1.6 for Compiler compliance level
    
    ![img](images/MxGPRSManagerTutorialImages/java_compiler_settings.jpg) 

## Adding The GPRS Manager Profile Feature
1. Select "MxGPRSTutorial" project from Package Explorer.
    
2. Click "EMDK" menu and select "Profile Manager".
  
    ![img](images/MxGPRSManagerTutorialImages/profile_manager_button.jpg)
  
3. The EMDK Profile Manager Window will appear.
  
    ![img](images/MxGPRSManagerTutorialImages/emdk_profile_manager.jpg)
  
4. Click "Create" and assign a name for the profile (Ex: GPRSProfile).
  
    ![img](images/MxGPRSManagerTutorialImages/create_new_profile.jpg)
  
5. Click "Create". The Profile Editor window will appear.
  
    ![img](images/MxGPRSManagerTutorialImages/profile_editor.jpg)

    The earlier features are categorized on the basis of their functionality. (For Example - Data Input can be done in two ways viz Barcode and MSR). The new features introduced in EMDK V 2.1 are MX (Mobility Extension) interfaces that are used to configure the Motorola enterprise Android devices based on requirements. 
  
6. So you can see all the MX features on the left hand side of the Profile Editor window. Since this is GPRS Manager Tutorial, select the "GPRS Manager" feature from the list and click "Right Arrow".

    ![img](images/MxGPRSManagerTutorialImages/gprs_feature.jpg)

    So as discussed earlier we would now try the GPRS features one by one, by changing the "APN Action" attribute (Add/Replace, Remove, Remove All) in the wizard. In this step let us add a named APN by performing following actions. 

    * Provide some name in the Name field (Ex. MyGPRS). This helps in modifying a particular GPRS Manager of that name programmatically.
    * Select APN Action as "Add/Replace named APN"
    * Select GPRS Carrier from the drop-down menu. You can choose ATT, T-Mobile or Custom Carrier. As of now select "ATT".
    * Provide APN Name (Ex. ATT_APN_1)
    * Check the checkbox "Replace if Exixts?". This will replace APN with the same name from the list if exists.
    * Keep the "Make Default APN?" field as it is. (keep it unchecked).
    * Provide Access Point (Ex. wap.cingular)
    * Provide User Name (Ex. WAP@CINGULARGPRS.COM)
    * Enter Password (Ex. CINGULAR1)

    ![img](images/MxGPRSManagerTutorialImages/att_gprs_details.jpg)   
 
7. Click Apply to apply the settings we provided    
  
    ![img](images/MxGPRSManagerTutorialImages/att_profile_created.jpg)

8. Click Finish and your GPRS profile for adding an APN is created.

    ![img](images/MxGPRSManagerTutorialImages/att_gprs_profile_created.jpg) 
  
9. Click "Close".

    >Note:  
    >Now the "EMDKConfig.xml" is created under "\assets" folder. This file will contain a definition of all of your profiles that you create. 
    
    ![img](images/MxGPRSManagerTutorialImages/emdk_config_file.jpg)
  
10. You can inspect the EMDKConfig.xml to see it is reflecting the changes made to the parameters via EMDK Profile Manager GUI earlier.  However, it is advised that this file not be manually updated and only be controlled via the Profile Manager.

    ![img](images/MxGPRSManagerTutorialImages/emdk_config_file_entries.jpg)    

## Enabling Android Permissions
1. Modify the Application's Manifest.xml to use the EMDK library and to set permission for the EMDK.
  
    ![img](images/MxGPRSManagerTutorialImages/manifest_file.jpg)

    You must first enable permissions for 'com.symbol.emdk.permission.EMDK':  
   
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/> 

    Then you must enable the library:  
      
        :::xml
        <uses-library android:name="com.symbol.emdk"/>

    When done, your manifest.xml should look like:

    ![img](images/MxGPRSManagerTutorialImages/manifest_permissions_added.jpg) 

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
	    private String profileName = "GPRSProfile";

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
     
     ![img](images/MxGPRSManagerTutorialImages/on_create_added.jpg) 

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
						"Operation Successful...", Toast.LENGTH_SHORT)
						.show();
			} else {
				Toast.makeText(MainActivity.this, "Operation Failed...",
						Toast.LENGTH_SHORT).show();
			}
		}  

    Your complete onOpened method should now look like this:
    
    ![img](images/MxGPRSManagerTutorialImages/on_opened_method.jpg)  
    
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

    ![img](images/MxGPRSManagerTutorialImages/on_destroy_method.jpg) 

That's it!!! We are done with all the coding and configuration part that will let us Add/Replace a named APN. Now let us run the application.
 
## Running the Application

1. Connect Motorola Solutions Android device (having the latest EMDK runtime) to the USB port. 

    > Note:   
    > Make sure the device is in USB debug.
    > Make sure the device has Network Carrier

    Before running the application, We will see the Access Points that are already present in the device's Mobile Network.

    Go to device's Settings -> More (in Wireless & Nwteowks) -> Mobile Networks -> Access Point Names

    ![img](images/MxGPRSManagerTutorialImages/existing_access_points.png)

    You can see there are two T-Mobile Access Points already present. After running this application, the ATT Access Point will be added in this list that we had created in GPRS Manager Wizard earlier.  

2. Run the application.

    ![img](images/MxGPRSManagerTutorialImages/home_screen.png)

    Now again go to device's Settings -> More (in Wireless & Nwteowks) -> Mobile Networks -> Access Point Names 
  
	![img](images/MxGPRSManagerTutorialImages/att_access_point_added.png)

    You can see that the ATT Access Point that we created has been added successfully to the APN's list.

    > Note: The ATT Access Point is added but not selected as default because we kept "Make Default APN?" field unchecked in the Profile Creation Wizard.
  
3. In this step we will remove an existing named APN. So select the project "MxGPRSTutorial" and click EMDK button to go to Profile Manager.

    ![img](images/MxGPRSManagerTutorialImages/profile_manager_button.jpg)
  
    ![img](images/MxGPRSManagerTutorialImages/att_gprs_profile_created.jpg)  

5. Click Edit button and you will see our previous configuration of Add/Replace APN:

    ![img](images/MxGPRSManagerTutorialImages/first_edit.jpg)

    Select "Remove existing named APN" option from the "APN Action" drop down.

    ![img](images/MxGPRSManagerTutorialImages/remove_apn.jpg)

    Provide the unique name of the APN that you had set while Adding that named APN (Ex. ATT_APN_1)

    ![img](images/MxGPRSManagerTutorialImages/remove_att_apn.jpg)

    Click Apply, Finish and then Close. The Profile has now been edited successfully to remove an existing named APN.

6. Run the application again. 
 
	![img](images/MxGPRSManagerTutorialImages/home_screen.png)

    Go to device's Settings -> More (in Wireless & Nwteowks) -> Mobile Networks -> Access Point Names

    ![img](images/MxGPRSManagerTutorialImages/existing_access_points.png)

    You can see that the named APN "ATT_APN_1" has been successfully removed from the device's APN list. 

6. Finally, we would test the third feature of GPRS Manager that allows us to remove all the existing APN's.

    Select the project "MxGPRSTutorial", go to the Profile Manager and click edit button as we did in previous steps.

    Select "Remove all existing APN's" feature from the "APN Action" drop-down of GPRS Profile.

    ![img](images/MxGPRSManagerTutorialImages/remove_all_apn.jpg)

    Click Apply, Finish and then Close buttons.

7. Now Run the application for the final time to ensure all APN's are removed from the device's APN list.

    ![img](images/MxGPRSManagerTutorialImages/home_screen.png)

    To verify, go to device's Settings -> More (in Wireless & Nwteowks) -> Mobile Networks -> Access Point Names 
  
	![img](images/MxGPRSManagerTutorialImages/all_apn_removed.png)

    You can now see that all the APN's have been successfully removed from the device's APN list.

    This is how the GPRS manager lets us configure Access Points of the Motorola Enterprise Android device.

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
Now that you have learned how to configure the Access Points on your Motorola Enterprise Android devices through applications, let us try to understand and implement some of the other Mx features. So in the next tutorial, we will concentrate on the "Access Manager" Mx feature and try to explore this feature by creating a tutorial.

## Download the Source
The project source to this tutorial can be [downloaded (Internet Connection Required)](https://s3.amazonaws.com/emdk/Tutorials/EMDKMxAppManagerTutorial.zip).