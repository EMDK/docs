# USB Manager Profile Feature Reference

## Overview

The USB Manager Profile feature allows you to manage USB configurations of your device.  

## Name
The name field is used by the EMDK to identify this particular feature parameter set when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.


## USB Module Usage
Specify whether the use of USB module will be allowed.

* Do not change
* Enable
* Disable

## USB External Storage Usage
>Note: This feature will be supported on devices that are running KitKat versions of Android like the TC70.
Specify whether the use of USB external storage will be allowed.

* Do not change
* Enable
* Disable

## USB ADB Usage
Specify whether the use of ADB Mode will be allowed.

* Do not change
* Enable
* Disable

## Access device storage from PC via USB
>Note: This feature will be supported on devices that are running KitKat versions of Android like the TC70.

Specify whether all methods to access device storage from PC via USB (e.g. UMS, MTP, PTP) will be allowed

* Do not change - Configure methods individually (Ex. UMS, MPT, PTP) to access device storage from PC via USB.
* Enable
* Disable

## Access device storage from PC via USB UMS
>Note: This feature will be supported on devices that are running KitKat versions of Android like the TC70.

Specify whether access device storage from PC via USB UMS will be allowed.

* Do not change
* Enable
* Disable

## Access device storage from PC via USB MTP
>Note: This feature will be supported on devices that are running KitKat versions of Android like the TC70.

Specify whether access device storage from PC via USB MTP will be allowed.

* Do not change
* Enable
* Disable

## Access device storage from PC via USB PTP
>Note: This feature will be supported on devices that are running KitKat versions of Android like the TC70.

Specify whether access device storage from PC via USB PTP will be allowed.

* Do not change
* Enable
* Disable

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
		<td rowspan="3">USB Module Usage</td>
		<td>Do not change</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Enable</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Disable</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
    <tr>
		<td rowspan="3">USB External Storage Usage</td>
		<td>Do not change</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Enable</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Disable</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
    <tr>
		<td rowspan="3">USB ADB Usage</td>
		<td>Do not change</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Enable</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Disable</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
    <tr>
		<td rowspan="3">Access device storage from PC via USB</td>
		<td>Do not change</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Enable</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Disable</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
        <tr>
		<td rowspan="3">Access device storage from PC via USB UMS</td>
		<td>Do not change</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Enable</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Disable</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
    <tr>
		<td rowspan="3">Access device storage from PC via USB MTP</td>
		<td>Do not change</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Enable</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Disable</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
    <tr>
		<td rowspan="3">Access device storage from PC via USB PTP</td>
		<td>Do not change</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Enable</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Disable</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
</table>


