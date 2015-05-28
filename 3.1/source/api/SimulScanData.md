#SimulScanData

The SimulScanData object gives scanning result.

**Example Usage:**

	:::java
	public void onSimulScanData(SimulScanData simulscanData) {

		Date timestamp = new Date(simulscanData.getTimestamp());
		List<SimulScanElement> simulscanDataElements = simulscanData.getElements();
		List<SimulScanRegion> simulscanDataRegions = new ArrayList<SimulScanRegion>(); 
		for (SimulScanElement curElement : simulscanDataElements)
		{
			if (curElement instanceof SimulScanRegion) {
				Log.d(TAG, ((SimulScanRegion) curElement).getName());
			} else if (curElement instanceof SimulScanGroup) {	
				List<SimulScanRegion> regionsInGroup = ((SimulScanGroup)curElement).getRegions();
				for (SimulScanRegion curRegion : regionsInGroup){
					Log.d(TAG, “Group:”+ ((SimulScanGroup)curElement).getName() +” Region:”+ ((SimulScanRegion) curRegion).getName());
				}
			}
		}
 	}


**Version:**

1.0

##Constructors
###SimulScanData()


##Public Methods
###getTimestamp()
Returns the time at which the data was scanned.

**Returns:**

Returns time stamp as Date object


###getTemplate()
Returns the scanned template.

**Returns:**

Returns [SimulScanTemplate](SimulScanTemplate) template object


###getElements()
Returns a list of scanned elements.

**Returns:**

Returns a List object of [SimulScanElement](SimulScanElement) objects