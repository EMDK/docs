# Configure Wi-Fi settings and Network Profiles using Mx Wi-Fi:

## Overview

This guide will walk you through creating an EMDK For Android application that will use Mx features introduced in EMDK V 2.1 API to perform device configurations. Mx represents a suite of Enterprise Features on top of standard, commercially available Android Open Source Project. So this tutorial will focus on [Wi-Fi Manager](../guide/profiles/refWiFiManager) API, which allows you to manage your device's Wi-Fi settings as well as manage the network profiles to be used for connecting and remembering networks. Overall, Wi-Fi Manager supports following features:

* **[Wi-Fi Enable/Disable](https://developer.motorolasolutions.com/docs/DOC-2290#wifi-enable)**
* **[Country Selection Auto/Manual](https://developer.motorolasolutions.com/docs/DOC-2290#country-selection-automanual)**
* **[Country to use for Wi-Fi regulatory setting](https://developer.motorolasolutions.com/docs/DOC-2290#country)**
* **[RF Bands to use](https://developer.motorolasolutions.com/docs/DOC-2290#rf-band)**
* **[Wi-Fi Channels](https://developer.motorolasolutions.com/docs/DOC-2290#wifi-channel)**
* **[Wi-Fi Sleep Policy](https://developer.motorolasolutions.com/docs/DOC-2290#sleep-policy)**
* **[Network Notification](https://developer.motorolasolutions.com/docs/DOC-2290#network-notification)**
* **[Network Action](https://developer.motorolasolutions.com/docs/DOC-2290#network-action)**
* **[Wi-Fi Profiles](https://developer.motorolasolutions.com/docs/DOC-2290#wifi-profiles)**
* **[Encryption Details](https://developer.motorolasolutions.com/docs/DOC-2290#encryption-details)**
* **[Authentication Details](https://developer.motorolasolutions.com/docs/DOC-2290#authentication-details)**
* **[Advanced Options](https://developer.motorolasolutions.com/docs/DOC-2290#advanced-options)**


> Note: In order to apply these settings, Wi-Fi must be enabled. If you do not specify Wi-Fi Enable in the profile you will get an error when attempting to apply other settings if the device’s Wi-Fi is not already enabled.

 
All of the above features can be configured the way you want through EMDK Profile Wizard as well as programmatically using Wi-Fi Manager API. In this tutorial, We would be implementing some of the these features through EMDK Wizard.

> Note: In this tutorial, we will be implementing everything through EMDK Wizard. Programmatic change using API is not in the scope of this tutorial.

The tutorial will be designed to configure Wi-Fi settings with following features and the sequence:

* Enable Wi-Fi
* Add Network 
* Connect to an existing network
* Disconnect from an existing network
* Remove an existing Network
   
###Prerequisites

* Java Development Kit (JDK)
* Android Developer Tools (ADT)
* Motorola EMDK for Android V 2.1 and above
* Wi-Fi of your Motorola Enterprise Android device must be enabled.

For more information about setting up the EMDK please see the EMDK Overview.

## Creating The Project
1.  Create new Android Application project.
  
    ![img](images/MxPowerManagerTutorialImages/create_new_app.jpg)

2.  Assign names for the application and package.
 
3.  Set the minimum required SDK to "API 16: Android 4.1 (Jelly Bean)".
  
    ![img](images/MxPowerManagerTutorialImages/set_app_name.jpg)

4.  Click "Next".
  
    ![img](images/MxPowerManagerTutorialImages/configure_project.jpg)
  
5.  Click "Next".
  
    ![img](images/MxPowerManagerTutorialImages/configure_launcher_icon.jpg)
  
6.  Click "Next".  

7.  Select "Empty Activity" Click "Next".  

    ![img](images/MxPowerManagerTutorialImages/create_activity.jpg)  

    >Note:  
    >If "Empty Activity" is not available make sure you are using "Android SDK Tools 22.6.3" and "Android SDK Platform Tools 19.0.2"

7.  Click "Next".  

    ![img](images/MxPowerManagerTutorialImages/empty_activity.jpg)
  
8.  Click "Finish".

    >Note:  
    >Currently there is nothing under "\assets" folder.  
    
    ![img](images/MxPowerManagerTutorialImages/main_activity.jpg)  

## Enabling the EMDK
1. Select the project.
  
2. Select "File -> Properties" or right click on the project and select "Properties".
  
    ![img](images/MxPowerManagerTutorialImages/project_properties_button_1.jpg)
   
    ![img](images/MxPowerManagerTutorialImages/project_properties_button_2.jpg)
   
3. Click "Android" from the left pane.
  
    ![img](images/MxPowerManagerTutorialImages/project_properties.jpg)
 
4. Select "EMDK APIs 2.1" from the list of Project Build Targets.
  
    ![img](images/MxPowerManagerTutorialImages/project_properties_build_target.jpg)  

    >Note:  
    >If "EMDK APIs 2.1" is not on the list of Build Targets, please confirm you have installed Android API 16 SDK Platform.

5. Click "Apply" and "OK".  
    >Note:  
    >The EMDK library will be added to the project.  
    
    ![img](images/MxPowerManagerTutorialImages/emdk_library_added.jpg) 

    >Note:
    >If you are using Java 1.7 as the compiler, you may see this error
    
    ![img](images/MxPowerManagerTutorialImages/compiler_error.jpg) 

    > To correct this, you will need to change the compiler to use 1.6
    
    > * Click on the Java Compiler
    > * Click Enable project specific settings
    > * Select 1.6 for Compiler compliance level
    
    ![img](images/MxPowerManagerTutorialImages/java_compiler_settings.jpg) 

## Adding The Wi-Fi Manager Profile Feature
1. Select "WiFiManagerTutorial" project from Package Explorer.
    
2. Click "EMDK" menu and select "Profile Manager".
  
    ![img](images/MxPowerManagerTutorialImages/profile_manager_button.jpg)
  
3. The EMDK Profile Manager Window will appear.
  
    ![img](images/MxPowerManagerTutorialImages/emdk_profile_manager.jpg)
  
4. Click "Create" and assign a name for the profile (Ex: WiFiProfile).
  
    ![img](images/MxPowerManagerTutorialImages/create_new_profile.jpg)
  
5. Click "Create". The Profile Editor window will appear.
  
    ![img](images/MxPowerManagerTutorialImages/profile_editor.jpg)
  
6. Select the "Wi-Fi" feature from the list and click "Right Arrow". Using this feature you can manage your device's Wi-Fi settings as well as the network profiles to be used for connecting and remembering networks as explained earlier.

    > Note: This profile editor of EMDK V 2.1 has some new features compared to previous EMDK V 2.0

The earlier features are categorized on the basis of their functionality. (For Example - Data Input can be done in two ways viz Barcode and MSR). The new features introduced in EMDK V 2.1 are MX (Mobility Extension) interfaces that are used to configure the Motorola enterprise Android devices based on requirements.      
 
 
7. Click on the Wi-Fi feature. The parameter list will be populated.  
  
    ![img](images/MxPowerManagerTutorialImages/select_wifi_feature.jpg)

8. You can see various settings of Wi-Fi feature in the wizard as mentioned initially. You can configure all these settings the way you want in the wizard as well as programmatically.

    Provide some name in the "Name" field (Ex. MyWiFi). The "Name" field is used to identify each feature, which is required when editing features programmatically. You can also keep the "Name" field empty.
    
    So lets start implementing the settings one by one as mentioned earlier. Currenly, the Wi-Fi of the device is disabled. Before configuring any settings, we must enable the Wi-Fi first. So we will start with the first step by enabling Wi-Fi. Select Wi-Fi Enable drop-down and click "Enable" option. This will enable your device's Wi-Fi.  

    ![img](images/MxPowerManagerTutorialImages/wifi_enable_dropdown.jpg)

    ![img](images/MxPowerManagerTutorialImages/wifi_enabled.jpg)
    
9. Now we will add a new Wi-Fi network. In order to do that, select "Network Action" drop-down in the "Manage Wi-Fi Radio-Specific Settings" section. This drop-down will display various network opratons that could be performed on your device's Wi-Fi.

    > Note: Keep other settings unchanged. Although you can configure any settings if you wish to.

    ![img](images/MxPowerManagerTutorialImages/network_action_dropdown.jpg)

    Click on "Add a New Network" option and it will show configurable settings related to this option.  

    ![img](images/MxPowerManagerTutorialImages/add_new_network.jpg)
    
10. You can select different types of "Security Mode" (Open, Personal, Enterprise) and configure settings associated with each type. For this tutorial, we will keep the "Security Mode" as "Personal".  
  
    ![img](images/MxPowerManagerTutorialImages/personal_network.jpg)

    Now enter the details for the fields provided. Provide SSID as "rholink-ap". Select "WPA Mode" as WPA. Enter the passphrase, which is the password for authentication on your network. Check the "Protect Key?" checkbox so that the passphrase is protected. Keep the other settings unchanged. 

    > Note: The configurations may very depending on the network you add.

    ![img](images/MxPowerManagerTutorialImages/personal_network_details_added.jpg)  
  
9.  Click Apply and Finish. 

    ![img](images/MxPowerManagerTutorialImages/wifi_profile_created.jpg)  

10. Click "Close".   

    >Note:  
    >Now the "EMDKConfig.xml" is created under "\assets" folder. This file will contain a definition of all of your profiles that you create. 
    
    ![img](images/MxPowerManagerTutorialImages/emdk_config_file.jpg)
  
12. You can inspect the EMDKConfig.xml to see it is reflecting the changes made to the parameters via EMDK Profile Manager GUI earlier.  However, it is advised that this file not be manually updated and only be controlled via the Profile Manager. So you can see the entry of all elements in EMDKConfig.xml file that we configured.

    ![img](images/MxPowerManagerTutorialImages/emdk_config_file_entries.jpg)    

## Enabling Android Permissions
1. Modify the Application's Manifest.xml to use the EMDK library and to set permission for the EMDK.
  
    ![img](images/MxPowerManagerTutorialImages/manifest_file.jpg)

    You must first enable permissions for 'com.symbol.emdk.permission.EMDK':  
   
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/> 

    Then you must enable the library:  
      
        :::xml
        <uses-library android:name="com.symbol.emdk"/>

    When done, your manifest.xml should look like:

    ![img](images/MxPowerManagerTutorialImages/manifest_permissions_added.jpg) 

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

    We will now create some global variables to hold the profile name as well as instance objects of EMDKManager and ProfileManager. We will also create global variables to hold the UI elements and values that are required in this application. These variables would be used throughout the code. 

    >Note:
    >Verify the Profile name in the code with the one created in the Profile Manager. They both should be identical.    
    
        :::java
        // Assign the profile name used in EMDKConfig.xml
	    private String profileName = "WiFiProfile";

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
     
     ![img](images/MxPowerManagerTutorialImages/on_create_added.jpg) 

2. Now we need to use the `onOpened` method to get a reference to the EMDKManager. The EMDKListener interface will trigger this event when the EMDK is ready to be used. The EMDKListener interface must be implemented in order to get a reference to the EMDKManager APIs. This event will pass the EMDKManager instance and we assign it to the global variable `emdkManager` that we created in the previous steps. We then use that instance object to get an instance of ProfileManager and assign it to the global variable `profileManager`. This is how we will interface with the APIs in the rest of the code:

    > Note: 
    > Rename the argument of `onOpened` method from `arg0` to `emdkManager`  

        :::java
        // This callback will be issued when the EMDK is ready to use.
		statusTextView.setText("EMDK open success.");

		this.emdkManager = emdkManager;

		// Get the ProfileManager object to process the profiles
		profileManager = (ProfileManager) emdkManager
				.getInstance(EMDKManager.FEATURE_TYPE.PROFILE);         
    
    Now that we have a reference to ProfleManager, we use it to install and activate the profile we built earlier using the `processProfile` method. We could have also performed this action at a different time, say when someone pressed a button, but we chose to do it as soon as the EMDK was ready:  

        :::java
        this.emdkManager = emdkManager;

		// Get the ProfileManager object to process the profiles
		profileManager = (ProfileManager) emdkManager
				.getInstance(EMDKManager.FEATURE_TYPE.PROFILE);

		if (profileManager != null) {
			String[] modifyData = new String[1];

			// Call processPrfoile with profile name and SET flag to create the
			// profile. The modifyData can be null.
			EMDKResults results = profileManager.processProfile(profileName,
					ProfileManager.PROFILE_FLAG.SET, modifyData);
			
			if (results.statusCode == EMDKResults.STATUS_CODE.SUCCESS) {
				Toast.makeText(MainActivity.this, "Operation Successful...",
						Toast.LENGTH_SHORT).show();
			} else {
				Toast.makeText(MainActivity.this, "Operation Failed...",
						Toast.LENGTH_SHORT).show();
			}
		}  

    Your complete onOpened method should now look like this:
    
    ![img](images/MxPowerManagerTutorialImages/on_opened_method.jpg)  
    
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

    ![img](images/MxPowerManagerTutorialImages/on_destroy_method.jpg) 

That's it!!! We are done with all the coding and configuration part that will allow us to Enable the Wi-Fi and add a network specified in the EMDK Profile Wizard.
 
## Running the Application

1. Connect Motorola Solutions Android device (having the latest EMDK runtime) to the USB port. 

    > Note:   
    > Make sure the device is in USB debug.

2. Before running the application, We will make sure that Wi-Fi is disabled. Go to "Settings" and disable the Wi-Fi by toggling the status. 
  
	![img](images/MxPowerManagerTutorialImages/disable_wifi.png)
  
4. Run the application. If the configurations in the wizard are successfully applied, the app will display a success [Toast](http://developer.android.com/guide/topics/ui/notifiers/toasts.html).

    ![img](images/MxPowerManagerTutorialImages/home_screen.png)

    The Toast displayed a success message. It means it enabled the Wi-Fi and added a network named "rholink-ap" that we had configured in the wizard earlier in this tutorial.

    To verify, go to Settings. You can see the Wi-Fi is enabled now. 
  
	![img](images/MxPowerManagerTutorialImages/wifi_on.png)

    Tap on Wi-Fi option and you can see that the "rholink-ap" network has been successfully added in the list of available networks. The lock icon near Wi-Fi image indicates that it is a secured password protected network.

    ![img](images/MxPowerManagerTutorialImages/rho_link_added.png)

    > Note: This setting has just added a new network. We are not yet connected to this new network that we added.  

5. Now we will connect to an existing Wi-Fi network. You can connect to any of the existing Wi-Fi network but we will connect to the one we just added (rholink-ap). So open the profile manager by selecting our project just like we did earlier for adding a network. 
 
	![img](images/MxPowerManagerTutorialImages/wifi_profile_created.jpg)

    Click on "Edit" button and it will display profile editor window to edit previous configurations.

    ![img](images/MxPowerManagerTutorialImages/edit_profile.jpg)

    Choose "Network Action" as "Connect to an Existing Network" from the drop-down.

    ![img](images/MxPowerManagerTutorialImages/connect_existing_network.jpg)

    Enter SSID of the network you want to connect to. In this tutorial we will connect to network with SSID "rholink-ap" that we created earlier.
 
    ![img](images/MxPowerManagerTutorialImages/ssid_provided.jpg)

    Click Apply, Finish and Close to save the configurations.  

6. Run the application again.

    ![img](images/MxPowerManagerTutorialImages/home_screen.png)

    The app displayed a success message. So to verify, go to Settings -> Wi-Fi. You can see that Wi-Fi is successfully connected to the network with SSID "rholink-ap", which we provided in the wizard.
   
    ![img](images/MxPowerManagerTutorialImages/wifi_connected.png)

7. We will now disconnect the Wi-Fi from an existing network through wizard. Go to Profile Manager and click Edit button just like we did in previous operations.

    This time select the "Network Action" as "Disconnect from an Existing Network". Enter the SSID of the network you wish to disconnect from. In this tutorial we will enter the SSID as "rholink-ap" to which we are currently connected.

    ![img](images/MxPowerManagerTutorialImages/disconnect_from_network.jpg)

    Click Apply, Finish and Close.

8. Run the application. 

    ![img](images/MxPowerManagerTutorialImages/home_screen.png)

    The success [Toast](http://developer.android.com/guide/topics/ui/notifiers/toasts.html) indicates that the operation was successful.

    Let us verify that. Go to Settings -> Wi-Fi and you will see that the device has successfully disconneted from the network "rholink-ap".

    ![img](images/MxPowerManagerTutorialImages/disconnected_from_network.png)

9. Finally, we will remove an existing network through the EMDK Profile wizard. So again go to Profile Manager and click on "Edit" button. Select "Network Action" as "Remove an Existing Network". This time we will provide some other SSID just for variation. 

    ![img](images/MxPowerManagerTutorialImages/ssid_to_remove.png)

    In the above screen, you can see a network with SSID "Deven". Let us remove this network from the list by providing SSID "Deven" in the wizard.

    ![img](images/MxPowerManagerTutorialImages/remove_existing_network.jpg)

    Click Apply, Finish and Close.

10. Run the application. 

    ![img](images/MxPowerManagerTutorialImages/home_screen.png)

    The success message indicates that the network was removed successfully. So go to Settings -> Wi-Fi and you will not see the network with SSID "Deven" in the list of available networks.

    ![img](images/MxPowerManagerTutorialImages/network_removed.png)

    > Note: If the network is within the range then it might appear again in the list as device scans periodically.

    So these are some of the configurations we implemented using Wi-Fi Manager feature of Mx. You can try any configurations and manage your device's Wi-Fi settings as well as network profiles.


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
Now that you have learned how to configure your device's Wi-Fi settings as well as network profiles on your Motorola Enterprise Android devices through applications using Mx Wi-Fi feature, let us try to understand and implement some of the other Mx features. So in the next tutorial, we will concentrate on the "Certificate Manager" feature and try to explore this feature by creating a tutorial.

## Download the Source
The project source to this tutorial can be [downloaded (Internet Connection Required)](https://s3.amazonaws.com/emdk/Tutorials/EMDKMxAppManagerTutorial.zip).