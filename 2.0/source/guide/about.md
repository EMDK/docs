# About EMDK For Android

## Overview
When applications require tight integration and performance, the EMDK for Android delivers the feature set and capabilities you have grown to expect from Motorola. With a comprehensive set of APIs and sample code, the EMDK enables you to take full advantage of what our devices have to offer.   

## Requirements
The following software must be installed prior to using the EMDK for Android.

* Microsoft Windows 7 (32-bit and 64-bit)  or Microsoft® Windows 8 (32-bit and 64-bit) or Microsoft® Windows 8.1 (32-bit and 64-bit)
* Java Development Kit (JDK) v7u45 or higher
* Android Developer Tools (ADT) v22.3.0-887826 or higher

## Devices Supported
Although EMDK for Android has been designed to work with all Motorola Solutions mobile computers running Android, it should only be used to develop applications for approved devices.  For a complete listing of approved devices go to the download page for this product .

* MC40
* MC67
* TC55

## Components

### Profile Manager
The EMDK's exclusive [Profile Manager](../guide/profiles/usingwizard) Technology is an additional advantage for developers giving you a GUI based development tool built on our open framework. This allows you to write fewer lines of code resulting in reduced development time, effort and errors. This innovative feature not only gives you easy access to critical functions such as bar code scanning and transaction processing via a magnetic stripe reader (MSR) but also functionality not available in Google's Android SDK.   
### EMDK Device Runtimes
In order for your application to use the EMDK For Android, you will need to install the EMDK Device Runtime on each device. This runtime is included with the EMDK For Android installation. Check the [Programmers Guide](../guide/tutorial/tutdatacaptureprofile) for instructions. In the future the EMDK Services will be included with the default operating system for the device.

### Samples & Programmer's Guide
There are sample projects that are included as part of the EMDK For Android installation. You can import the project into Eclipse and run on your device. Look at the [Sample Guide](../guide/sample/sampledatacaptureprofile) for more details on using these samples. You can also reference the [Programmers Guide](../guide/tutorial/tutdatacaptureprofile) for a complete walk-through of building your first EMDk For Android application.

### Java APIs
The EMDK for Android 2.0 offers access to the device's [Barcode](../guide/profiles/profilebarcode) and [MSR](../guide/profiles/profilemsr) capabilities though the use of Profiles. Profiles are created through Eclipse using the [Profile Manager Wizard](../guide/profiles/usingwizard) and packaged up with your application. Your application then chooses to enable the profiles when needed using the [ProfileManager APIs](../guide/reference/EMDKList). 

Your application can also choose to modify individual settings of that profile on the fly during application running. In order to receive data back from the running profile, you would configure it to either send the data as keystrokes, or to trigger an Intent that your application is ready to handle.

In the near future, the EMDK For Android will contain other types of profiles for device configuration like Wi-Fi, Power, etc. It will also contain traditional native Java APIs for direct access to device capabilities without the use of profiles.

### Intent APIs
The EMDK for Android will continue to support the [DataCapture](../guide/reference/refdatacaptureintent) and [Battery Intent](../guide/reference/refbatteryintent) APIs that were previously available on individual device types. 

<a name="faqs"></a>
## Frequently Asked Questions
**Q: Where can I download a copy of the EMDK for Android?**

A: The EMDK for Android can be downloaded from Support Portal [here](https://portal.motorolasolutions.com/Support/US-EN/Mobile+Networks+RFID+and+BarCode+Scanners/Mobile+Computers/Developer+Kits+and+Software+Tools/Mobile%20Computer%20Software%20and%20Developer%20Tools_US-EN)

**Q: Is there a cost for the EMDK for Android?**

A: No, EMDK for Android is available for free and can be downloaded from Support Portal [here](https://portal.motorolasolutions.com/Support/US-EN/Mobile+Networks+RFID+and+BarCode+Scanners/Mobile+Computers/Developer+Kits+and+Software+Tools/Mobile%20Computer%20Software%20and%20Developer%20Tools_US-EN)

**Q: Which device does the EMDK for Android v2.0 support and which operating systems?**

A: The EMDK for Android v2.0 supports the following Jelly Bean devices only:

* MC40
* MC67
* TC55

**Q: Which desktop operating systems are supported by the EMDK for Android v2.0 support?**

A: The EMDK for Android v2.0 is supported on Windows 7, Windows 8 and Windows 8.1.

**Q: Can the EMDK for Android v2.0 be installed on Windows XP?**

A: No, the EMDK for Android v2.0 does not support Windows XP and there are no current plans to support this operating system.

**Q: Can the EMDK for Android v2.0 be installed on a MAC?**

A: No, the EMDK for Android v2.0 does not support MAC OS. MAC support will be considered in a future release of the EMDK for Android. However you can use virtualization solutions such as VMware fusion to run one of the supported Windows operating systems on a MAC.

**Q: Can the EMDK for Android v2.0 be used with Android Studio?**

A: No, the EMDK for Android v2.0 does not support Android Studio. Support for Android Studio will be made available in a future release of the EMDK for Android.

**Q: What documentation is available for EMDK for Android v2.0 and where can I obtain it?**

A: Documentation for the EMDK can be downloaded from Launch Pad here:

* [EMDK Landing page](https://developer.motorolasolutions.com/community/android/emdk) 
* [Tutorials](https://developer.motorolasolutions.com/community/android/emdk/tutorials) 
* [Samples](https://developer.motorolasolutions.com/community/android/emdk/samples) 
* [API Reference](https://developer.motorolasolutions.com/community/android/emdk/reference) 
* [Profile Manager](https://developer.motorolasolutions.com/community/android/emdk/profiles)

**Q: Why is this release of the EMDK for Android called version 2.0 and is there a version 1.0?**

A: The EMDK for Android version 2.0 is the next evolution of the Data Capture SDK. While the Data Capture SDK was not explicitly named “EMDK”, this previously released version is considered the EMDK for Android v1.0. The EMDK for Android version 2.0 contains all of the 1.0 functionality (Data Capture and Battery Intent APIs), and reinforces our commitment in supporting development using the standard Android Intent inter-application messaging system. As devices continue to progress, the EMDK for Android will provide access to those new capabilities through our Profile Manager and APIs, including Intents.

**Q: Will my app run across the entire MSI android portfolio?**

A: EMDK for Android is designed to be compatible with all Motorola devices, Android OS and BSPs. However, the compatibility of your application will depend on not just the EMDK architecture, but also on Google’s SDK.

**Q: Can the EMDK for Android v2.0 be used as a staging tool?**

A: The EMDK for Android v2.0 is targeted for developers and the development of applications. Customers may develop an application which configures aspects of a device however the EMDK is not a staging tool.

**Q: I understand the EMDK for Android offers a feature called Profile Manager, what is this?**

A: The Profile Manager is provided as an Eclipse plug-in that offers developers a GUI development tool. The tool creates a “profile” which is comprised of settings defined by the developer for value-add features such as Barcode Scanning & MSR. In the future we will be releasing profiles for Wi-Fi (Fusion), Clock, Power, and GPRS. These settings can then be invoked and modified within the applications through the Profile Manager API.

**Q: What are the benefits of the Profile Manager GUI and API?**

A: The Profile Manager GUI and APIs allow you to, quickly and easily leverage device value-add features. The user interface makes it easy for developers to pick and choose the settings they need, eliminating the need to code these options. With the Profile Manager API, developers can invoke and modify settings as needed within their application. This gives you the fine level of control you need while reducing development time, effort and errors.

**Q: Does the EMDK for Android v2.0 offer APIs for direct control of device value adds?**

A: Yes, the EMDK for Android v2.0 currently offers the Data Capture and Battery Intent which allows you to utilize standard Android inter-application messaging system for these features. Device value-adds can also be managed through the Profile Manager API. Future releases of the EMDK will also offer traditional Java APIs similar to what has been offered for Windows CE and Windows Mobile.

**Q: Does the EMDK for Android v2.0 support traditional JAVA APIs?**

A: The EMDK for Android v2.0 offers Intent base APIs. However future releases will offer more traditional JAVA APIs similar to what has been offered for Windows CE and Windows Mobile.

**Q: Does the EMDK for Android v2.0 support Android Intents?**

A: Yes, the EMDK for Android v2.0 offers the Data Capture and Battery Intents which allow you to utilize standard Android inter-application messaging system for these features.

**Q: I understand that the EMDK for Android supports Intents; what is an Intent?**

A: An Intent is a standard Android inter-application messaging mechanism. For more information please see Google’s documentation on Android Intent; http://developer.android.com/reference/android/content/Intent.html

**Q: How does Mobility Extensions (MX) relate to the EMDK for Android?**

A: The EMDK for Android provides developers with a programmatic interface to the MX value-add features on our devices. Future releases of the EMDK for Android will offer additional features as we continue to expand MX capabilities.

**Q: I have developed my application with the EMDK for .NET and now want to migrate to Android. Does the EMDK for Android support the same features or APIs?**

A: The EMDK for Android is designed to expose MX value-add features and provides developers with a GUI tool to help reduce the development effort. Many of the device specific features such as Barcode scanning and MSR will be provided as part of the EMDK for Android. However standard Android APIs from Google such as Audio and Keyboard will not. This is done in order to avoid application fragmentation. The EMDK for Android v2.0 is meant to be used alongside the Google Android SDK and together provide many of the features developers need in order to migrate their applications to Android. Below is the list of the EMDK for .NET APIs along with equivalent EMDK for Android v2.0 APIs, Profiles, and the standard Google APIs. This list is a reference guide in order to help when migrating applications to Android.


<table>
	<tr>
		<th>EMDK for .NET</th>
		<th>EMDK for Android 2.0</th>
		<th>Google Android SDK</th>
	</tr>
	<tr>
		<td>Barcode (Symbol.Barcode)</td>
		<td> Data Capture Intent Barcode Profile</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Image Capture (Symbol.Imaging)</td>
		<td> X </td>
		<td>android.hardware.camera</td>
	</tr>
	<tr>
		<td>Display (Symbol.Display)</td>
		<td>X</td>
		<td>android.view.Display</td>
	</tr>
	<tr>
		<td>Audio (Symbol.Audio)</td>
		<td>X</td>
		<td>android.media.AudioManager</td>
	</tr>
	<tr>
		<td>WLAN (Symbol.Fusion)</td>
		<td> X</td>
		<td> android.net.wifi.WifiManager<br/> android.net.wifi.p2p.WifiP2pManager</td>
	</tr>
	<tr>
		<td>Battery Mgt (Symbol.ResCoord)</td>
		<td>Battery Intent</td>
		<td>android.os.BatteryManager</td>
	</tr>
	<tr>
		<td>Keyboard (Symbol.Keyboard)</td>
		<td>X</td>
		<td>android.inputmethodservice.Keyboard.Key</td>
	</tr>
	<tr>
		<td>MagStripe (Symbol.MagrStripe)</td>
		<td>Data Capture Intent MSR Profile</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Sensor (Symbol.Sensor)</td>
		<td>X</td>
		<td>android.hardware.SensorManager</td>
	</tr>
	<tr>
		<td>Bluetooth (Symbol.WPAN)</td>
		<td>X</td>
		<td> android.BluetoothAdapter</td>
	</tr>
	<tr>
		<td>Database (Sysm.data.SqlServerCe)</td>
		<td>X</td>
		<td>android.database.sqlite</td>
	</tr>
	<tr>
		<td>NFC</td>
		<td>X</td>
		<td>android.nfc</td>
	</tr>
	<tr>
		<td>Notification (Symbol.ResCoord)</td>
		<td>X</td>
		<td>Android.service.notification</td>
	</tr>
	<tr>
		<td>Printing (Symbol.printing)</td>
		<td>X</td>
		<td>android.print</td>
	</tr>
	<tr>
		<td>XML serialization (System.XML) </td>
		<td>X</td>
		<td> org.xmlpull.v1.XmlSerializer<br/> org.xml.sax</td>
	</tr>
	<tr>
		<td>Interop Services (System.Runtime.InteropServices) </td>
		<td>X </td>
		<td>Java Native Interface</td>
	</tr>
	<tr>
		<td>Threading (System.Threading) </td>
		<td>X </td>
		<td>java.lang.Thread</td>
	</tr>
	<tr>
		<td>Encryption (System.Security.Cryptography) </td>
		<td>X </td>
		<td>javax.crypto</td>
	</tr>
	<tr>
		<td>Message Queue (System.Messaging) </td>
		<td>X </td>
		<td>android.os.MessageQueue</td>
	</tr>
	<tr>
		<td>Network Communications (System.Net/System.Net.Sockets) </td>
		<td>X </td>
		<td>java.net.Socket</td>
	</tr>
	<tr>
		<td>File management (System.IO…) </td>
		<td>X </td>
		<td>java.io.File</td>
	</tr>
</table>






