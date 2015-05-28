#ScanAndPairManager.StatusListener

An interface for notifying client applications to notify scan and pair or unpair events.


**Example Usage:**

	:::java
	public class MainActivity extends Activity implements StatusListener
    {
       .. .. .. 
    }



##Public Methods
###onStatus(StatusData statusData)
This is the callback method upon scan and pair or unpair status event occurs.

**Parameters:**

**statusData** - [StatusData](ScanAndPairStatusData) object.

**Returns:**

void