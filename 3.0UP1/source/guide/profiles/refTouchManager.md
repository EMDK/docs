# Touch Manager Profile Feature Reference

## Overview

Touch Manager Profile feature allows you set the Touch Mode on your device in order to interact with User Interface.

## Name
The name field is used by the EMDK to identify this particular feature parameter set when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.


## TouchAction
Specify Touch Mode to interact with User Interface on the device.

* Do not change - Keep the existing Touch Mode settings.
* Stylus and Finger - Set the Touch Mode to Stylus and Finger.
* Glove and Finger - Set the Touch Mode to Glove and Finger.

## Feature Compatibility

<table>
	<tr>
		<th>Parameters</th>
		<th>Specific</th>
		<th>MC32</th>
		<th>MC40</th>
		<th>MC67</th>
		<th>TC55</th>
		<th>TC70</th>

	</tr>
	<tr>
		<td rowspan="3">TouchAction</td>
		<td>Do not change</td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
		<td></td>
	</tr>
	<tr>
		<td>Stylus and Finger</td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
		<td></td>
	</tr>
	<tr>
		<td>Glove and Finger</td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
		<td></td>
	</tr>
</table>


