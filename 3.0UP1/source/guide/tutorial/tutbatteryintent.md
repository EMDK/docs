# Battery Intent Tutorial

## Overview
On Symbol devices like the MC40, extra battery information can be retrieved using the standard [Android Battery Intent](http://developer.android.com/training/monitoring-device-state/battery-monitoring.html). Setting up to receive this information is the same as with consumer Android devices. However, the data that is returned to your application includes some extra information like:

* Backup Battery Voltage
* Battery Manufacture Date
* Battery Serial Number
* Part Number for Battery
* Unique ID for Battery
* Rated Capacity of the Battery
* Charge Cycle count of the Battery 

## Enabling the Receiver 

	:::java
	mIntent_Receiver = new Intent_Receiver();  
	mIntentFilter = new IntentFilter();  
	mIntentFilter.addAction(Intent.ACTION_BATTERY_CHANGED);  
	registerReceiver(mIntent_Receiver,mIntentFilter);  

## Processing The Data
In the below code we are getting the Symbol specific battery information provided by the [Battery Intent](../guide/reference/refbatteryintent) extras. Notice that some values are strings and other values are integers.

	:::java
	public void onReceive(Context context, Intent intent) {      
		if (BATTERY_STATE_CHANGED_INTENT.equals(intent.getAction())) {          
			int bkvoltage = intent.getExtras().getInt("bkvoltage");  
			String mfd = intent.getExtras().getString("mfd");  
			String serialnumber = intent.getExtras().getString("serialnumber");  
			String partnumber = intent.getExtras().getString("partnumber");  
			String uniqueid = intent.getExtras().getString("uniqueid");  
			int ratedcapacity = intent.getExtras().getInt("ratedcapacity");  
			int cycle = intent.getExtras().getInt("cycle");  
		}  
	} 

## Downloading the Sample
Download the source for this project in the [associated sample](../guide/sample/samplebatteryintent).