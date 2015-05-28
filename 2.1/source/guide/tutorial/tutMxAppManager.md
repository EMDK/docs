# Application Management with AppManger Profile Feature

## Overview

This guide will walk you through creating an EMDK For Android application that will use Mx features introduced in EMDK V 2.1 API to perform device configurations. Mx represents a suite of Enterprise Features on top of standard, commercially available Android Open Source Project. So this tutorial will help configuring and managing device applications using the AppManager feature of EMDK Profiles. 

Using this feature, a user can install, uninstall or upgrade any application. Moreover a user can select any application as a default launcher.  

###Prerequisites

* Java Development Kit (JDK)
* Android Developer Tools (ADT)
* Motorola EMDK for Android V 2.1 and above 

For more information about setting up the EMDK please see the EMDK Overview.

## Creating The Project
1.  Create new Android Application project.
  
    ![img](images/MxAppManagerTutorialImages/create_new_app.jpg)

2.  Assign names for the application and package.
 
3.  Set the minimum required SDK to "API 16: Android 4.1 (Jelly Bean)".
  
    ![img](images/MxAppManagerTutorialImages/set_app_name.jpg)

4.  Click "Next".
  
    ![img](images/MxAppManagerTutorialImages/configure_project.jpg)
  
5.  Click "Next".
  
    ![img](images/MxAppManagerTutorialImages/configure_launcher_icon.jpg)
  
6.  Click "Next".  

7.  Select "Empty Activity" Click "Next".  

    ![img](images/MxAppManagerTutorialImages/create_activity.jpg)  

    >Note:  
    >If "Empty Activity" is not available make sure you are using "Android SDK Tools 22.6.3" and "Android SDK Platform Tools 19.0.2"

7.  Click "Next".  

    ![img](images/MxAppManagerTutorialImages/empty_activity.jpg)
  
8.  Click "Finish".

    >Note:  
    >Currently there is nothing under "\assets" folder.  
    
    ![img](images/MxAppManagerTutorialImages/main_activity.jpg)  

## Enabling the EMDK
1. Select the project.
  
2. Select "File -> Properties" or right click on the project and select "Properties".
  
    ![img](images/MxAppManagerTutorialImages/project_properties_button_1.jpg)
   
    ![img](images/MxAppManagerTutorialImages/project_properties_button_2.jpg)
   
3. Click "Android" from the left pane.
  
    ![img](images/MxAppManagerTutorialImages/project_properties.jpg)
 
4. Select "EMDK APIs 2.1" from the list of Project Build Targets.
  
    ![img](images/MxAppManagerTutorialImages/project_properties_build_target.jpg)  

    >Note:  
    >If "EMDK APIs 2.1" is not on the list of Build Targets, please confirm you have installed Android API 16 SDK Platform.

5. Click "Apply" and "OK".  
    >Note:  
    >The EMDK library will be added to the project.  
    
    ![img](images/MxAppManagerTutorialImages/emdk_library_added.jpg) 

    >Note:
    >If you are using Java 1.7 as the compiler, you may see this error
    
    ![img](images/MxAppManagerTutorialImages/compiler_error.jpg) 

    > To correct this, you will need to change the compiler to use 1.6
    
    > * Click on the Java Compiler
    > * Click Enable project specific settings
    > * Select 1.6 for Compiler compliance level
    
    ![img](images/MxAppManagerTutorialImages/java_compiler_settings.jpg) 

## Adding The AppManager Profile Feature
1. Select "EMDKMxAppManagerTutorial" project from Package Explorer.
    
2. Click "EMDK" menu and select "Profile Manager".
  
    ![img](images/MxAppManagerTutorialImages/profile_manager_button.jpg)
  
3. The EMDK Profile Manager Window will appear.
  
    ![img](images/MxAppManagerTutorialImages/emdk_profile_manager.jpg)
  
4. Click "Create" and assign a name for the profile (Ex: MxAppManagerProfile).
  
    ![img](images/MxAppManagerTutorialImages/create_new_profile.jpg)
  
5. Click "Create". The Profile Editor window will appear.
  
    ![img](images/MxAppManagerTutorialImages/profile_editor.jpg)
  
6. Select the "App Manager" feature from the list and click "Right Arrow". Using this feature you can perform various operations on your apps in the Motorola enterprise Android device. These operations could be installing apps, uninstalling apps, upgrading apps and setting specific app as default launcher. 

    > Note: This profile editor of EMDK V 2.1 has some new features compared to previous EMDK V 2.0
The earlier features are categorized on the basis of their functionality. (For Example - Data Input can be done in two ways viz Barcode and MSR). The new features are MX (Mobility Extension) interfaces that are used to configure the Motorola enterprise Android devices based on requirements.      
 
 
7. Click on the App Manager feature. The parameter list will be populated. 
  
    ![img](images/MxAppManagerTutorialImages/select_app_manager_feature.jpg)
  
8. Provide name for this feature in order to modify this feature programatically (Ex. AppManager). Now let us install an application using the install parameter of the app manager by providing the apk path and name of the application in the specified field. (For example: /storage/sdcard1/Herald.apk)

	> Note: The path of apk could be different on different devices.
  
    ![img](images/MxAppManagerTutorialImages/app_manager_install_value.jpg)
  
9.  Click Apply and Finish. 

    ![img](images/MxAppManagerTutorialImages/app_manager_profile_created.jpg)  

10. Click "Close".   

    >Note:  
    >Now the "EMDKConfig.xml" is created under "\assets" folder. This file will contain a definition of all of your profiles that you create. 
    
    ![img](images/MxAppManagerTutorialImages/emdk_config_file.jpg)
  
11. You can inspect the EMDKConfig.xml to see it is reflecting the changes made to the parameters via EMDK Profile Manager GUI earlier.  However, it is advised that this file not be manually updated and only be controlled via the Profile Manager. So you can see the entry of the install feature of App Manager and its path on SD card as parameter that we entered earlier in the profile creation.

    ![img](images/MxAppManagerTutorialImages/emdk_config_file_entries.jpg)    

## Enabling Android Permissions
1. Modify the Application's Manifest.xml to use the EMDK library and to set permission for the EMDK.
  
    ![img](images/MxAppManagerTutorialImages/manifest_file.jpg)

    You must first enable permissions for 'com.symbol.emdk.permission.EMDK':  
   
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/> 

    Then you must enable the library:  
      
        :::xml
        <uses-library android:name="com.symbol.emdk"/>

    When done, your manifest.xml should look like:

    ![img](images/MxAppManagerTutorialImages/manifest_permissions_added.jpg) 

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

    We will now create some global variables to hold the profile name as well as instance objects of EMDKManager and ProfileManager that we will use throughout the code:  
    
        :::java
        //Assign the profile name used in EMDKConfig.xml  
        private String profileName = "MxAppManagerProfile";  
          
        //Declare a variable to store ProfileManager object  
        private ProfileManager profileManager = null;  
          
        //Declare a variable to store EMDKManager object  
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
     
     ![img](images/MxAppManagerTutorialImages/on_create_added.jpg) 

2. Now we need to use the `onOpened` method to get a reference to the EMDKManager. The EMDKListener interface will trigger this event when the EMDK is ready to be used. This must be implemented in order to get a reference to the EMDKManager APIs. This event will pass the EMDKManager instance and we assign it to the global variable `emdkManager` that we created in the previous steps. We then use that instance object to get an instance of ProfileManager and assign it to the global variable `profileManager`. This is how we will interface with the APIs in the rest of the code:  

        :::java
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
						"App successfully installed...", Toast.LENGTH_SHORT)
						.show();
			} else {
				Toast.makeText(MainActivity.this,
						"Profile initilization failed", Toast.LENGTH_SHORT)
						.show();
			}
		}  

    Your onOpened method should now look like this:
    
    ![img](images/MxAppManagerTutorialImages/on_opened_method.jpg)  
    
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

    ![img](images/MxAppManagerTutorialImages/on_destroy_method.jpg) 

## Running the Application

1. That's it, We are done with the configurations and coding. Now let's run the application.

2. Connect Motorola Solutions Android device (having the latest EMDK runtime) to the USB port. The Herald application is not present on the device before running this application.

    >Note:   
    >Make sure the device is in USB debug.
3. Run the application. The app displays a Toast with a success message.
  
	![img](images/MxAppManagerTutorialImages/app_run.png)
  
4. You can see that the Herald app has now been installed on the device whose apk path we had provided earlier during profile creation.
  
	![img](images/MxAppManagerTutorialImages/app_installed.png)

5. Similarly we can leverage the other features (uninstall, upgrade, set as default launcher) of the App Manager by setting appropriate parameters while creating the profile.

	![img](images/MxAppManagerTutorialImages/other_app_manager_features.jpg)  

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
Now that you have learned how to configure applications in the device using Mx App Manager feature, let us try some configuring some of the other Mx feature through profile creation. So in the next tutorial, we will concentrate on the "Power Manager" feature and try to explore this feature by creating a tutorial.

## Download the Source
The project source to this tutorial can be [downloaded (Internet Connection Required)](https://s3.amazonaws.com/emdk/Tutorials/EMDKMxAppManagerTutorial.zip).