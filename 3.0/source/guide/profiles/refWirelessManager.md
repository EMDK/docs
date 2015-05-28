# Wireless Manager Profile Feature Reference

## Overview

The Wireless Manager Profile feature allows you to configure wireless configurations on your device. (Ex. Configure device's Bluetooth)  

## Name
The name field is used by the EMDK to identify this particular feature parameter set when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.


## Bluetooth
This setting allows you to configure Bluetooth on your device.

* **Do not change** - Keep existing Bluetooth settings
* **Enable** - Turn Bluetooth ON.
* **Disable** - Turn Bluetooth OFF. 

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
		<td rowspan="3">Bluetooth</td>
		<td>Do not change</td>
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
	</tr>
	<tr>
		<td>Disable</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
</table>


