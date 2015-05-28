# Setting The Clock With ProfileManager
## Overview

This guide will walk you through creating an EMDK For Android application that will use Mx features introduced in EMDK V 2.1 API to perform device configurations. Mx represents a suite of Enterprise Features on top of standard, commercially available Android Open Source Project. So this tutorial will configure the device's date and time using the Mx Clock feature through Profile Manager of the EMDK for Android. As of now, there is no generally available exposed API Surface for Mx to configure these features dynamically. Hence we would be doing this through Profile Manager. 

###Prerequisites

* Java Development Kit (JDK)
* Android Developer Tools (ADT)
* Motorola EMDK for Android V 2.1 and above 

For more information about setting up the EMDK please see the EMDK Overview.

## Creating The Project
1.  Create new Android Application project.
  
    ![img](images/MxClockTutorialImages/create_new_app.jpg)

2.  Assign names for the application and package.
 
3.  Set the minimum required SDK to "API 16: Android 4.1 (Jelly Bean)".
  
    ![img](images/MxClockTutorialImages/set_app_name.jpg)

4.  Click "Next".
  
    ![img](images/MxClockTutorialImages/configure_project.jpg)
  
5.  Click "Next".
  
    ![img](images/MxClockTutorialImages/configure_launcher_icon.jpg)
  
6.  Click "Next".  

7.  Select "Empty Activity" Click "Next".  

    ![img](images/MxClockTutorialImages/create_activity.jpg)  

    >Note:  
    >If "Empty Activity" is not available make sure you are using "Android SDK Tools 22.6.3" and "Android SDK Platform Tools 19.0.2"

7.  Click "Next".  

    ![img](images/MxClockTutorialImages/empty_activity.jpg)
  
8.  Click "Finish".

    >Note:  
    >Currently there is nothing under "\assets" folder.  
    
    ![img](images/MxClockTutorialImages/main_activity.jpg)  

## Enabling the EMDK
1. Select the project.
  
2. Select "File -> Properties" or right click on the project and select "Properties".
  
    ![img](images/MxClockTutorialImages/project_properties_button_1.jpg)
   
    ![img](images/MxClockTutorialImages/project_properties_button_2.jpg)
   
3. Click "Android" from the left pane.
  
    ![img](images/MxClockTutorialImages/project_properties.jpg)
 
4. Select "EMDK APIs 2.1" from the list of Project Build Targets.
  
    ![img](images/MxClockTutorialImages/project_properties_build_target.jpg)  

    >Note:  
    >If "EMDK APIs 2.1" is not on the list of Build Tagets, please confirm you have installed Android API 16 SDK Platform.

5. Click "Apply" and "OK".  
    >Note:  
    >The EMDK library will be added to the project.  
    
    ![img](images/MxClockTutorialImages/emdk_library_added.jpg) 

    >Note:
    >If you are using Java 1.7 as the compiler, you may see this error
    
    ![img](images/MxClockTutorialImages/compiler_error.jpg) 

    > To correct this, you will need to change the compiler to use 1.6
    
    > * Click on the Java Compiler
    > * Click Enable project specific settings
    > * Select 1.6 for Compiler compliance level
    
    ![img](images/MxClockTutorialImages/java_compiler_settings.jpg) 

## Adding an Clock Profile
1. Select "EMDKMxClockTutorial" project from Package Explorer.
    
2. Click "EMDK" menu and select "Profile Manager".
  
    ![img](images/MxClockTutorialImages/profile_manager_button.jpg)
  
3. The EMDK Profile Manager Window will appear.
  
    ![img](images/MxClockTutorialImages/emdk_profile_manager.jpg)
  
4. Click "Create" and assign a name for the profile (Ex: MxClockProfile).
  
    ![img](images/MxClockTutorialImages/create_new_profile.jpg)
  
5. Click "Create". The Profile Editor window will appear.
  
    ![img](images/MxClockTutorialImages/profile_editor.jpg)
  
6. 	Select the "Clock" feature from the list and click "Right Arrow". Using this feature you can configure the date and time of the Motorola enterprise Android device. 

    > Note: This profile editor of EMDK V 2.1 has some new features compared to previous EMDK V 2.0
The earlier features are categorized on the basis of their functionality. (For Example - Data Input can be done in two ways viz Barcode and MSR). The new features are MX (Mobility Extension) interfaces that are used to configure the Motorola enterprise Android devices based on requirements.        

7. Click on Clock feature. The parameter list will be populated.
  
    ![img](images/MxClockTutorialImages/clock_feature_parameters.jpg)
  
8. Enter the TimeZone, Date and Time you wish to enter. All the timings need to be in UTC. It means if you want to set the Timezone to PST, you will need to set the clock to GMT time and it will automatically change it to the local time for you.

    > Note: It means the time you enter always has to be in GMT.  
  
    ![img](images/MxClockTutorialImages/clock_parameters_values.jpg)
  
	ForEample:  
	* **Name**: MxClock
	* **TimeZone**: GMT-07:00
	* **Date**: 2014-12-22
	* **Time**: 20:00:00

    Here , we have set the Timezone as GMT-07:00. It means if we want to set the PST time of 1PM, we have to set the GMT time as 8PM (20:00:00 in 24 hour format) and it will automatically set the PST time of 1PM for us. 

9.  Click Apply and Finish. 

    ![img](images/MxClockTutorialImages/clock_profile_created.jpg)  

10. Click "Close".   

    >Note:  
    >Now the "EMDKConfig.xml" is created under "\assets" folder. This file will contain a definition of all of your profiles that you create. 
    
    ![img](images/MxClockTutorialImages/emdk_config_file.jpg)
  
11. You can inspect the EMDKConfig.xml to see it is reflecting the changes made to the parameters via EMDK Profile Manager GUI earlier.  However, it is advised that this file not be manually updated and only be controlled via the Profile Manager. So you can see the entry of the clock feature and its parameters that we entered earlier in the profile creation.

    ![img](images/MxClockTutorialImages/emdk_config_file_entries.jpg)    

## Enabling Android Permissions
1. Modify the Application's Manifest.xml to use the EMDK library and to set permission for the EMDK.
  
    ![img](images/MxClockTutorialImages/manifest_file.jpg)

    You must first enable permissions for 'com.symbol.emdk.permission.EMDK':  
   
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/> 

    Then you must enable the library:  
      
        :::xml
        <uses-library android:name="com.symbol.emdk" />

    When done, your manifest.xml should look like:

    ![img](images/MxClockTutorialImages/manifest_permissions_added.jpg)

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
        private String profileName = "MxClockProfile";  
          
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
     
     ![img](images/MxClockTutorialImages/on_create_added.jpg) 

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
						"Device Clock set successfully...", Toast.LENGTH_SHORT)
						.show();
			} else {
				Toast.makeText(MainActivity.this,
						"Profile initilization failed", Toast.LENGTH_SHORT)
						.show();
			}
		}  

    Your onOpened method should now look like this:
    
    ![img](images/MxClockTutorialImages/on_opened_method.jpg)  
    
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

    ![img](images/MxClockTutorialImages/on_destroy_method.jpg)  

## Running the Application

1. That's it, We are done with the configurations and coding. Now let's run the application.
2. Connect Motorola Solutions Android device (having the latest EMDK runtime) to the USB port.
    >Note:   
    >Make sure the device is in USB debug.
3. Note the date and time of the device before running the application.

	![img](images/MxClockTutorialImages/date_time_before_running.png)

3. Run the application. If everything goes well, the app will show a success message. You can now see the time of the device has been changed to the PST timezone of 1PM as we had set it to the GMT-07:00, 8PM (20:00:00 in 24 hour format) in the wizard.
  
	![img](images/MxClockTutorialImages/time_after_running_app.png)
  
4. You can also see the date and time of the device has now been changed accordingly when you open the notification bar.
  
	![img](images/MxClockTutorialImages/date_time.png)  

##Important Programming Tips##

1. It is required to do the following changes in the application's AndroidManifest.xml:  
  
    >Note:
    >* Include the permission for EMDK:  
    
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/>
    
    >Note: * Use the EMDK library:  
    
        :::xml
        <uses-library android:name="com.symbol.emdk"/>
  
2. Installing the EMDK for Android application without deploying the EMDK runtime on the Motorola Solutions Android  device will fail because of missing shared library on the device. 
4. Use the DataWedge v1.7.12 or higher version to test the ProfileManager.processProfile() for DataWedge profiles.

## What's Next
Now that you have learned how to configure date and time using Mx feature, let us try some configuring some of the other Mx feature through profile creation. So in the next tutorial, we will concentrate on the "App Manager" feature and try to explore this feature by creating a tutorial.

## Download the Source
The project source to this tutorial can be [downloaded (Internet Connection Required)](https://s3.amazonaws.com/emdk/Tutorials/EMDKMxClockTutorial.zip).