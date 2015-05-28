#SimulScanMultiTemplate

The SimulScanMultiTemplate class contains an entire parsed XML template file. It may consist of many individual Template.


##Constructors
###SimulScanMultiTemplate(SimulScanManager simulScanManager, java.lang.String xmlString) throws [SimulScanException](SimulScanException)
Create SimulScanMultiTemplate object from XML string.

**Parameters:**

xmlString - XML string

**Throws:**

[SimulScanException](SimulScanException) - Exception will be throw if any error occurs while creating SimulScanMultiTemplate.


###SimulScanMultiTemplate(SimulScanManager simulScanManager, android.net.Uri fileUri) throws [SimulScanException](SimulScanException)
Create SimulScanMultiTemplate object from URI to template XML.

**Parameters:**

fileUri - URI to the template to be loaded

**Throws:**

[SimulScanException](SimulScanException) - Exception will be throw if any error occurs while creating SimulScanMultiTemplate


##Public Methods
###getTemplateName()
Returns the friendly name of the MultiTemplate object.

**Returns:**

java.lang.String