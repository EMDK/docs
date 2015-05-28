#Using the EMDK Samples

##Overview

This guide will walk you through using the EMDK sample applications that are included with the EMDK for Android installation. Each version and updates of the EMDK For Android may come with a different set of sample applications. This guide generically describes how to make use of one of the samples. The general instructions apply to all samples. To learn more about each sample application, see their corresponding guide in the Samples menu.

##Prerequisites
- Java JDK 
- Android ADT 
- EMDK for Android  
- An EMDK supported Android device

For more information about setting up the EMDK please see the [EMDK Overview](../guide/about).

##Loading the Sample Application
Sample Applications are installed along with the EMDK and can be found in your start bar. 

1. Select Start 
2. Select "EMDK for Android v2.0"
3. Select "Samples"

	  ![img](images/sample/1.jpg)
4. Your browser should open with a list of included samples

	  ![img](images/sample/2.jpg)
5. Select "ADTSamples" from the web page   

	  ![img](images/sample/3.jpg)
6. Copy the path to the directory on your computer   

	  ![img](images/sample/4.jpg)

7. In Eclipse select From the tool bar "File" -> "Import"
8.  Select Android "Existing Android Code Into Workspace"

    ![img](images/sample/5.jpg)
9. Browse to the samples directory from the web page and select a sample for example"ProfileDataCaptureSample1"

    ![img](images/sample/6.jpg)
10. Select Finish

##Deploying a Sample Application

1. Attach an EMDK supported Android device to your computer in USB debug mode. 

	>NOTE: The device needs the EMDK runtime installed.
2. From the Package Explorer right click on the select the sample application 
3. Right click on the project and select "Run As" -> "Android Application"

	![img](images/sample/7.jpg)
4. Select your Android device and click "Okay". 
    
    ![img](images/sample/8.jpg)

##About the Sample Applications
You can inspect the code of the sample application to see what it is doing as well as consult the overview guide for each sample application.

* [Datacapture](../guide/sample/sampledatacaptureprofile)
* [App Manager](../guide/sample/sampleprofileapp)
* [Clock](../guide/sample/sampleprofileclock)
* [GPRS Manager](../guide/sample/sampleprofilegprs)
* [Power Manager](../guide/sample/sampleprofilepower)
* [Wi-Fi Manager](../guide/sample/sampleprofilewifi)
* [Scanning/Barcode APIs](../guide/sample/samplebarcode)

