#SimulScanRegion

The SimulScanRegion class represents a processed SimulScanTemplateRegion.



##Constructors

**SimulScanRegion**



Parameters:

Throws:

**SimulScanRegion**



Parameters:

**name**



java.lang.String

**image**



YuvImage

**data**



java.lang.Object

**number**



int

**processingMode**



com.symbol.emdk.simulscan.RegionType

**absConfidence**



int

**relConfidence**



int

Throws:

##Public Methods

### getRegionType

**public RegionType getRegionType()**

Returns the processed data type of this region

**Returns:**

com.symbol.emdk.simulscan.RegionType

### getImage

**public YuvImage getImage()**

Returns the captured region image

**Returns:**

YuvImage

### getAbsoluteConfidence

**public int getAbsoluteConfidence()**

Returns the absolute confidence of OCR results

**Returns:**

int

### getRelativeConfidence

**public int getRelativeConfidence()**

Returns the relative confidence of OCR results

**Returns:**

int

### getData

**public Object getData()**

Returns the processed data.
 The type of the returned object will depend on the RegionType as described below,
 

**Returns:**

java.lang.Object

