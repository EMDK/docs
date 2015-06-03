#CardData

The card data class holds the card information.



##Public Methods

### getReadMode

**public ReadMode getReadMode()**

Returns the card read mode for the processed transaction. The ReadMode.ALL will not occur.

**Returns:**

com.symbol.emdk.payment.PaymentDevice.ReadMode

### getAccountNumber

**public String getAccountNumber()**

Returns the account number

**Returns:**

java.lang.String

### getCardHolderName

**public String getCardHolderName()**

Returns the card holder name in the format Last name/First name.

**Returns:**

java.lang.String

### getExpiryDate

**public String getExpiryDate()**

Returns the expiry date in the format MMYY.

**Returns:**

java.lang.String

### getTrack1Data

**public String getTrack1Data()**

Returns the track1 data.

**Returns:**

java.lang.String

### getTrack2Data

**public String getTrack2Data()**

Returns the track2 data.
 When the Encryption is ON, by default track2 data will not be returned unless the application
 sets the getAllEncryptedData to true in the configuration settings.

**Returns:**

java.lang.String

### getTrack3Data

**public String getTrack3Data()**

Returns the track3 data. 
 When the Encryption is ON, by default track3 data will not be returned unless the application 
 sets the getAllEncryptedData to true in the configuration settings.

**Returns:**

java.lang.String

### getTrack1Status

**public boolean getTrack1Status()**

Get the track read status of track1.

**Returns:**

boolean

### getTrack2Status

**public boolean getTrack2Status()**

Get the track read status of track2

**Returns:**

boolean

### getTrack3Status

**public boolean getTrack3Status()**

Get the track read status of  track3

**Returns:**

boolean

### getMaskedPAN

**public String getMaskedPAN()**

Get the  masked PAN data. This data can be used to pass to promptPin API as account number.

**Returns:**

java.lang.String

### getKeySerialNumber

**public String getKeySerialNumber()**

Returns the Key Serial Number (KSN) used for the encrypting the data.
 This field is available only when the encryption type is TRIPLE_DES. 
 TRIPLE_DES is an encryption Algorithm where DES applied 3 times using
 DUKPT.

**Returns:**

java.lang.String

### getDataEncryptionType

**public DataEncryptionType getDataEncryptionType()**

Returns the data encryption type used to encrypt the data.

**Returns:**

com.symbol.emdk.payment.PaymentDevice.DataEncryptionType

### getTagData

**public ArrayList getTagData()**

Returns list of object containing EMV tags and its values.
 When the Encryption is ON, by default tag "5A" data will not be returned unless the application 
 sets the getAllEncryptedData to true in the configuration settings.

**Returns:**

java.util.ArrayList

### getCardEncodeType

**public CardEncodeType getCardEncodeType()**

Returns the type of encoding that was found on the card.

**Returns:**

com.symbol.emdk.payment.PaymentDevice.CardEncodeType

