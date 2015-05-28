#SimulScanReader.DataListerner

An interface for notifying client applications when the scan data is available.

**Example Usage:**

	:::java
	public class MainActivity extends Activity implements DataListerner
  	  .. .. ..


##Public Methods
###onSimulScanData(SimulScanData form)
This is the callback method upon data availability.

**Parameters:**

form - [SimulScanData](SimulScanData) object.

**Returns:**

void

