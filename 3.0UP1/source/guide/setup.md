# EMDK For Android Setup

## Overview

The EMDK for Android provides the interface to Symbol value adds such as scanning and magstripe for developing Enterprise applications on Symbol Android devices.
This document is a guide to start working with Android Developer Tools (ADT)/Eclipse IDE environment for "EMDK for Android" development. 

##Configuring Development Computer

### Installing Java Development Kit (JDK)
1.	Go to [http://www.oracle.com/technetwork/java/javase/downloads/index.html](http://www.oracle.com/technetwork/java/javase/downloads/index.html).
2.	Download and install JDK v7u45 or newer. 

### Installing Eclipse 
1.	Go to [http://eclipse.org/downloads/](http://eclipse.org/downloads/).
2.	Download `Eclipse IDE for Java Developers` 3.7.2 (Indigo) or greater.
3.	Make a note of the name and location where you save the Eclipse on your system-you will need to refer to the standalone Eclipse directory later when installing EMDK for Android. 

> NOTE: Eclipse 3.6 (Helios) is no longer supported with the latest version of ADT.

### Installing ADT Plugin to Eclipse
>NOTE: Since Google has released Android Studio, the ADT **Bundle** is no longer available for download. You will need to install Eclipse with the ADT **Plug-In** instead.

1.	Start Eclipse, then select `Help > Install New Software`.
2.	Click `Add`, in the top-right corner.
3.	In the Add Repository dialog that appears, enter `ADT Plugin` for the Name and the following URL for the Location: `https://dl-ssl.google.com/android/eclipse/`
	
	> NOTE: The Android Developer Tools update site requires a secure connection. Make sure the update site URL you enter starts with HTTPS.
4.	Click `OK`.
5.	In the Available Software dialog, select the checkbox next to Developer Tools and click Next.
6.	In the next window, you'll see a list of the tools to be downloaded. `Click Next`.
7.	Read and accept the license agreements, then click `Finish`.
	
	> NOTE: If you get a security warning saying that the authenticity or validity of the software can't be established, click OK.
8.	When the installation completes, restart Eclipse.

>NOTE: EMDK for Android requires ADT v22.3.0-887826 or higher version.

### Installing Android SDK 
1.	Go to [http://developer.android.com/sdk/index.html](http://developer.android.com/sdk/index.html).
2.	Click on the hyperlink [Other Download Options](http://developer.android.com/sdk/index.html#Other) or scroll down towards the section `Other Download Options`.
3.	Look for the table under sub section `SDK Tools Only`.
4.	Click on the Package [installer_r24-windows.exe](http://dl.google.com/android/installer_r24-windows.exe) under Platform `Windows`.
5.	Accept the License Agreement.
6.	Click on the button `Download installer_r24-windows.exe`.
7.	Double-click the downloaded executable to start the installation.
8.	Make a note of the name and location where you save the Android SDK on your system, as you will need to refer to the standalone Android SDK directory later when installing EMDK for Android. 


### Configuring the Android Developer Tools (ADT) for EMDK
The EMDK requires Android API's 16 and 19 to be Installed.

To check which API's you have installed:

1. In Eclipse go to `Window` then `Android SDK Manager`
2. Check that the status of `Android 1.1.2 (API 16)` and `Android  4.4.2 (API 19)` SDK Platforms status is `Installed`. 
3. If either SDK platform is not installed check the SDK check mark, click `Install Packages`, and follow the on screen instructions. When the install is complete restart Eclipse. 


### Installing EMDK for Android
> NOTE: Before Installing EMDK For Android Update 1, you must first install the full version EMDK for Android v3.0 [EMDK-030004.exe]. Follow the steps below:

1.	Go to [https://portal.motorolasolutions.com/Support/US-EN](https://portal.motorolasolutions.com/Support/US-EN).
2.	Search `EMDK for Android` using the Search Support.
3.	Download and install EMDK for Android v3.0 Update 1.
4. 	During installation, it will ask to specify the preferred Android development environment. This can be either the Android Developer Tools (ADT) Bundle or the existing Eclipse IDE and the Android SDK (installed separately).  

	![img](images/setup/installchoices.jpg)
	* `Existing Eclipse IDE and Android SDK (installed separately)` option: You must provide the path to Eclipse and a path to the Android SDK: 
		
		>NOTE:  
		>Make sure to specify the parent folder where `eclipse.exe` resides as the Eclipse Root Folder. See below.
	    >
		>![img](images/setup/image003.jpg)
		>
		>Make sure to specify the parent folder where `platform-tools` folder resides as the Android SDK Root Folder. See below.
	    >
		>![img](images/setup/image005.jpg)
	* `Android Developer Tools (ADT) Bundle` option:
		
		>NOTE: Since Google released Android Studio, the ADT Bundle download is no longer available. If you have a copy of it, you may still use this option. The ADT Bundle includes Android SDK components and a version of the Eclipse IDE with built-in ADT. Make sure to specify the extracted ADT Bundle folder as the ADT Root Folder (i.e. the parent folder which `eclipse` and `sdk` sub folders reside. See below).
	    >
		>![img](images/setup/image001.png)  

5.	During installation, it will ask the approval for Symbol Android USB driver installation too. 
	     
	![img](images/setup/image007.jpg)

	>NOTE:
	>
	>* If you have installed it already, click `No`. Then it will switch back to the EMDK for Android installation.
	>
	>* If you have not installed, click `Yes`. Then it will start the Symbol Android USB driver installation automatically. Once completed, make sure to select `I want to manually reboot later` and click `Finish`. Then it will switch back to the EMDK for Android installation.

#### EMDK For Android v3.0 Update 1 Installation
It is required that EMDK For Android v3.0 must be installed prior to trying to install this update. This update includes the following changes
 
1. EMDK Device OS update v3.0.4 - All devices will need to be updated with this version.
2. License.txt 
3. Readme
4. Sample Launcher
5. BarcodeSample1 [Include some bug fixes]
 
**Installation steps:**
 
1. Install full version EMDK for Android v3.0 
2. Install EMDK for Android v3.0 Update1 

You will get the following warning if the base (EMDK for Android v3.0) is missing:

![img](images/setup/warning1.png)

You will get the following warning if the update has already been installed:

![img](images/setup/warning2.png)

You will get the following warning when running multiple instances of the update installer:

![img](images/setup/warning3.png)

## Configuring A Device

>NOTE: Devices will need to be updated with the EMDK for Android Device Runtime v3.0.4

###	Installing EMDK for Android Device Runtime using Deployment utility

1.	Connect the device to PC.
2.	Launch the Start menu program shortcut `Device Runtime Deployment`. This will open the command prompt window.
3.	Click any key to continue.
4.	This process will deploy the device runtime and reboot automatically to finish the OS update.

### Installing the EMDK device runtime when the AppLock Manager is On:

* Option 1: Turn Off the AppLock Manager before EMDK device runtime deployment and the AppLock Manager can be turned On after device reboot.
* Option 2: The customer can add the EMDK OS update app name to the AppLock Manager Applications white list before the EMDK device runtime deployment.

### Installing the EMDK device runtime on Google Mobile Service (GMS) devices:
Before installing EMDK device runtime on GMS devices, you must enable the enterprise-grade features like Mobility Extensions (MX). To download enterprise enabler for your device, go to [https://portal.motorolasolutions.com/Support/US-EN](https://portal.motorolasolutions.com/Support/US-EN) and search for "Enterprise Enabler" along with the device name.


## Verifying EMDK for Android Development Environment

###	Verifying the EMDK Wizard plug-in integration into the ADT/Eclipse IDE  
1.	Run `eclipse.exe` available under `[adt-bundle]\eclipse` (ex. \adt-bundle-windows-x86-20140321\eclipse\eclipse.exe) or `[eclipse-root]` (ex. \eclipse-standard-kepler-SR2-win32\eclipse\eclipse.exe).
2.	The menu bar should contain a new menu called "EMDK" (see below)

	![img](images/setup/image009.jpg)

### Verifying the SDK add-on integration into the ADT/Eclipse IDE
1.	Select any existing Android application project.
2.	Go to `File` -> `Properties`

	![img](images/setup/image011.jpg)
3.	Select `Android` from left pane.

	![img](images/setup/image015.jpg)
4.	Check the availability of `EMDK APIs` in the list of Project Build Targets.

	![img](images/setup/image039.jpg)

### Verifying EMDK for Android Runtime Environment

To check whether the EMDK runtime is installed on the device or not, check for the existence of `/system/framework/com.symbol.emdk.jar` on the device.


![img](images/setup/image097.jpg)


##Manually Remove EMDK for Android
In most cases running the uninstall program will cleanly remove EMDK For Android from your PC. If the uninstall fails for whatever reason, you may not be able to reinstall. The following directions will allow you to cleanly uninstall all components of the EMDK For Android. Follow the step by step instructions below:

###1. Removing installed EMDK directory
1. Open command prompt, type `regedt32` and press Enter.
2. In Registry Editor, locate the following registry key:
* On 32-Bit OS `[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall]`
* On 64-Bit OS `[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion \Uninstall]`

3. Each key listed under Uninstall in the left pane of Registry Editor represents a program that is currently installed. Scroll through and identify the registry key that has the name EMDK for Android (See Fig.01 or Fig.02).
* Fig.01
	![img](images/setup/uninstallfig1.png)
* Fig.02
	![img](images/setup/uninstallfig2.png)

4. Under key EMDK for Android look for the value UninstallString in the details pane on the right and identify the EMDK for Android installation path (i.e. the parent directory where uninstall.exe resides. See Fig.01 or Fig.02).

5. Locate and delete the Symbol EMDK for Android folder, subfolders and files.

###2. Removing installed EMDK samples directory

1. Locate and delete the Symbol EMDK for Android folder available at `Users\Public`.

###3. Removing installed EMDK short cuts under Start Programs

1. Locate and delete the following folder available at `<Profile folder>All Users\Start Menu\Programs`:
* `Symbol EMDK for Android vX.X` where vX.X = Base version of the Installation.
	* Example: `v3.0` when you have installed `EMDK for Android v3.0`

2. Additionally on Windows 8 and Windows 8.1, locate and delete the following .lnk file available at `<Profile folder>All Users\Start Menu\Programs`:
* `Symbol EMDK for Android vX.X.lnk` where vX.X = Base version of the Installation.
	* Example: `v3.0` when you have installed `EMDK for Android v3.0`

###4. Removing installed EMDK plug-in and add-on from ADT/ Eclipse IDE and Android SDK

>Note: Make sure to close all the Android Developer Tools (ADT)/ Eclipse IDE windows before proceeding.

1. For ADT Bundle users, under key EMDK for Android look for the value ADTRootFolder in the details pane on the right and identify the ADT Bundle root folder (see Fig.01).
2. Locate and remove the Eclipse plug-in and SDK add-on installed by EMDK as below:
* Go to `\<adt-bundle>\eclipse\plugins` and delete `com.symbol.emdkwizard_x.x.x.jar` file and `EMDK` folder.
* Go to `\<adt-bundle>\sdk\add-ons` and delete `addon-symbol-emdk_vX.X_API-16` and `addon-symbol-emdk_vX.X_API-19` folders.

3. For Non ADT Bundle users, under key EMDK for Android look for the values EclipseRootFolder and SDKRootFolder in the details pane on the right and identify the Eclipse and SDK root folders installed separately (see Fig.02).

4. Locate and remove the Eclipse plug-in and SDK add-on installed by EMDK as below:
* Go to `\<eclipse-root>\plugins` and delete `com.symbol.emdkwizard_x.x.x.jar` file and `EMDK` folder.
* Go to `\<sdk-root>\sdk\add-ons` and delete `addon-symbol-emdk_vX.X_API-16` and `addon-symbol-emdk_vX.X_API-19` folders.

###5. Removing installed EMDK registry settings

1. In Registry Editor, locate the following registry key:
* On 32-Bit OS `[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall]`
* On 64-Bit OS `[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall]`

2. Right-click on the EMDK for Android key in the left pane and then click Delete. Click Yes to the prompt `Are you sure you want to delete this key and all of its subkeys?`.

3. If you have installed EMDK updates, scroll through and identify the following registry key:
* `EMDK for Android vX.X Update(X)` where vX.X = Base version of the Installation.
	* Example: `v3.0` when you have installed `EMDK for Android v3.0`
* Update(X) Update version only if an update is installed. 
	* Example: `Update1` when you have installed `EMDK for Android v3.0 Update1`.

4. Right-click on the above key and then click Delete. Click Yes to the prompt `Are you sure you want to delete this key and all of its subkeys?`.
