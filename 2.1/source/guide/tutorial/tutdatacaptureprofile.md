# Data Capture Profile Feature Tutorial
## Developing an EMDK for Android Application Part 1

This guide will walk you through creating an EMDK For Android application that will use [Data Capture Profiles](../guide/profiles/profilebarcode) to get barcode data into your application using the [KeyStroke output](../guide/profiles/profilekeystroke) feature of [EMDK Profiles](../guide/profiles/usingwizard). The tutorial uses EMDK V 2.1 that has organized existing features as well as got some new features that would be discussed later in the tutorial. 

###Prerequisites

* Java Development Kit (JDK)
* Android Developer Tools (ADT)
* Motorola EMDK for Android 

For more information about setting up the EMDK please see the EMDK Overview.

## Creating The Project
1.  Create new Android Application project.  
    ![img](images/setup/image019.jpg)
2.  Assign names for the application and package. 
3.  Set the minimum required SDK to "API 16: Android 4.1 (Jelly Bean)".  
    ![img](images/setup/image021.jpg)
4.  Click "Next".  
    ![img](images/setup/image023.jpg)  
5.  Click "Next".  
    ![img](images/setup/image025.jpg)  
6.  Click "Next".  
7.  Select "Empty Activity" Click "Next".  

    ![img](images/setup/image100.jpg)  

    >Note:  
    >If "Empty Activity" is not available make sure you are using "Android SDK Tools 22.6.3" and "Android SDK Platform Tools 19.0.2"

7.  Click "Next".  

    ![img](images/setup/image102.jpg)  
8.  Click "Finish".

    >Note:  
    >Currently there is nothing under "\assets" folder.  
    
    ![img](images/setup/image031.jpg)  

## Enabling the EMDK
9.  Select the project.  
10. Select "File -> Properties" or right click on the project and select "Properties".  
    ![img](images/setup/image033.jpg)   
    ![img](images/setup/image035.jpg)   
11.    Click "Android" from the left pane.  
    ![img](images/setup/image037.jpg) 
12. Select "EMDK APIs 2.1" from the list of Project Build Targets.  
    ![img](images/setup/image039.jpg)  

    >Note:  
    >If "EMDK APIs 2.1" is not on the list of Build Targets, please confirm you have installed Android API 16 SDK Platform.

13. Click "Apply" and "OK".  
    >Note:  
    >The EMDK library will be added to the project.  
    
    ![img](images/setup/image041.jpg) 

    >Note:
    >If you are using Java 1.7 as the compiler, you may see this error
    
    ![img](images/setup/image098.jpg) 

    > To correct this, you will need to change the compiler to use 1.6
    
    > * Click on the Java Compiler
    > * Click Enable project specific settings
    > * Select 1.6 for Compiler compliance level
    
    ![img](images/setup/image101.jpg) 

## Adding a DataCapture Profile
1. Select "EMDKSample" project from Package Explorer.    
2. Click "EMDK" menu and select "Profile Manager".
  
    ![img](images/setup/image043.jpg)
  
3. The EMDK Profile Manager Window will appear.
  
    ![img](images/setup/image045.jpg)
  
4. Click "Create" and assign a name for the profile (Ex: DataCaptureProfile). 
 
    ![img](images/setup/image047.jpg)
  
5. Click "Create". The Profile Editor window will appear.
  
    ![img](images/setup/image049.jpg)
  
6. As you can see in EMDK for Android V 2.1, the existing features of V 2.0 are categorized based on their operations such as Activity Selection, Data Input (Barcode, MSR) and Data Delivery (Intent, Keystroke and IP). Moreover it has introduced several new MX (Mobility Extension) features (Ex. Clock, App Manager, Power Manager etc). These MX features are used for configuring Enterprise Motorola Android devices. Select any feature from the list and click "Right Arrow" (Ex: "ActivitySelection" has been selected. By using this feature Activities can be associated with the application. Then the data capture feature will be enabled automatically when the specified activity is in foreground).
  
    ![img](images/setup/image051.jpg)
  
7. Click on the selected feature. The parameter list will be populated. 

	> Note:
	> The field "Name" contains user defined name to identify a particular feature. This is required when editing any specific feature programmatically, which is outside the scope of this tutorial. So we will keep the "Name" field empty. 
  
    ![img](images/setup/image053.jpg)
  
8. Click "ActivitySelection" under parameters.
  
    ![img](images/setup/image055.jpg)  

9. Specify the applications package name and click "Apply".
  
    ![img](images/setup/image057.jpg)
  
10. Specify an Activity inside the application and click "Apply".
  
    ![img](images/setup/image059.jpg)
  
11. Click "OK".
  
    ![img](images/setup/image061.jpg)
  
12. Select any data capture feature and click Right Arrow (Ex: "Barcode" has been selected).
  
    ![img](images/setup/image063.jpg)
  
13. Click on the "Barcode" feature. The parameter list will be populated.
	> Note: 
	> The field "Name" contains user defined name to identify a particular Barcode feature. This is required when editing any specific Barcode feature programmatically, which is outside the scope of this tutorial. So we will keep the "Name" field empty.
  
    ![img](images/setup/image065.jpg)
  
14. Enable the feature and change some parameters.
    ![img](images/setup/image067.jpg)
    ![img](images/setup/image069.jpg)
    ![img](images/setup/image071.jpg)
  
15.    Click "Apply". 
16.    Select the Keystroke feature and click "Right Arrow" (Ex: "Keystroke" has been selected).
	> Note:
	> The field "Name" contains user defined name to identify a particular Keystroke feature. This is required when editing any specific Keystroke feature programmatically, which is outside the scope of this tutorial. So we will keep the "Name" field empty.
    ![img](images/setup/image073.jpg)
  
17. Enable the feature and change some parameters.
  
    ![img](images/setup/image075.jpg)
  
    ![img](images/setup/image077.jpg)
  
18. Click "Apply" and "Finish".
  
    ![img](images/setup/image079.jpg)
  
19.    Click "Close".  
    >Note:  
    >Now the "EMDKConfig.xml" is created under "\assets" folder. This file will contain a definition of all of your profiles that you create. 
    ![img](images/setup/image081.jpg)
  
20. You can inspect the EMDKConfig.xml to see it is reflecting the changes made to the parameters via EMDK Profile Manager GUI earlier.  However, it is advised that this file not be manually updated and only be controlled via the Profile Manager.

    ![img](images/setup/image083.jpg)
   
    ![img](images/setup/image085.jpg)   

## Enabling Android Permissions
1. Modify the Application's Manifest.xml to use the EMDK library and to set permission for the EMDK.
  
    ![img](images/setup/image087.jpg)

    You must first enable permissions for 'com.symbol.emdk.permission.EMDK':  
   
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/> 

    Then you must enable the library:  
      
        :::xml
        <uses-library android:name="com.symbol.emdk" />

    When done, your manifest.xml should look like:

    ![img](images/setup/image089.jpg)  

##Adding Some Code    
1. Now we will start to add some code. 

    First you must add references to the libraries:  
    
        :::java
        import com.symbol.emdk.*;  
        import com.symbol.emdk.EMDKManager.EMDKListener;  
    
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
        private String profileName = "DataCaptureProfile";  
          
        //Declare a variable to store ProfileManager object  
        private ProfileManager mProfileManager = null;  
          
        //Declare a variable to store EMDKManager object  
        private EMDKManager emdkManager = null;     

    In the onCreate method, we call getEMDKManager so that the EMDK can be initialized and checked to see if it is ready. 

        :::java
        //The EMDKManager object will be created and returned in the callback.  
        EMDKResults results = EMDKManager.getEMDKManager(getApplicationContext(), this);  
          
        //Check the return status of getEMDKManager  
        if(results.statusCode == STATUS_CODE.FAILURE)  
        {  
                //Failed to create EMDKManager object  
                
        }  

    So far your code should look like:
     
     ![img](images/setup/image091.jpg) 

2. Now we need to use the `onOpened` method to get a reference to the EMDKManager. The EMDKListener interface will trigger this event when the EMDK is ready to be used. This must be implemented in order to get a reference to the EMDKManager APIs. This event will pass the EMDKManager instance and we assign it to the global variable `emdkManager` that we created in the previous steps. We then use that instance object to get an instance of ProfileManager and assign it to the global variable `mProfileManager`. This is how we will interface with the APIs in the rest of the code:  

        :::java
        this.emdkManager = emdkManager;  
        //Get the ProfileManager object to process the profiles  
        mProfileManager = (ProfileManager) emdkManager.getInstance(EMDKManager.FEATURE_TYPE.PROFILE);         
    
    Now that we have a reference to ProfleManager, we use it to install and activate the profile we built earlier using the `processProfile` method. We could have also performed this action at a different time, say when someone pressed a button, but we chose to do it as soon as the EMDK was ready:  

        :::java
        if(mProfileManager != null)  
        {  
            try{

                String[] modifyData = new String[1];  
                //Call processPrfoile with profile name and SET flag to create the profile. The modifyData can be null.  
             
                EMDKResults results = mProfileManager.processProfile(profileName, ProfileManager.PROFILE_FLAG.SET, modifyData);  
                 if(results.statusCode == STATUS_CODE.FAILURE)  
                 {  
                     //Failed to set profile  
                 }  
             }catch (Exception ex){
                // Handle any exception
            }

        }  

    Your onOpened method should now look like this:
    
    ![img](images/setup/image095.jpg)  
    
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

    ![img](images/setup/image093.jpg)  

4. Remove the default "TextView", inside "res/layout/activity_main.xml".

5. Add an EditText Field in the UI called "editTextBarcode", inside "res/layout/activity_main.xml".
    
        :::xml
        <EditText  
            android:id="@+id/editTextBarcode"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:layout_marginTop="200dp"  
            android:layout_marginLeft="50dp"  
            android:ems="10" >  

6. Connect Motorola Solutions Android device (having the latest EMDK runtime) to the USB port.
    >Note:   
    >Make sure the device is in USB debug.
7. Run the application.
  
	![img](images/setup/image103.png)
  
8. Press the trigger button and scan a barcode.
9. The scanned data will be populated in the Edit Text field added to the UI.
  
	![img](images/setup/image104.png)  

##Important Programming Tips##

1. It is required to do the following changes in the application's AndroidManifest.xml:  
  
    >Note:
    >* Include the permission for EMDK:  
    
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/>
    
    >* Use the EMDK library:  
    
        :::xml
        <uses-library android:name="com.symbol.emdk"/>
  
2. When using the "Barcode" feature in EMDK Wizard, the specified value for "Scanner" is not supported on the device, it will be considered as "Auto" during runtime (Ex: BT_LASER1, BT_IMAGER1 and BT_CAMERA1).
3. Installing the EMDK for Android application without deploying the EMDK runtime on the Motorola Solutions Android  device will fail because of missing shared library on the device. 
4. Use the DataWedge v1.7.12 or higher version to test the ProfileManager.processProfile() for DataWedge profiles.

## What's Next
Now that you have learned the basics of an EMDK for Android application, the [next tutorial](../guide/tutorial/tutdatacaptureprofilePt2)</a> will show you how to use the [Intent Output](../guide/profiles/profileintent) feature of EMDK Profiles to handle Data Capture output programatically.

## Download the Source
The project source to this tutorial can be [downloaded (Internet Connection Required)](https://s3.amazonaws.com/emdk/Tutorials/EMDK-DataCapture-ProfileManagerTutorial.zip).