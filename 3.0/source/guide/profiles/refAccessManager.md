# Access Manager Profile Feature Reference

## Overview

The Access Manager feature allows you to configure a set of applications that will be allowed to run and install on the device. When a profile with this feature is enabled, the device will only allow user installed applications on the Whitelist to be executed and/or installed (some applications that are part of the default operating system will still be available). To disable the Whitelist, you would select 'Single User Without Whitelist'.  

>Note: It is important to include the executing EMDK application in the Whitelist otherwise your application will lose control of the Whitelist configuration and you will not be able to change the behavior.



## Name
The name field is used by the EMDK to identify this particular feature parameter set when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.

## Operation Mode
* Single User Without Whitelist - Setting this feature will disable all Whitelist features.
* Single User With Whitelist - Setting this feature will enable the Whitelist feature based on the details provided. You can choose to add or delete packages from the current Whitelist

##System Settings Access
>Note: This setting is available when the operation mode is `Single User With Whitelist`
1. Full Access - The device's System Settings Menu will not be reduced
2. Reduced Access - The device's System Settings menu will be reduced to a pre-selected group of options (Display, Volume, About)

## Delete Packages
Options for deleting packages from the Whitelist

* Delete No Packages - Does not delete any packages
* Delete All Packages - Deletes all packages 
* Delete Specified Package - Delete specified package
	* Delete Package Name: Name of package(s) separated by a comma ex: com.mycompany.mypackage 

## Add Packages
Options for adding packages to the Whitelist

* Add No Packages - Does not add any packages
* Add Specified Package - Add specified package
	* Add Package Name: Name of package(s) separated by a comma ex: com.mycompany.mypackage 

>Note: It is important to include the executing EMDK application in the Whitelist otherwise your application will lose control of the Whitelist configuration and you will not be able to change the behavior without an enterprise reset..

## Allow Application To Submit XML
>Note: This feature will be supported on devices that are running KitKat versions of Android like the TC70 and will only be used when the Whitelist feature is enabled.

You can specify and restrict specific applications the ability to submit changes to the MX Framework.

* Allow Package Names - Provide a comma separated list of package names that are allowed to submit XML to the MX framework.
* Disallow Package Names - Provide a comma separated list of package names that are not allowed to submit XML to the MX framework.


## Feature Compatibility
<table>
	<tr>
		<th>Parameters</th>
		<th>Specific</th>
		<th>MC32</th>
		<th>MC40</th>
		<th>MC67</th>
		<th>TC55</th>
		<th>KitKat (Future)</th>

	</tr>
	<tr>
		<td rowspan="2">Single User Without Whitelist</td>
		<td></td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Allow Application To Submit XML</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>	
	<tr>
		<td rowspan="8">Single User with Whitelist</td>
		<td>Full Access</td>
		<td>X</td>
		<td>X</td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>	
	<tr>
		<td>Reduced Access</td>
		<td>X</td>
		<td>X</td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>	
	<tr>
		<td>Delete NO package</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>	
	<tr>
		<td>Delete specified package(s)</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>	
	<tr>
		<td>Delete ALL packages</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>	
	<tr>
		<td>Add NO package</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>	
	<tr>
		<td>Add specified package(s)</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Allow Application To Submit XML</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>	

</table>
