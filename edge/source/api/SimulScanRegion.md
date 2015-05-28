#SimulScanRegion

The SimulScanRegion class represents a processed SimulScanTemplateRegion.


##Public Methods
###getRegionType()
Returns the processed data type of this region.

**Returns:**

[RegionType](SimulScanRegion#SimulScanRegion.RegionType)


###getImage()
Returns the captured region image.

**Returns:**

android.graphics.YuvImage


###getAbsoluteConfidence()
Returns the absolute confidence of OCR results.

**Returns:**

int


###getRelativeConfidence()
Returns the relative confidence of OCR results

**Returns:**

int


###getData()
Returns the processed data. The type of the returned object will depend on the RegionType as described below,


**Data Type**

OCR - String

OMR - Integer

BARCODE - String

PICTURE - byte[]


**Specified by:**

getData in class [SimulScanElement](SimulScanElement)


**Returns:**

java.lang.Object

##Public Enums
###SimulScanRegion.RegionType

**Values:**

**OCR** - Data type is OCR.

**OMR** - Data type is OMR.

**BARCODE** - Data type is BARCODE.

**PICTURE** - Data type is PICTURE.

**UNKNOWN** - Data type is UNKNOWN.
