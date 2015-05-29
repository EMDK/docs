# KeyStroke Profile Feature Reference

## Overview
In order to get Barcode or MSR data in your application, you must create a profile that has both an Input feature and an Output feature:

* [Barcode](../guide/profiles/profilebarcode) / [MSR](../guide/profiles/profilemsr) (Input)
* [Keystroke](../guide/profiles/profilekeystroke),[Intent](../guide/profiles/profileintent),[IP](../guide/profiles/profileIP) (Output)

The `Barcode` feature in the Profile Manager is responsible for reading data from the device's integrated bar code scanner and supports different types of bar code readers including laser, imager and internal camera. It also contains detailed parameters for scanner behavior as well as individual barcode symbology parameters.

The `Intent`, `Keystroke` or `IP` feature in the Profile Manager is used to define how the output from the Barcode scanner should be handled

* Intent - The Intent feature, in the Profile Manager, collects and sends data received from the Barcode scanner to your application using the Android Intent mechanism. To use this, you should be familiar with how to register to receive intents in your application as well as handling the data that is passed in. You will have the ability to configure how the intent is sent to your application in the profile itself.

* Keystroke - The Keystroke feature, in the Profile Manager, collects and sends data received from the Barcode scanner to your application by emulating keystrokes. You will have the option to control how the data is sent as well as if it should have any prefix or suffix automatically added using basic data formatting.

* IP - IP Output allows DataWedge to send captured data to a host computer via a network connection. Captured data can be sent over an IP network to a specified IP address and port using either TCP or UDP transport protocols.


## Keystroke Output
Use to configure the Keystroke Output Feature for the profile.

* Name - The name field is used by the EMDK to identify this particular feature parameter set when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.
* Enabled - Enables or disables this feature. 
* Action key character - Enabled decoding a special characters embedded within a bar code or MSR data.
	* None - Action key character feature is disabled (default).
	* Tab - Tab character (\t) in a bar code is processed.
	* Line feed - Line feed character (\t) in a bar code is processed.
	* Carriage return - Carriage return character (\t) in a bar code is processed.

## Basic Data Formatting 
Allows the configuration of any data formatting. When disabled, any data is passed on without modification.

* Enabled - Enables or disables Basic Data Formatting. 
* Prefix to data - Add characters to the beginning of the data when sent.
* Suffix to data - Add characters to the end of the data when sent.
* Send data - Set to transfer the captured data to the foreground application. Disabling this option prevents the actual data from being transmitted. However, the prefix and suffix strings, if present, are still transmitted even when this option is disabled (default - enabled).
* Send as hex - Set to send the data in hexadecimal format. 
* Send TAB key - Set to append a tab character to the end of the processed data. 
* Send ENTER key - Set to append an Enter character to the end of the processed data. 

