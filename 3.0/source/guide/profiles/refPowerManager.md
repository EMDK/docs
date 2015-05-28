# Power Manager Profile Feature Reference

## Overview

This feature allows you to put the device into Sleep mode, re-power or perform an OS Update. The action will be performed when the profile is enabled.

## Name
The name field is used by the EMDK to identify this particular feature parameter sets when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.

## Do Nothing
Will not perform any action

## Sleep Mode
Will put the device into Sleep mode.

## Reboot
Will reboot or repower the device.

## Enterprise Reset
Will perform an Enterprise Reset.

> Note: This feature will be supported on devices that are running KitKat versions of Android like the TC70.

## Factory Reset
Will perform a Factory Reset.

> Note: This feature will be supported on devices that are running KitKat versions of Android like the TC70.

## Full Device Wipe
Will perform a full device wipe.

> Note: This feature will be supported on devices that are running KitKat versions of Android like the TC70.

## OS Update
Will intiate an OS Update using the provided OS Update Zip File

* OS Update Zip File - The full path to the OS Update Zip File that resides on the device

> Note: The OS Update file should already exist on the device. When using this feature on the TC55 the update package must be placed on the external SD card. Any attempt to use the internal SD card for this purpose will fail.

## Feature Compatibility


<table>
	<tr>
		<th>Parameters</th>
		<th>MC32</th>
		<th>MC40</th>
		<th>MC67</th>
		<th>TC55</th>
		<th>KitKat (Future)</th>

	</tr>
	<tr>
		<td>Do Nothing</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Sleep</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Reboot</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Enterprise Reset</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Factory Reset</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Full Device Wipe</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>OsUpdate</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
</table>


