# About EMDK For Android

## Overview
The EMDK for Android v2.1 provides developers with a comprehensive set of tools to easily create powerful line of business applications for enterprise mobile computing devices and is designed for use with Google's Android SDK and Android Development Tools (ADT). The EMDK for Android includes class libraries, sample applications with source code, as well as all of the associated documentation to help your applications take full advantage of what our devices have to offer.

It also includes an exclusive Profile Manager Technology within the Eclipse IDE, providing a GUI based development tool. This allows you to write fewer lines of code resulting in reduced development time, effort and errors.

## Requirements
The following software must be installed prior to using the EMDK for Android.

* Microsoft Windows 7 (32-bit and 64-bit)  or Microsoft&copy; Windows 8 (32-bit and 64-bit) or Microsoft&copy; Windows 8.1 (32-bit and 64-bit)
* Java Development Kit (JDK) v7u45 or higher
* Android Developer Tools (ADT) v22.3.0-887826 or higher

## Devices Supported
Although EMDK for Android has been designed to work with all Motorola Solutions mobile computers running Android, the following devices have been used for validation:

* MC32 - OS Update image v00002 or higher
* MC40 - OS Update image v02.08.0520 or higher
* MC67 - OS Update image v01.28.14 or higher
* TC55 - OS Update image v01.74.00 or higher

## What's New

* MC32 Support
* New [EMDK Profiles](../guide/profiles/usingwizard) features:
	* [Access Manager](../guide/profiles/refAccessManager) - Only applications on the white list are allowed to run
	* [App Manager](../guide/profiles/refAppManager) - Silent installation / uninstall of APKs
	* [Certificate Manager](../guide/profiles/refCertManager) - Install and management of certificates
	* [Clock](../guide/profiles/refClockManager) - Setting the Date, Time and Time Zone
	* [Persistence Manager](../guide/profiles/refPersistanceManager) - Maintain settings on reset
	* [Power Manager](../guide/profiles/refPowerManager) - OS Update, Reboot
	* [DataCapture IP Output](../guide/profiles/profileIP) - output barcode data to a remote server
	* [Wi-Fi](../guide/profiles/refWiFiManager) - Band and Channel selection, 802.11d / country configuration, and Disable / Enable
	* [GPRS](../guide/profiles/refGPRS) - Configuring GPRS APN settings
* New Tutorials
	* [Using Data Capture Intent Output](../guide/tutorial/tutdatacaptureprofilePt2)
	* [Using Using Multiple Data Capture Profiles](../guide/tutorial/tutdatacaptureprofilePt3)
	* [Using ProfileConfig API](../guide/tutorial/tutModifyBarcodeProfileSettings)
	* [Using AppManager](../guide/tutorial/tutMxAppManager)
	* [Using ClockManager](../guide/tutorial/tutMxClock)
	* [Changing Default Launcher](../guide/tutorial/tutMxDefaultLauncher)
	* [Profile Errors](../guide/tutorial/tutMxErrors)

## Components

### Profile Manager
The EMDK's exclusive [Profile Manager](../guide/profiles/usingwizard) Technology is an additional advantage for developers giving you a GUI based development tool built on our open framework. This allows you to write fewer lines of code resulting in reduced development time, effort and errors. This innovative feature not only gives you easy access to critical functions such as bar code scanning and transaction processing via a magnetic stripe reader (MSR) but also functionality not available in Google's Android SDK.   
### EMDK Device Runtimes
In order for your application to use the EMDK For Android, you will need to install the EMDK Device Runtime on each device. This runtime is included with the EMDK For Android installation. Check the [Programmers Guide](../guide/tutorial/tutdatacaptureprofile) for instructions. In the future the EMDK Services will be included with the default operating system for the device.

### Samples & Programmer's Guide
There are sample projects that are included as part of the EMDK For Android installation. You can import the project into Eclipse and run on your device. Look at the [Sample Guide](../guide/sample/sampledatacaptureprofile) for more details on using these samples. You can also reference the [Programmers Guide](../guide/tutorial/tutdatacaptureprofile) for a complete walk-through of building your first EMDK For Android application.

### Java APIs
The EMDK for Android 2.1 offers access to the device's [Barcode](../guide/profiles/profilebarcode) and [MSR](../guide/profiles/profilemsr) capabilities though the use of Profiles. Profiles are created through Eclipse using the [Profile Manager Wizard](../guide/profiles/usingwizard) and packaged up with your application. Your application then chooses to enable the profiles when needed using the [ProfileManager APIs](../guide/reference/EMDKList). 

Your application can also choose to modify individual parameters of that profile on the fly during application running. In order to receive data back from the running profile, you would configure it to either send the data as keystrokes, or to trigger an Intent that your application is ready to handle.

In the near future, the EMDK For Android will contain other types of profiles for device configuration like Wi-Fi, Power, etc. It will also contain traditional native Java APIs for direct access to device capabilities without the use of profiles.

### Intent APIs
The EMDK for Android will continue to support the [DataCapture](../guide/reference/refdatacaptureintent) and [Battery Intent](../guide/reference/refbatteryintent) APIs that were previously available on individual device types. 

<a name="faqs"></a>

## Frequently Asked Questions
**Q: Where can I download a copy of the EMDK for Android?**

A: The EMDK for Android can be downloaded from Support Portal [here](https://portal.motorolasolutions.com/Support/US-EN/Mobile+Networks+RFID+and+BarCode+Scanners/Mobile+Computers/Developer+Kits+and+Software+Tools/Mobile%20Computer%20Software%20and%20Developer%20Tools_US-EN)

**Q: Is there a cost for the EMDK for Android?**

A: No, EMDK for Android is available for free and can be downloaded from Support Portal [here](https://portal.motorolasolutions.com/Support/US-EN/Mobile+Networks+RFID+and+BarCode+Scanners/Mobile+Computers/Developer+Kits+and+Software+Tools/Mobile%20Computer%20Software%20and%20Developer%20Tools_US-EN)

**Q: Which device does the EMDK for Android v2.1 support and which operating systems?**

A: The EMDK for Android v2.1 supports the following Jelly Bean devices only:

* MC32
* MC40
* MC67
* TC55

**Q: Which desktop operating systems are supported by the EMDK for Android v2.1 support?**

A: The EMDK for Android v2.1 is supported on Windows 7, Windows 8 and Windows 8.1.

**Q: Can the EMDK for Android v2.1 be installed on Windows XP?**

A: No, the EMDK for Android v2.1 does not support Windows XP and there are no current plans to support this operating system.

**Q: Can the EMDK for Android v2.1 be installed on a MAC?**

A: No, the EMDK for Android v2.1 does not support MAC OS. MAC support will be considered in a future release of the EMDK for Android. However you can use virtualization solutions such as VMware fusion to run one of the supported Windows operating systems on a MAC.

**Q: Can the EMDK for Android v2.1 be used with Android Studio?**

A: No, the EMDK for Android v2.1 does not support Android Studio. Support for Android Studio will be made available in a future release of the EMDK for Android.

**Q: What documentation is available for EMDK for Android v2.1 and where can I obtain it?**

A: Besides this self contained set of documentation, additional and/or updated documentation for the EMDK can be found on Motorola Solutions LaunchPad here:

* [EMDK Landing page](https://developer.motorolasolutions.com/community/android/emdk) 
* [Tutorials](https://developer.motorolasolutions.com/community/android/emdk/tutorials) 
* [Samples](https://developer.motorolasolutions.com/community/android/emdk/samples) 
* [API Reference](https://developer.motorolasolutions.com/community/android/emdk/reference) 
* [Profile Manager](https://developer.motorolasolutions.com/community/android/emdk/profiles)

**Q: Why is this release of the EMDK for Android called version 2.1 and is there a version 1.0?**

A: The EMDK for Android version 2.1 is the next evolution of the Data Capture SDK. While the Data Capture SDK was not explicitly named “EMDK”, this previously released version is considered the EMDK for Android v1.0. The EMDK for Android version 2.1 contains all of the 1.0 functionality (Data Capture and Battery Intent APIs), and reinforces our commitment in supporting development using the standard Android Intent inter-application messaging system. As devices continue to progress, the EMDK for Android will provide access to those new capabilities through our Profile Manager and APIs, including Intents.

**Q: Will my app run across the entire MSI android portfolio?**

A: EMDK for Android is designed to be compatible with all Motorola devices, Android OS and BSPs. However, the compatibility of your application will depend on not just the EMDK architecture, but also on Google’s SDK. See above for what versions were validated.

**Q: Can the EMDK for Android v2.1 be used as a staging tool?**

A: The EMDK for Android v2.1 is targeted for developers and the development of applications. Customers may develop an application which configures aspects of a device however the EMDK is not a staging tool.

**Q: I understand the EMDK for Android offers a feature called Profile Manager, what is this?**

A: The Profile Manager is provided as an Eclipse plug-in that offers developers a GUI development tool. The tool creates a “profile” which is comprised of "profile features" defined by the developer for value-add capabilities such as Barcode Scanning & MSR as well as device configuration features like Clock, Power, Certificates and Application Access. These features can then be invoked and modified within the applications through the Profile Manager API.

**Q: What are the benefits of the Profile Manager GUI and API?**

A: The Profile Manager GUI and APIs allow you to, quickly and easily leverage device value-add features. The user interface makes it easy for developers to pick and choose the features they need, eliminating the need to code these options. With the Profile Manager API, developers can invoke and modify features as needed within their application. This gives you the fine level of control you need while reducing development time, effort and errors.

**Q: Does the EMDK for Android v2.1 offer APIs for direct control of device value adds?**

A: Yes, the EMDK for Android v2.1 currently offers the Data Capture and Battery Intent which allows you to utilize standard Android inter-application messaging system for these features. Device value-adds can also be managed through the Profile Manager API. Future releases of the EMDK will also offer traditional Java APIs similar to what has been offered for Windows CE and Windows Mobile.

**Q: Does the EMDK for Android v2.1 support traditional JAVA APIs?**

A: The EMDK for Android v2.1 offers Intent base APIs. However future releases will offer more traditional JAVA APIs similar to what has been offered for Windows CE and Windows Mobile.

**Q: Does the EMDK for Android v2.1 support Android Intents?**

A: Yes, the EMDK for Android v2.1 offers the Data Capture and Battery Intents which allow you to utilize standard Android inter-application messaging system for these features.

**Q: I understand that the EMDK for Android supports Intents; what is an Intent?**

A: An Intent is a standard Android inter-application messaging mechanism. For more information please see Google’s documentation on Android Intent; http://developer.android.com/reference/android/content/Intent.html

**Q: How does Mobility Extensions (MX) relate to the EMDK for Android?**

A: The EMDK for Android provides developers with a programmatic interface to the MX value-add features on our devices. Future releases of the EMDK for Android will offer additional features as we continue to expand MX capabilities.

**Q: I have started developed of my application with the EMDK for Android, what are the features of the EMDK and what are my alternatives?

A: The EMDK for Android is designed to expose MX value-add features and provides developers with a GUI tool to help reduce the development effort. Many of the device specific features such as Barcode scanning and MSR will be provided as part of the EMDK for Android. However standard Android APIs from Google such as Audio and Keyboard will not.
 
The intent of the EMDK is to provide developers with commonly required programmatic features for Line of Business applications. The EMDK for Android v2.1 is meant to be used alongside the Google Android SDK to provide developers a comprehensive set of features without having to have a signed application. Below is a list of key features and there availability within the EMDK for Android and Google’s Android SDK. This is meant to be used as a reference guide to provide clarity on when to use the EMDK versus the Android SDK. 


<table>
	<tr>
		<th>Feature</th>
		<th>EMDK for Android 2.1</th>
		<th>Google Android SDK</th>
	</tr>
	<tr>
		<td>Barcode / Scanning</td>
		<td> Data Capture Intent <br/>Barcode Profile</td>
		<td></td>
	</tr>
	<tr>
		<td>Image Capture</td>
		<td></td>
		<td>android.hardware.camera</td>
	</tr>
	<tr>
		<td>MagStripe Reader</td>
		<td>Data Capture Intent<br/>MSR Profile</td>
		<td></td>
	</tr>
	<tr>
		<td>Wi-Fi Settings</td>
		<td>Wi-Fi Profile</td>
		<td>android.net.wifi.WifiManager <br/>android.net.wifi.p2p.WifiP2pManager</td>
	</tr>
	<tr>
		<td>Fusion Settings</td>
		<td>Wi-Fi Profile</td>
		<td></td>
	</tr>
	<tr>
		<td>Battery Mgt (Symbol.ResCoord)</td>
		<td>Battery Intent</td>
		<td>android.os.BatteryManager</td>
	</tr>
	<tr>
		<td>Keyboard (Symbol.Keyboard)</td>
		<td></td>
		<td>android.inputmethodservice.Keyboard.Key</td>
	</tr>
	<tr>
		<td>Battery Management</td>
		<td>Battery Intent</td>
		<td>android.os.BatteryManager</td>
	</tr>
	<tr>
		<td>GPRS (APN) Settings</td>
		<td>GPRS Profile</td>
		<td></td>
	</tr>
	<tr>
		<td>File management</td>
		<td>Application Mgr Profile</td>
		<td>java.io.File</td>
	</tr>
	<tr>
		<td>Silent APK Install</td>
		<td>Application Mgr Profile</td>
		<td></td>
	</tr>
	<tr>
		<td>Application White Listing</td>
		<td>Access Mgr Profile</td>
		<td></td>
	</tr>
	<tr>
		<td>Display Attributes</td>
		<td></td>
		<td>android.view.Display</td>
	</tr>
	<tr>
		<td>Audio Settings</td>
		<td></td>
		<td>android.media.AudioManager</td>
	</tr>
	<tr>
		<td>Sensor (Symbol.Sensor)</td>
		<td></td>
		<td>android.hardware.SensorManager</td>
	</tr>
	<tr>
		<td>Bluetooth Settings</td>
		<td></td>
		<td>android.BluetoothAdapter</td>
	</tr>
	<tr>
		<td>SQL Database Management</td>
		<td></td>
		<td>android.database.sqlite</td>
	</tr>
	<tr>
		<td>NFC</td>
		<td></td>
		<td>android.nfc</td>
	</tr>
	<tr>
		<td>Notifications</td>
		<td></td>
		<td>android.service.notification</td>
	</tr>
	<tr>
		<td>Printing</td>
		<td></td>
		<td>android.print</td>
	</tr>
	<tr>
		<td>XML Serialization</td>
		<td></td>
		<td>org.xmlpull.v1.XmlSerializer <br/> org.xml.sax</td>
	</tr>
	<tr>
		<td>Interop Services</td>
		<td></td>
		<td>Java Native Interface</td>
	</tr>
	<tr>
		<td>Threading</td>
		<td></td>
		<td>java.lang.Thread</td>
	</tr>
	<tr>
		<td>Encryption</td>
		<td></td>
		<td>javax.crypto</td>
	</tr>
	<tr>
		<td>Message Queue</td>
		<td></td>
		<td>android.os.MessageQueue</td>
	</tr>
	<tr>
		<td>Network Communications</td>
		<td></td>
		<td>java.net.Socket</td>
	</tr>
</table>






