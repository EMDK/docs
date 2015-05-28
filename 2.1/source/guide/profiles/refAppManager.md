# App Manager Profile Feature Reference

## Overview

The App Manager feature allows you to install, upgrade or remove applications from the device. It also allows you to change the current application launcher.

## Name
The name field is used by the EMDK to identify this particular feature parameter set when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.

## Install Application 
This will install the specified application. The application must not exists on the device otherwise you will receive an error (Use the Upgrade parameter instead)

* APK Path and Name: Must be the full path to the APK that will reside on the device. ex: '/storage/sdcard1/Herald.apk'

## Uninstall Application 
This will remove the specified application from the device.

* Package Name: Provide the Android package name of the application ex: 'com.mycompany.mypackage'

## Upgrade Application
This will upgrade/downgrade the specified application. The application must already exists on the device or you will receive an error (Use the Install parameter instead.

* APK Path and Name: Must be the full path to the APK that will reside on the device. ex: '/storage/sdcard1/Herald.apk'

## Default Launcher
You can provide a different application launcher to enable. The launcher application must reside on the device already.

* Package Name: Provide the Android package name of the application ex: 'com.mycompany.mypackage'

## Feature Compatibility
<table>
	<tr>
		<th>Parameters</th>
		<th>MC32</th>
		<th>MC40</th>
		<th>MC67</th>
		<th>TC55</th>

	</tr>
	<tr>
		<td>Install</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>UnInstall</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Upgrade</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Set Default Launcher</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>	
</table>
