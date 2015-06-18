###ProfileConfig.SUPPLEMENTAL_MODE

Supplemental modes

 

**Example Usage:**
	
	:::java	
	SUPPLEMENTAL_MODE.DEFAULT;


**Values:**

* **DEFAULT** -Default supplemental mode configured on device

* **NO** -The scanner is presented with a UPC/EAN plus supplemental symbol, the scanner decodes UPC/EAN and ignores the supplemental characters.

* **ALWAYS** -The scanner only decodes UPC/EAN symbols with supplemental characters, and ignores symbols without supplementals.

* **AUTO** -The scanner decodes UPC/EAN symbols with supplemental characters immediately . If the symbol does not have a supplemental,
 the scanner must decode the bar code the number of times set via UPC/EAN Supplemental Redundancy before transmitting its data
 to confirm that there is no supplemental.

* **SMART** -Enables smart supplementals.
 In this mode the decoder returns the decoded value of the main block right away if it does not belong to one of the following supplemental types: 378, 379, 977, 978, 979, 414, 419, 434 or 439.
 If the bar code starts with one of the prefixes it searches the image more aggressively for a supplemental.
 Tries to scan the supplemental if it is present.
 If the supplemental scanning failed, then the main bar code is returned.

* **S_378_379** -Enables (auto-discriminate) supplemental for UPC/EAN codes starting with 378 or 379.
 Disables reading of supplementals for any other UPC/EAN bar code not starting with 378 or 379.
 Tries to scan the supplemental if it is present.
 If the supplemental scanning failed, then the main bar code is returned.

* **S_978_979** -Enables (auto-discriminate) supplemental for UPC/EAN codes starting with 978 or 979.
 Disables reading of supplementals for another UPC/EAN bar code not starting with 978 or 979.
 Tries to scan the supplemental if it is present.
 If the supplemental scanning failed, then the main bar code is returned.

* **S_414_419_434_439** -Enables (auto-discriminate) supplemental for UPC/EAN codes starting with 414, 419, 434 or 439.
 Disables reading of supplementals for another UPC/EAN bar code 4 - 16 not starting with 414, 419, 434 or 439.
 Tries to scan the supplemental if it is present.
 If the supplemental scanning failed, then the main bar code is returned.

* **S_977** -Enables (auto-discriminate) supplemental for UPC/EAN codes starting with 977.
 Disables reading of supplementals for another UPC/EAN barcode not starting with 977.
 Tries to scan the supplemental if it is present.
 If the supplemental scanning failed, then the main bar code is returned.

