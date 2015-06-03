#com.symbol.emdk.emdkservice.payment.SvcPaymentConfig

.



##Constructors

**SvcPaymentConfig**



##Public Methods

### writeToParcel

**public void writeToParcel( dest,  flags)**



**Parameters:**

dest

flags

**Returns:**

void

### describeContents

**public int describeContents()**



**Returns:**

int

##Public Fields

###sleepModeTimeout

The field provides option to configure the payment device sleep mode timeout. Set 0 to disable sleep mode on D180 device.

**Type:**

int

###idleMessage

This provides option to modify the payment devices idle message.

**Type:**

java.lang.String

###dataEncryptionType

This provides type of Encryption Algorithms applied on the data

**Type:**

com.symbol.emdk.payment.PaymentDevice.DataEncryptionType

###dataEncryptionKeySlot

This provides the slot  in the data bit where key is stored.
 Key is sent as a part of data.

**Type:**

int

###maskFirstDigits

This provides  first few number of clear digits for the <maskPAN>.

**Type:**

int

###getAllEncryptedData



**Type:**

boolean

###languageCode



**Type:**

int

###result



**Type:**

com.symbol.emdk.emdkservice.payment.SvcPaymentResults

###CREATOR



**Type:**

<any>

