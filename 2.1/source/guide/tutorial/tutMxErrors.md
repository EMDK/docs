# Errors When Processing Profiles

## Overview

This guide will walk you through creating an EMDK For Android application that will analyze MX errors that we get while using MX features that are declared in Profile creation. These MX errors may occur due to some invalid input while creating a profile or some incorrect device configuration.

In this tutorial we would be deliberately producing errors by providing invalid inputs in some of the MX features while profile creation, just to see the errors using `getStatusDocument` or `getStatusString` of `EMDKResults`. We would obtain the error description by parsing the resulting XML response and compare the output with the usual working case. 

The goal here is to make you understand how to find errors and correct them if there are any.	
 
###Prerequisites

* Java Development Kit (JDK)
* Android Developer Tools (ADT)
* Motorola EMDK for Android V 2.1 and above 

For more information about setting up the EMDK please see the EMDK Overview.

## Creating The Project
1.  Create new Android Application project.
  
    ![img](images/MxErrorsTutorialImages/create_new_app.jpg)

2.  Assign names for the application and package.
 
3.  Set the minimum required SDK to "API 16: Android 4.1 (Jelly Bean)".
  
    ![img](images/MxErrorsTutorialImages/set_app_name.jpg)

4.  Click "Next".
  
    ![img](images/MxErrorsTutorialImages/configure_project.jpg)
  
5.  Click "Next".
  
    ![img](images/MxErrorsTutorialImages/configure_launcher_icon.jpg)
  
6.  Click "Next".  

7.  Select "Empty Activity" Click "Next".  

    ![img](images/MxErrorsTutorialImages/create_activity.jpg)  

    >Note:  
    >If "Empty Activity" is not available make sure you are using "Android SDK Tools 22.6.3" and "Android SDK Platform Tools 19.0.2"

7.  Click "Next".  

    ![img](images/MxErrorsTutorialImages/empty_activity.jpg)
  
8.  Click "Finish".

    >Note:  
    >Currently there is nothing under "\assets" folder.  
    
    ![img](images/MxErrorsTutorialImages/main_activity.jpg)  

## Enabling the EMDK
1. Select the project.
  
2. Select "File -> Properties" or right click on the project and select "Properties".
  
    ![img](images/MxErrorsTutorialImages/project_properties_button_1.jpg)
   
    ![img](images/MxErrorsTutorialImages/project_properties_button_2.jpg)
   
3. Click "Android" from the left pane.
  
    ![img](images/MxErrorsTutorialImages/project_properties.jpg)
 
4. Select "EMDK APIs 2.1" from the list of Project Build Targets.
  
    ![img](images/MxErrorsTutorialImages/project_properties_build_target.jpg)  

    >Note:  
    >If "EMDK APIs 2.1" is not on the list of Build Tagets, please confirm you have installed Android API 16 SDK Platform.

5. Click "Apply" and "OK".  
    >Note:  
    >The EMDK library will be added to the project.  
    
    ![img](images/MxErrorsTutorialImages/emdk_library_added.jpg) 

    >Note:
    >If you are using Java 1.7 as the compiler, you may see this error
    
    ![img](images/MxErrorsTutorialImages/compiler_error.jpg) 

    > To correct this, you will need to change the compiler to use 1.6
    
    > * Click on the Java Compiler
    > * Click Enable project specific settings
    > * Select 1.6 for Compiler compliance level
    
    ![img](images/MxErrorsTutorialImages/java_compiler_settings.jpg) 

## Adding the MX Errors Profile that includes Clock feature

1. Select "MxErrorsTutorial" project from Package Explorer.
    
2. Click "EMDK" menu and select "Profile Manager".
  
    ![img](images/MxErrorsTutorialImages/profile_manager_button.jpg)
  
3. The EMDK Profile Manager Window will appear.
  
    ![img](images/MxErrorsTutorialImages/emdk_profile_manager.jpg)
  
4. Click "Create" and assign a name for the profile (Ex: MxErrorsProfile).
  
    ![img](images/MxErrorsTutorialImages/create_new_profile.jpg)
  
5. Click "Create". The Profile Editor window will appear.
  
    ![img](images/MxErrorsTutorialImages/profile_editor.jpg)
  
6. Now select Clock feature from the list and click "Right Arrow". Using this feature, we will configure the device clock. But we will provide incorrect values while setting Clock parameters and in the code we will parse the XML response and display the result in a dialog.

    > Note: This profile editor of EMDK V 2.1 has some new features compared to previous EMDK V 2.0

In EMDK V 2.1, the features of the previous version are categorized on the basis of their functionality. (For Example - Data Input can be done in two ways viz Barcode and MSR). The new features are MX (Mobility Extension) interfaces that are used to configure the Motorola enterprise Android devices based on requirements.      
 
 
7. Click on the Clock feature. The parameter list will be populated.  
  
    ![img](images/MxErrorsTutorialImages/select_clock_feature.jpg)

8. Enter the Clock parameters such as Timezone, Date and Time. The parameters need to be in a certain format mentioned in the wizard for each field. But we will enter incorrect value in the "Date" field (For Example "2014-06-27error" instead of "2014-06-27") and proceed.  

    > Note:
    > Keep the "Name" field empty. 

    ![img](images/MxErrorsTutorialImages/clock_features.jpg)
  
9.  Click Apply and Finish. 

    ![img](images/MxErrorsTutorialImages/error_profile_created.jpg)  

10. Click "Close".   

    >Note:  
    >Now the "EMDKConfig.xml" is created under "\assets" folder. This file will contain a definition of all of your profiles that you create. 
    
    ![img](images/MxErrorsTutorialImages/emdk_config_file.jpg)
  
12. You can inspect the EMDKConfig.xml to see it is reflecting the changes made to the parameters via EMDK Profile Manager GUI earlier.  However, it is advised that this file not be manually updated and only be controlled via the Profile Manager. An entry of "Clock" feature is created in EMDKConfig.xml file with the attributes that we had set while profile creation. 

    ![img](images/MxErrorsTutorialImages/emdk_config_file_entries.jpg)    

## Enabling Android Permissions
1. Modify the Application's Manifest.xml to use the EMDK library and to set permission for the EMDK.
  
    ![img](images/MxErrorsTutorialImages/manifest_file.jpg)

    You must first enable permissions for 'com.symbol.emdk.permission.EMDK':  
   
        :::xml
        <uses-permission android:name="com.symbol.emdk.permission.EMDK"/> 

    Then you must enable the library:  
      
        :::xml
        <uses-library android:name="com.symbol.emdk"/>

    When done, your manifest.xml should look like:

    ![img](images/MxErrorsTutorialImages/manifest_permissions_added.jpg) 

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
        private String profileName = "MxErrorsProfile";  
          
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
     
     ![img](images/MxErrorsTutorialImages/on_create_added.jpg) 

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
				// Success
			} else {
				// Failure
			}
		}  

    Your onOpened method should now look like this:
    
    ![img](images/MxErrorsTutorialImages/on_opened_method.jpg)

3. The [EMDKResults](../api/EMDKResults) in the `onOpened` method contains the XML response that is returned by `processProfile` method after processing the profile that we had created using EMDK Profile creation wizard. In order to get the XML response we need to call `getStatusString()` on the result object that would return XML response as a String. So we can write this function call once we get the EMDKResults object as:

        :::java
        //Get XML response as a String
		String statusXMLResponse = results.getStatusString(); 

4. In the next step we would parse this XML response using [XML Pull Parser](http://developer.android.com/reference/org/xmlpull/v1/XmlPullParser.html) in order to get the status and error parameters if any. XML Pull Parser is an interface that defines parsing functionality provided in [XMLPULL V1 API](http://www.xmlpull.org/) (visit this website to learn more about API and its implementations). In the parsing we would be looking for specific status tags (Status, Error Type and Error Description) and if found, we would get those values.

    Before moving to the parsing, we need to create global String variables for result status, error type and error description as:

        :::java
        // Provides the status of MX Operation
	    private String status = "";

	    // Provides the type of error
	    private String errorType = "";

	    // Provides error description of a particular type of error
	    private String errorDescription = "";

    So the code for global variables looks like:

    ![img](images/MxErrorsTutorialImages/global_variables.jpg)

    Now the code for the XML pull parser could be written in a method `parseXML` that takes `XMLPullParser` object as an argument. In this parser we would look for the parameters we want. once the parameters are obtained, we would set them in the respective global variables that we have created.

        :::java
        // Method to parse the XML response using XML Pull Parser
	    public void parseXML(XmlPullParser myParser) {
		  int event;
		  try {
			event = myParser.getEventType();
			while (event != XmlPullParser.END_DOCUMENT) {
				String name = myParser.getName();
				switch (event) {
				case XmlPullParser.START_TAG:
					// Get status
					if (name.equals("parm")) {
						if (myParser.getAttributeValue(null, "name")
								.equalsIgnoreCase("description"))
							status = myParser.getAttributeValue(null, "value");
						;
						// Get error type and error description
					} else if (name.equals("characteristic-error")) {
						errorType = myParser.getAttributeValue(null, "type");
						errorDescription = myParser.getAttributeValue(null,
								"desc");
					}
					break;
				case XmlPullParser.END_TAG:

					break;
				}
				event = myParser.next();

			 }
		   } catch (Exception e) {
			e.printStackTrace();
		   }
        
	    }

    The `parseXML` method looks like:
  
    ![img](images/MxErrorsTutorialImages/parse_xml_method.jpg) 

5. Since we have written the parser, we need to call this method to parse our XML response and get desired values. So we would call this method from `onOpened` method where we get the XML response.

        :::java
        try {
			// Create instance of XML Pull Parser to parse the response
			XmlPullParser parser = Xml.newPullParser();
			// Provide the string response to the String Reader that reads
			// for the parser
			parser.setInput(new StringReader(statusXMLResponse));
			// Call method to parse the response
			parseXML(parser);
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		}

    The above code takes the XML repsonse as String and sets it as an input to `XMLPullParser` instance. This parser is passed as a parameter to the `parseXML` method that performs XML parsing operation.

    So far the `onOpened` method looks like:

    ![img](images/MxErrorsTutorialImages/updated_on_opened_method.jpg)

6. So far, we have parsed the result and received desired values. Now we need to display these output values to the user. So we will create a method `displayResults` that shows the result (Success/Failure with description) in a dialog to the user.

        :::java
        // Method to display results (Status, Error Type, Error Description) in a
	    // dialog
	    public void displayResults() {
		  // Alert Dialog to display the status of the Profile creation
		  // operation of MX features
		  AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(
				MainActivity.this);
		  // set title
		  alertDialogBuilder.setTitle(status);
		  alertDialogBuilder.setCancelable(false).setPositiveButton("OK",
				new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int id) {
					}
				});

		  // If the status is Failure, display error type and description as well
		  if (status.equalsIgnoreCase("Failure") || !TextUtils.isEmpty(errorType)) {
			alertDialogBuilder.setTitle("Failure");
			// set dialog message
			alertDialogBuilder.setMessage(errorType + " :" + "\n\n"
					+ errorDescription);
		  }

		  // create alert dialog
		  AlertDialog alertDialog = alertDialogBuilder.create();

		  // show it
		  alertDialog.show();

	    }

    The method looks liks:

    ![img](images/MxErrorsTutorialImages/display_results_method.jpg)

7. We will now call this method from `onOpened` method, once the parsing has been completed successfully.

        :::java
        // Method call to display results in a dialog
		displayResults();

    So the complete `onOpened` method looks like:

        :::java
        @Override
	    public void onOpened(EMDKManager emdkManager) {
		  // TODO Auto-generated method stub
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

			// Get XML response as a String
			String statusXMLResponse = results.getStatusString();

			try {
				// Create instance of XML Pull Parser to parse the response
				XmlPullParser parser = Xml.newPullParser();
				// Provide the string response to the String Reader that reads
				// for the parser
				parser.setInput(new StringReader(statusXMLResponse));
				// Call method to parse the response
				parseXML(parser);
			} catch (XmlPullParserException e) {
				e.printStackTrace();
			}

			// Method call to display results in a dialog
			displayResults();

			if (results.statusCode == EMDKResults.STATUS_CODE.SUCCESS) {
				// Success
			} else {
				// Failure
			}
		  }
    	}

    Here is the screen capture of complete `onOpened` method

    ![img](images/MxErrorsTutorialImages/complete_on_opened_method.jpg)      
                            
8. Now let's override the `onDestroy` method so we can release the EMDKManager resources:  

        :::java
        @Override  
        protected void onDestroy() {  
            // TODO Auto-generated method stub  
            super.onDestroy();  
            //Clean up the objects created by EMDK manager  
            emdkManager.release();  
        } 

    Your onDestroy method should now look like this:  

    ![img](images/MxErrorsTutorialImages/on_destroy_method.jpg) 


That's it!!! We are done with all the coding and incorrect configuration. Now let us run the application and we should get the error in a dialog.
 

## Running the Application

1. Connect Motorola Solutions Android device (having the latest EMDK runtime) to the USB port. 

    > Note:   
    > Make sure the device is in USB debug.

2. Run the application. 

    We get the following XML response as a return of `results.getStatusString()` in the `onOpened` method, which was saved in a `statusXMLResponse` String.

        :::xml
        <?xml version="1.0" encoding="UTF-8"?>
        <wap-provisioningdoc>
         <characteristic type="status">
          <parm name="code" value="0"/>
          <parm name="description" value="Success"/>
         </characteristic>
         <characteristic-error type="Clock" desc="Cannot set clock">
          <parm name="TimeZone" value="PST"/>
          <parm name="Date" value="2014-06-27error"/>
          <parm name="Time" value="16:21:00"/>
         </characteristic-error>
        </wap-provisioningdoc>

    Since the response contains `<characteristic-error>` tag, the EMDK fails to set the clock. This is because we had set an incorrect value for "Date" field ("2014-06-27error" instead of "2014-06-27"). So when we parsed the response we looked for this `<characteristic-error>` tag and parsed `type` and `desc` fields of this error tag. Finally we displayed these field in a dialog to the user.     
  
	![img](images/MxErrorsTutorialImages/failed_to_set_clock.png)

3. Now let us see another type of error by committing one more mistake. This time we will set an incorrect profile name in our code (i.e. different from the one we had set during profile creation). 

    The actual name of our profile that we created in the wizard and used in the code is "MxErrosProfile" 

    ![img](images/MxErrorsTutorialImages/error_profile_created.jpg)

    Let us change the name of this profile in the code and observe the consequences. So go to your global variables in the code and change the value of variable `profileName` to any random string (For Example: DummyProfileName). Save the changes

        :::java
        // Assign the profile name used in EMDKConfig.xml
	    private String profileName = "DummyProfileName";

    This would look like:

    ![img](images/MxErrorsTutorialImages/dummy_profile_name.jpg)

4. Run the application again

    Now we get a different XML response as a return of `results.getStatusString()` in the `onOpened` method, which was saved in a `statusXMLResponse` String.

        :::java
        <?xml version="1.0" encoding="UTF-8"?>
         <wap-provisioningdoc>
           <characteristic type="status">
             <parm name="code" value="1"/>
             <parm name="description" value="Failure"/>
           </characteristic>
           <characteristic-error type="Syntax Error" desc="MxFrameworkService: received request/configuration information is: "/>
         </wap-provisioningdoc>

    The error occurred because we deliberately changed the profile name in the code. So the EMDK API could not connect and apply the parameters to the actual profile we had created in the wizard.

    ![img](images/MxErrorsTutorialImages/failed_to_set_clock_2.png)

    Due to the error, the EMDK failed to apply the Date-Time parameter in the device as marked in the image above. (device showing 22:17:00 whereas we had set 16:21:00)

5. Now let's correct the parameters and get the valid output that can change the clock settings with the parameters that we declared during profile creation.

    So first we will go to profile manager and edit it with the valid Date value (2014-06-27 instead of 2014-06-27error).

    ![img](images/MxErrorsTutorialImages/correct_date.jpg)

    Click "Apply", "Finish" and then "Close".

    Now go to the MainActivity.java and add valid Profile Name using:

        :::java
        // Assign the profile name used in EMDKConfig.xml
	    private String profileName = "MxErrorsProfile"; 

    Save the changes and the code should now look like:

    ![img](images/MxErrorsTutorialImages/valid_profile_name.jpg)

6. Run the application again.

    Now since we provided valid inputs, we get a valid XML response without errors.

        :::xml
        <?xml version="1.0" encoding="UTF-8"?>
         <wap-provisioningdoc> 
          <characteristic type="status">
            <parm name="code" value="0"/>
            <parm name="description" value="Success"/>
          </characteristic>
          <characteristic type="Clock">
            <parm name="TimeZone" value="PST"/>
            <parm name="Date" value="2014-06-27"/>
            <parm name="Time" value="16:21:00"/>
          </characteristic>
         </wap-provisioningdoc>

    As you can see its a valid XML response since it does not contain `<characteristic-error>` tag. Moreover, the clock parameters that we set during profile creation are also applied successfully to the device.

    So when we parsed this response we get the value as "Success" that we displayed on the dialog. 

    ![img](images/MxErrorsTutorialImages/clock_settings_changed.png)

7. In such a way, you can use EMDKResults API with its methods to identify any kind of errors in all the MX features that you used while profile creation. This helps in debugging your application to figure out invalid parameters.            
  

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


## Download the Source
The project source to this tutorial can be [downloaded (Internet Connection Required)](https://s3.amazonaws.com/emdk/Tutorials/MxErrorsTutorial.zip).
