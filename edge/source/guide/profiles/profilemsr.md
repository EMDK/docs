# MSR Profile Feature Reference

## Overview
In order to get MagStripe (MSR) data in your application, you must create a profile with two profile features selected:

* MSR
* [Keystroke](../guide/profiles/profilekeystroke),[Intent](../guide/profiles/profileintent),[IP](../guide/profiles/profileIP) (Output)

The `MSR` feature in the Profile Manager is responsible for reading data from the device's integrated mag-stripe reader (if one such exists).

The `Intent`, `Keystroke` or `IP` feature in the Profile Manager is used to define how the output from the Barcode scanner should be handled

* Intent - The Intent feature, in the Profile Manager, collects and sends data received from the Barcode scanner to your application using the Android Intent mechanism. To use this, you should be familiar with how to register to receive intents in your application as well as handling the data that is passed in. You will have the ability to configure how the intent is sent to your application in the profile itself.

* Keystroke - The Keystroke feature, in the Profile Manager, collects and sends data received from the Barcode scanner to your application by emulating keystrokes. You will have the option to control how the data is sent as well as if it should have any prefix or suffix automatically added using basic data formatting.

* IP - IP Output allows DataWedge to send captured data to a host computer via a network connection. Captured data can be sent over an IP network to a specified IP address and port using either TCP or UDP transport protocols.

## MSR Settings Reference

## Name
The name field is used by the EMDK to identify this particular feature parameter set when you want to manage just part of the profile programmatically using the EMDK [ProfileManager](../api/ProfileManager) API. This can be useful if you have multiple types of the same feature and want to update only one of them without having to update the whole profile. See [EMDK Profiles Overview](../guide/profiles/usingwizard) for more information.

## Enabled
Enables or disables this feature. Default is disabled.

## Output Data
In order for your application to receive the barcode data, you must specify one or more Output features. Please  refer to their reference documentation for more information.

* [Intent](../guide/profiles/profileintent) 
* [Keystroke](../guide/profiles/profilekeystroke)
* [IP](../guide/profiles/profileIP)
