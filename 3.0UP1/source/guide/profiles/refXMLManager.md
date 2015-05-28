# XML Manager Profile Feature Reference

## Overview

The XML Manager Profile feature allows you to specify various XML processing modes to be used.  

## Name
The name field is used by the EMDK to identify this particular feature parameter set when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.


## XML Processing Mode
Specify the XML processing mode to use

* Execute all to end
* Execute until error, then stop
* Try until error, then Skip to Catch
* Catch error, Execute remainder

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
		<td rowspan="4">XML Processing Mode</td>
		<td>Execute all to end</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Execute until error, then stop</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
	<tr>
		<td>Try until error, then Skip to Catch</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
    <tr>
		<td>Catch error, Execute remainder</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
		<td>X</td>
	</tr>
</table>


