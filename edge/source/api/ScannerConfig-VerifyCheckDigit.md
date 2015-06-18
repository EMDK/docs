###ScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm. This selects the check
 digit mechanism for the decoded Code 11 bar code.

 

**Example Usage:**
	
	:::java	
	VerifyCheckDigit.NO;


**Values:**

* **NO** -Do not verify check digit.

* **ONE** -Bar code contains one check digit.

* **TWO** -Bar code contains two check digits.

