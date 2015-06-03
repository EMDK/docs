#com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion

.



##Constructors

**SvcSimulScanRegion**



**Parameters:**

name



java.lang.String

image



YuvImage

data



java.lang.Object

number



int

processingMode



com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

absConfidence



int

relConfidence



int

**SvcSimulScanRegion**



**Parameters:**

source



Parcel

##Public Methods

### getRegionType

**public RegionType getRegionType()**



**Returns:**

com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

### getImage

**public YuvImage getImage()**



**Returns:**

YuvImage

### getAbsoluteConfidence

**public int getAbsoluteConfidence()**



**Returns:**

int

### getRelativeConfidence

**public int getRelativeConfidence()**



**Returns:**

int

### getData

**public Object getData()**



**Returns:**

java.lang.Object

### describeContents

**public int describeContents()**



**Returns:**

int

### writeToParcel

**public void writeToParcel( dest,  arg1)**



**Parameters:**

dest

arg1

**Returns:**

void

##Public Fields

###CREATOR



**Type:**

<any>

