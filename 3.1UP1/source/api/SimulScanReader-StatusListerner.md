#SimulScanReader.StatusListerner

An interface for notifying client applications to notify scan events.

**Example Usage:**

	:::java
	public class MainActivity extends Activity implements StatusListerner
  	  .. .. ..


##Public Methods
###onSimulScanStatus([SimulScanStatusData](SimulScanStatusData) status)
This is the callback method upon scan status event occurs.

**Parameters:**

status - [SimulScanStatusData](SimulScanStatusData) object.

**Returns:**

void

