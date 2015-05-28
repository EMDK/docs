# Data Capture - Profile Manager Sample

##EMDK Sample Walk Through##

This guide will walk you through using the EMDK sample Applications on your Motorola Android device. 

###Prerequisites###
- Java JDK 
- Android ADT 
- Motorola EMDK  
- An EMDK supported Motorola Android device

For more information about setting up the EMDK please see the [EMDK Overview](../guide/about).

##Loading the Sample Application##

1. Sample Applications are installed along with the EMDK and can be found in your start bar. 
	1. Select Start 
	2. Select "Motorola EMDK for Android v2.0"
	3. Select "Samples"

		  ![img](images/sample/1.jpg)
	4. Your browser should open with a list of included samples

		  ![img](images/sample/2.jpg)
	5. Select "ADTSamples" from the web page   

		  ![img](images/sample/3.jpg)
	6. Copy the path to the directory on your computer   

		  ![img](images/sample/4.jpg)

2. In Eclipse select From the tool bar "File" -> "Import"
3.  Select Android "Existing Android Code Into Workspace"

    ![img](images/sample/5.jpg)
4. Browse to the samples directory from the web page and select "ProfileDataCaptureSample1"

    ![img](images/sample/6.jpg)
5. Select Finish

##Deploying a Sample Application##

1. Attach an EMDK supported Motorola Android device to your computer in USB debug mode. 

	>NOTE: The device needs the EMDK runtime installed.
2. From the Package Explorer right click on the select the sample application 
3. Right click on the project and select "Run As" -> "Android Application"

	![img](images/sample/7.jpg)
4. Select your Android device and click "Okay". 
    
    ![img](images/sample/8.jpg)

##About the Sample Application##
When the application first loads you will see:

* Checkboxes for changing Barcode options
* A text area where Barcode data will be displayed
* A Status area where status will be shown

![img](images/sample/9.png)


### Application Startup
Using the Profile Manager Wizard, a profile called 'DataCaptureprofile-1' was created. You can inspect the settings it has by launching the EMDK Profile Manager from Eclipse

![img](images/sample/10.jpg)

You will see that the MainActivity for the application has been selected to indicate when this profile will be used.

![img](images/sample/11.jpg)

The profile settings that have been chosen can be inspected to see that certain barcode decoders have been enabled and the output will be using the Keystroke feature. This profile has MSR and Intent output disabled.

![img](images/sample/12.jpg)

![img](images/sample/13.jpg)

![img](images/sample/14.jpg)

When the application starts up, the onOpened method is executed and the profile is processed.

![img](images/sample/15.jpg)

![img](images/sample/16.jpg)

It if was successful, you will see "Profile initialization Success" on the application's status area.

![img](images/sample/17.png)

### Scanning a Barcode
After the application has been loaded, you can begin scanning barcodes. Notice that only Code128, EAN8, UPCA types have been chosen. When you press the scan trigger on the device, you should see the default scanner become activated and a barcode is attempted to be read. If the barcode you have chosen is not one of the ones listed above, it will not decode and display in the text area. 

>NOTE: Most everyday items you may have in your home use the UPCA type barcode. You may also Google these types of barcode to see what they look like and print one out for testing

Upon successful Barcode scanning, the barcode data will be output into the text field.

![img](images/sample/18.png)

### Changing Barcode Settings
When you uncheck the checkboxes in the application, the DataCaptureProfile-1 is modified on the fly using the ProfileConfig API. 

* Uncheck the barcode type you just scanned in 
* tap 'Set' and you should see 'Profile update success' in the status area

![img](images/sample/19.png)

Now when you scan the same Barcode, you will still see the barcode aimer but the data will not be decoded and you will not see the data displayed in the text area.

## Next Steps
Now that you have played with a pre-built sample application, it is time to try and build your own application from scratch. Follow the steps in the [DataCapture Profile Manager Tutorial](../guide/tutorial/tutdatacaptureprofile).

