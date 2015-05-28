# Set Default Launcher Application Using App Manager 

## Overview

This guide will walk you through creating an EMDK For Android application that will use Mx features introduced in EMDK V 2.1 API to perform device configurations. Mx represents a suite of Enterprise Features on top of standard, commercially available Android Open Source Project. So this tutorial will focus on one of the functions of App Manager API, which allows user to set any launcher application as a default launcher application using App Manager API.

The tutorial would enable user to set an application as default launcher using:

**1.  EMDK Profile Manager wizard:** 

Initially, we will configure Motorola's EHS (Enterprise Home Screen) launcher application as the default launcher application using Profile Manager wizard. [Enterprise Home Screen (EHS)](https://developer.motorolasolutions.com/docs/DOC-1875) is a replacement application launcher, for Motorola Solutions Android devices, designed to allow only specified applications to be launched. So this launcher will replace the existing launcher application in the device.

**2. App Manager API:**

Once the EHS has been set as the dafault launcher application, we will modify this setting by setting another application as default launcher through the code using App Manager API for default launcher. You can use any applicable launcher application. We will use [Galaxy Launcher](http://www.appsapk.com/galaxy-launcher/) application to set  as default launcher application through code in this tutorial.

This allows you to understand how to configure parameters using Profile Manager and modify it using App Manager API.   
	
 
###Prerequisites

* Java Development Kit (JDK)
* Android Developer Tools (ADT)
* Motorola EMDK for Android V 2.1 and above
* Download and install the required launcher applications before getting started with the tutorial. 

For more information about setting up the EMDK please see the EMDK Overview.

## Downloading required Launcher Applications:
As discussed above, we will now download and install the two launcher applications ([EHS](https://developer.motorolasolutions.com/docs/DOC-1875) and [Galaxy Launcher](http://www.appsapk.com/galaxy-launcher/)).

* You can download Enterprise Home Screen application [here](https://portal.motorolasolutions.com/Support/US-EN/Resolution?solutionId=92627&redirectForm=search&searchQuery=%3FsearchType%3Dsimple%26searchTerm%3DDownload%20EHS). Unzip the file to get the APK to install.
* You can download Galaxy Launcher application [here](http://www.appsapk.com/galaxy-launcher/).

Once downloaded, you can put them in SD card of the the device and install both of these launcher applications.

The App Manager API requires the Android *package name* of the application that you want to set as default launcher. If we know the package name then we can specify it in the field, but in this case we don't know as we have downloaded theses APK files from different sources.

   >Note:
   >Android device does not provide package names of the installed applications.

So we have [created an application](https://s3.amazonaws.com/emdk/Tutorials/AllInstalledApps-Source.zip) that finds all the installed applications programmatically and displays their package names along with the application name in a list.

You can [download](https://s3.amazonaws.com/emdk/Tutorials/AllInstalledApps.apk) the application and install it - or modify the [source](https://s3.amazonaws.com/emdk/Tutorials/AllInstalledApps-Source.zip) to your liking. Once installed, open the app and you can find the package names of both the applications.

So, the Package name for EHS Launcher App is **com.motorolasolutions.enterprisehomescreen**

   ![img](images/MxDefaultLauncherTutorialImages/ehs_app.jpg) 

Package name for Galaxy Launcher App is **com.epic.launcher.tw**

   ![img](images/MxDefaultLauncherTutorialImages/galaxy_launcher_app.jpg) 

## Creating The Project
1.  Create new Android Application project.
  
    ![img](images/MxDefaultLauncherTutorialImages/create_new_app.jpg)

2.  Assign names for the application and package.
 
3.  Set the minimum required SDK to "API 16: Android 4.1 (Jelly Bean)".
  
    ![img](images/MxDefaultLauncherTutorialImages/set_app_name.jpg)

4.  Click "Next".
  
    ![img](images/MxDefaultLauncherTutorialImages/configure_project.jpg)
  
5.  Click "Next".
  
    ![img](images/MxDefaultLauncherTutorialImages/configure_launcher_icon.jpg)
  
6.  Click "Next".  

7.  Select "Empty Activity" Click "Next".  

    ![img](images/MxDefaultLauncherTutorialImages/create_activity.jpg)  

    >Note:  
    >If "Empty Activity" is not available make sure you are using "Android SDK Tools 22.6.3" and "Android SDK Platform Tools 19.0.2"

7.  Click "Next".  

    ![img](images/MxDefaultLauncherTutorialImages/empty_activity.jpg)
  
8.  Click "Finish".

    >Note:  
    >Currently there is nothing under "\assets" folder.  
    
    ![img](images/MxDefaultLauncherTutorialImages/main_activity.jpg)  

## Enabling the EMDK
1. Select the project.
  
2. Select "File -> Properties" or right click on the project and select "Properties".
  
    ![img](images/MxDefaultLauncherTutorialImages/project_properties_button_1.jpg)
   
    ![img](images/MxDefaultLauncherTutorialImages/project_properties_button_2.jpg)
   
3. Click "Android" from the left pane.
  
    ![img](images/MxDefaultLauncherTutorialImages/project_properties.jpg)
 
4. Select "EMDK APIs 2.1" from the list of Project Build Targets.
  
    ![img](images/MxDefaultLauncherTutorialImages/project_properties_build_target.jpg)  

    >Note:  
    >If "EMDK APIs 2.1" is not on the list of Build Tagets, please confirm you have installed Android API 16 SDK Platform.

5. Click "Apply" and "OK".  
    >Note:  
    >The EMDK library will be added to the project.  
    
    ![img](images/MxDefaultLauncherTutorialImages/emdk_library_added.jpg) 

    >Note:
    >If you are using Java 1.7 as the compiler, you may see this error
    
    ![img](images/MxDefaultLauncherTutorialImages/compiler_error.jpg) 

    > To correct this, you will need to change the compiler to use 1.6
    
    > * Click on the Java Compiler
    > * Click Enable project specific settings
    > * Select 1.6 for Compiler compliance level
    
    ![img](images/MxDefaultLauncherTutorialImages/java_compiler_settings.jpg) 

## Adding The AppManager Profile 
1. Select "MxDefaultLauncherTutorial" project from Package Explorer.
    
2. Click "EMDK" menu and select "Profile Manager".
  
    ![img](images/MxDefaultLauncherTutorialImages/profile_manager_button.jpg)
  
3. The EMDK Profile Manager Window will appear.
  
    ![img](images/MxDefaultLauncherTutorialImages/emdk_profile_manager.jpg)
  
4. Click "Create" and assign a name for the profile (Ex: DefaultLauncherProfile).
  
    ![img](images/MxDefaultLauncherTutorialImages/create_new_profile.jpg)
  
5. Click "Create". The Profile Editor window will appear.
  
    ![img](images/MxDefaultLauncherTutorialImages/profile_editor.jpg)
  
6. Select the "App Manager" feature from the list and click "Right Arrow". Using this feature you can perform various operations on your apps in the Motorola enterprise Android device. These operations could be installing apps, uninstalling apps, upgrading apps and setting specific app as default launcher. We will be concentrating on Default Launcher feature in this tutorial. 

    > Note: This profile editor of EMDK V 2.1 has some new features compared to previous EMDK V 2.0
The earlier features are categorized on the basis of their functionality. (For Example - Data Input can be done in two ways viz Barcode and MSR). The new features are MX (Mobility Extension) interfaces that are used to configure the Motorola enterprise Android devices based on requirements.      
 
 
7. Click on the App Manager feature. The parameter list will be populated.  
  
    ![img](images/MxDefaultLauncherTutorialImages/select_app_manager_feature.jpg)

8. Now Click on the drop-down of the action field to see the supported features by App Manager. Select "Set as Default Launcher" feature.

    ![img](images/MxDefaultLauncherTutorialImages/app_manager_features.jpg)

    ![img](images/MxDefaultLauncherTutorialImages/feature_default_launcher.jpg)
  
9. Keep the 'Name' field empty. Now let us set earlier installed EHS launcher application as default launcher application. So provide the previously found package name of EHS application (com.motorolasolutions.enterprisehomescreen).

	> Note: If you have a different launcher application then provide the package name accordingly.
  
    ![img](images/MxDefaultLauncherTutorialImages/app_manager_install_value.jpg)
  
10.  Click Apply and Finish. 
    ![img](images/MxDefaultLauncherTutorialImages/app_manager_profile_created.jpg)
  
11. Click "Close".   
    >Note:  
    >Now the "EMDKConfig.xml" is created under "\assets" folder. This file will contain a definition of all of your profiles that you create. 
    
    ![img](images/MxDefaultLauncherTutorialImages/emdk_config_file.jpg)
  
12. You can inspect the EMDKConfig.xml to see it is reflecting the changes made to the parameters via EMDK Profile Manager GUI earlier.  However, it is advised that this file not be manually updated and only be controlled via the Profile Manager. So you can see the entry of the 'Set Default Launcher' feature of App Manager and the package name of the launcher application that we entered earlier in the profile creation.

    ![img](images/MxDefaultLauncherTutorialImages/emdk_config_file_entries.jpg)    

## Enabling Android Permissions
1. Modify the Application's Manifest.xml to use the EMDK library and to set permission for the EMDK.
  
    ![img](images/MxDefaultLauncherTutorialImages/manifest_file.jpg)

    You must first enable permissions for 'com.symbol.emdk.permission.EMDK':  
   
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/> 

    Then you must enable the library:  
      
        :::xml
        <uses-library android:name="com.symbol.emdk"/>

    When done, your manifest.xml should look like:

    ![img](images/MxDefaultLauncherTutorialImages/manifest_permissions_added.jpg) 

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

    >Note:
    >Verify the Profile name in the code with the one created in the Profile Manager. They both should be identical.    
    
        :::java
        //Assign the profile name used in EMDKConfig.xml  
        private String profileName = "DefaultLauncherProfile";  
          
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
     
     ![img](images/MxDefaultLauncherTutorialImages/on_create_added.jpg) 

2. Now we need to use the `onOpened` method to get a reference to the EMDKManager. The EMDKListener interface will trigger this event when the EMDK is ready to be used. This must be implemented in order to get a reference to the EMDKManager APIs. This event will pass the EMDKManager instance and we assign it to the global variable `emdkManager` that we created in the previous steps. We then use that instance object to get an instance of ProfileManager and assign it to the global variable `profileManager`. This is how we will interface with the APIs in the rest of the code:

    >Note:
    >Set the name of the method argument to `emdkManager`  

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
						"Default Launcher Changed Successfully...", Toast.LENGTH_SHORT)
						.show();
                finish();
			} else {
				Toast.makeText(MainActivity.this,
						"Failed to change Default Launcher...", Toast.LENGTH_SHORT)
						.show();
			}
		}  

    >Note: 
    >we call `finish()` method to close the application gracefully since the app closes automatically after setting the default launcher.

    Your onOpened method should now look like this:
    
    ![img](images/MxDefaultLauncherTutorialImages/on_opened_method.jpg)  
    
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

    ![img](images/MxDefaultLauncherTutorialImages/on_destroy_method.jpg) 

    Settings at this point would allow you to apply EHS (Enterprise Home Screen) as the default launcher of your Mototrola Android device when we run the application.

    But we also want to set the another launcher application (Galaxy Launcher) as the default launcher programmatically. So we will add the required code to implement it.

4. Remove the default "TextView", inside "res/layout/activity_main.xml".

5. Add the following code that has an Edittext to enter the package name of the launcher application and a button to implement operation.

        :::xml
        <TextView
        android:id="@+id/label"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_centerInParent="true"
        android:text="Enter Package Name:"
        android:textSize="18sp"
        android:textStyle="bold" />

        <EditText
        android:id="@+id/package_name"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_below="@+id/label" android:hint="Package Name"
        android:layout_margin="20dip" />

        <Button
        android:id="@+id/btn_set_default_launcher"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_below="@+id/package_name"
        android:layout_centerHorizontal="true"
        android:layout_margin="5dip"
        android:text="Set Default Launcher" />

    The layout file 'activity_main.xml' should now look like:

    ![img](images/MxDefaultLauncherTutorialImages/activity_main.jpg)

6. Now, In the Main activity make an entry of these UI elements using following code:

        :::java
		// Edit Text ro enter the package name of the launcher application
	    private EditText packageNameEditText;
	
	    // Button to set the application as default launcher
	    private Button setDefaultLauncherButton;

    So far the code looks like:

	![img](images/MxDefaultLauncherTutorialImages/ui_element_reference.jpg) 

7. Get the reference of these UI elements in `onCreate` method.

        :::java
        packageNameEditText = (EditText) findViewById(R.id.package_name);		
		setDefaultLauncherButton = (Button) findViewById(R.id.btn_set_default_launcher);
 
     The `onCreate` method now looks like:

    ![img](images/MxDefaultLauncherTutorialImages/reference_on_create.jpg)

8. In this step, we will write a function that takes package name of the launcher application as input parameter and programmatically sets that application as the default launcher application.

    This method prepares the xml input for the `processProfile` method by accepting the package name of the launcher application provided by the user.

    The `processProfile` method then sets the changes to `Profile Manager` and returns the result to the `EMDKResults` as follows:

        :::xml
        // Method that takes package name of the launcher application and
	    // programmatically sets that application as the default launcher.
	    public void setLauncherApplication(String packageName) {

		try {
			// Prepare XML to modify the existing profile
			String[] modifyData = new String[1];

			modifyData[0] = "<?xml version=\"1.0\" encoding=\"utf-8\"?>"
					+ "<characteristic type=\"Profile\">"
					+ "<parm name=\"ProfileName\" value=\"DefaultLauncherProfile\"/>"
					+ "<characteristic type=\"AppMgr\">"
					+ "<parm name=\"Action\" value=\"SetDefaultLauncher\"/>"
					+ "<parm name=\"Package\" value=\"" + packageName + "\"/>"
					+ "</characteristic>" + "</characteristic>";

			// Call process profile to modify the profile of specified profile
			// name
			EMDKResults results = profileManager.processProfile(profileName,
					ProfileManager.PROFILE_FLAG.SET, modifyData);

			// Check the return status of processProfile
			if (results.statusCode == EMDKResults.STATUS_CODE.SUCCESS) {

				Toast.makeText(MainActivity.this,
						"Default Launcher Changed Successfully...",
						Toast.LENGTH_SHORT).show();
			} else {
				Toast.makeText(MainActivity.this,
						"Failed to change Default Launcher...",
						Toast.LENGTH_SHORT).show();
			}

		  } catch (Exception ex) {
			Toast.makeText(MainActivity.this,
					"Failed to change Default Launcher...", Toast.LENGTH_SHORT)
					.show();
			ex.printStackTrace();
		 }
 
	    }

    The method `setLauncherApplication` method should look like: 

    ![img](images/MxDefaultLauncherTutorialImages/set_launcher_app_method.jpg) 

9. Let us call this method by implementing on click listener of the `setDefaultLauncherButton` button. This listener will get the package name entered by user from the Edit Text and call the `setLauncherApplication` method for a valid package name as follows:

        :::java
        // On Click Listener for the button
		setDefaultLauncherButton.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub

				// Get the package name entered by user from the Edit Text
				String packageName = packageNameEditText.getText().toString();

				if (TextUtils.isEmpty(packageName))
					// Invalid Package Name
					Toast.makeText(MainActivity.this,
							"Please enter a valid package name...",
							Toast.LENGTH_SHORT).show();
				else
					// Call the method to set launcher application as default
					// launcher
					setLauncherApplication(packageName);

			}
		}); 

    Finally the `onCreate` method should look like:

    ![img](images/MxDefaultLauncherTutorialImages/final_on_create_method.jpg)

That's it!!! We are done with all the coding and configuration part. Now let us run the application.
 

## Running the Application

1. Connect Motorola Solutions Android device (having the latest EMDK runtime) to the USB port. 

    > Note:   
    > Make sure the device is in USB debug.
    
    The device currently has its own default launcher. Before Running the application, make sure that the two launcher applications (EHS and Galaxy Launcher) are already installed in the device.

    The default launcher of the Motorola TC 55 device looks like:

    ![img](images/MxDefaultLauncherTutorialImages/default_launcher.png)

2. Run the application. The app sets the EHS (Enterprise Home Screen) application as the default launcher application as we had provided its package name while profile creation.

    The app automatically closes by displaying a success message as the launcher is changed. 
  
	![img](images/MxDefaultLauncherTutorialImages/ehs_launcher.png)
  
4. Now we will set Galaxy Launcher as the default launcher application. In order to do that, press and hold the home key.

    ![img](images/MxDefaultLauncherTutorialImages/device_home_key.png)

    Select the "MxDefaultLauncherTutorial" app and the app will open.
  
	![img](images/MxDefaultLauncherTutorialImages/mx_default_launcher_app.png)

5. Enter the package name of Galaxy Launcher application that we had obtained previously **(com.epic.launcher.tw)**.
 
	![img](images/MxDefaultLauncherTutorialImages/enter_package_name.png)

6. Click `Set Default Launcher` button. The app will now set Galaxy Launcher as the default launcher application. The app will close automatically displaying a success message.

    ![img](images/MxDefaultLauncherTutorialImages/galaxy_launcher.png)

    > Note:
    > In case of failure, the app will display a failure message and no change will take place.  

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
The project source to this tutorial can be [downloaded (Internet Connection Required)](https://s3.amazonaws.com/emdk/Tutorials/EMDKMxDefaultLauncherTutorial.zip). You can also [download](https://s3.amazonaws.com/emdk/Tutorials/AllInstalledApps.apk) the Package Name helper application and install it - or modify the [source](https://s3.amazonaws.com/emdk/Tutorials/AllInstalledApps-Source.zip) to your liking.
