#ProfileManager.DataListener
An interface for notifying client applications to notify processProfileAsync result.

**Example Usage:**

	:::java
	public class MainActivity extends Activity implements DataListener {
		.. .. ..
	}

**Version:**

3.1

##Public Methods

###onData(ProfileManager.ResultData resultData)
This is the callback method to be called upon the processProfileAsync task completion.

**Parameters:**

**resultData** - [ResultData](ProfileManager.ResultData) object.