# UI Manager Profile Feature Reference
>Note: This feature is supported on devices that are running KitKat versions of Android like the TC70.

## Overview

The UI Manager Profile feature allows you to manage UI configurations using its UI Manager parameters. 

## Name
The name field is used by the EMDK to identify this particular feature parameter set when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.


## Clipboard
Specify whether the use of clipboard will be allowed.

* Do not change
* Enable
* Disable

## Clear Clipboard?
This check box provides an option whether to clear clipboard.

* Check Box is marked: Clear the clipboard.
* Check Box is not marked: Don't clear the clipboard.

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
		<td rowspan="3">Clipboard</td>
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
		<td rowspan="2">Clear Clipboard?</td>
		<td>Checked</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
	<tr>
		<td>Unchecked</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>X</td>
	</tr>
</table>


