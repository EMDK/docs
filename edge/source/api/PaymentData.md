#PaymentData

PaymentData class holds the response or data sent  by the payment device.



##Public Methods

### getDataType

**public DataType getDataType()**

Returns the method type so that the PaymentDataBase class can be type
 cast to the respective derived class to obtain the actual data

**Returns:**

com.symbol.emdk.payment.PaymentData.DataType

### getResult

**public PaymentResults getResult()**

This method can used to obtain the payment response status.

**Returns:**

com.symbol.emdk.payment.PaymentResults

##Public Enums

###PaymentData.DataType

The DataType enum identifies the asynchronous method for which the response is received.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **UNDEFINED**

