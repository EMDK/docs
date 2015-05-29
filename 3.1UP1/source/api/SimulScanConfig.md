#SimulScanConfig

The SimulScanConfig class provides access to reader configuration settings.

**Example Usage:**

	:::java
	SimulScanMultiTemplate template1 = new SimulScanMultiTemplate(simulScanManager,fileUri);//fileUri points to the template
	SimulScanReader reader = simulscanManager.getDevice(template1.deviceIdentifier);
	reader.enable(); 
	SimulScanConfig config = reader.getConfig(); // Reader object must be enabled before calling getConfig
	config.audioFeedback = false;
	reader.setConfig(config); // Reader object must be enabled and not scanning when calling setConfig


**Version:**

1.0

##Public Fields
###multiTemplate
The [SimulScanMultiTemplate](SimulScanMultiTemplate) to scan.

**Returns:**

[SimulScanMultiTemplate](SimulScanMultiTemplate)


###autoCapture
If true, form will be captured automatically when detected. If false, user must manually tap screen or press trigger to capture form.

**Returns:**

java.lang.Boolean


###debugMode
If enabled, allows a session to write form capture, region images, region values, and other data to storage. After successful session, a prompt will come up allowing the user to turn Debug Mode off.

**Returns:**

java.lang.Boolean


###audioFeedback
Turn on/off audio feedback.

**Returns:**

java.lang.Boolean


###hapticFeedback
Turn on/off haptic feedback.

**Returns:**

java.lang.Boolean


###ledFeedback
Turn on/off LED feedback.

**Returns:**

java.lang.Boolean


###userConfirmationOnScan
If userConfirmationOnScan is true, shows UI for user to confirm the scanned data before sending results to application.

**Returns:**

java.lang.Boolean


###identificationTimeout
Amount of time in milliseconds to wait before timing out identification.

**Returns:**

int


###processingTimeout
Amount of time in milliseconds to wait before timing out processing.

**Returns:**

int