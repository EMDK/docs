#SimulScanMultiTemplate

The SimulScanMultiTemplate class contains an entire parsed XML template file.



##Constructors

**SimulScanMultiTemplate**



**Parameters:**

svcMultiTemplate



com.symbol.emdk.emdkservice.simulscan.SvcSimulScanMultiTemplate

**SimulScanMultiTemplate**

Create SimulScanMultiTemplate object from XML string

**Parameters:**

simulScanManager



com.symbol.emdk.simulscan.SimulScanManager

xmlString

XML string

java.lang.String

**Throws:**

com.symbol.emdk.simulscan.SimulScanException

Exception will be throw if any error occurs while creating SimulScanMultiTemplate

**SimulScanMultiTemplate**

Create SimulScanMultiTemplate object from URI to template XML

**Parameters:**

simulScanManager



com.symbol.emdk.simulscan.SimulScanManager

fileUri

URI to the template to be loaded

Uri

**Throws:**

com.symbol.emdk.simulscan.SimulScanException

Exception will be throw if any error occurs while creating SimulScanMultiTemplate

##Public Methods

### getServiceMultiTemplate

**public SvcSimulScanMultiTemplate getServiceMultiTemplate()**



**Returns:**

com.symbol.emdk.emdkservice.simulscan.SvcSimulScanMultiTemplate

### getTemplateName

**public String getTemplateName()**

Returns the friendly name of the MultiTemplate object

**Returns:**

java.lang.String

