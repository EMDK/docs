# GPRS Manager Profile Feature Reference

## Overview

The GPRS Profile feature allows you to add or remove APNs to your device. 

## Name
The name field is used by the EMDK to identify this particular feature parameter set when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.


## APN Action
This setting allows you to manage the APN configuration on the device:

* Add/replace APN
* Remove existing named APN
* Remove all existing APNs

## GPRS Carrier 
Options for GPRS carrier for the APN.

* ATT
* T-Mobile
* Custom

>Note: For ATT and T-Mobile option the user and password filed are required.

## APN Name 
Provide the name that the APN should be set to. Used to identify the APN settings for deleting existing APN or adding/replacing. Must be unique on the device. 

## Replace if Exists 
This check box provides the option to replace an existing APN.

* Check Box is marked: Delete the APN for the device and set the new APN.
* Check Box is not marked: Don't add new APN if already there is an APN with the same name.


## Make Default APN 
This check box provides the option to set the new APN to be Preferred.

## Access Point 
Provide the access point name that the APN should be set to (ex: internet3.voicestream.com).

## User Name
Provide the user name that the APN should be set to.

## Password
Provide the password that the APN should be set to.

## Feature Compatibility

<table>
	<tr>
		<th>Parameters</th>
		<th>Specific</th>
		<th>MC32</th>
		<th>MC40</th>
		<th>MC67</th>
		<th>TC55</th>

	</tr>
	<tr>
		<td rowspan="3">APN Action</td>
		<td>Add/Replace</td>
		<td></td>
		<td></td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Remove existing</td>
		<td></td>
		<td></td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Remove all</td>
		<td></td>
		<td></td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td rowspan="7">APN Settings</td>
		<td>Carrier</td>
		<td></td>
		<td></td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>APN Name</td>
		<td></td>
		<td></td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Replace</td>
		<td></td>
		<td></td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Make Default</td>
		<td></td>
		<td></td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Access Point</td>
		<td></td>
		<td></td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>User Name</td>
		<td></td>
		<td></td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Password</td>
		<td></td>
		<td></td>
		<td>X</td>
		<td>X</td>
	</tr>

</table>


