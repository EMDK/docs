###ScannerConfig.UccLinkMode

Describes the UCC link mode state.

 

**Example Usage:**
	
	:::java	
	UCCLinkMode.LINK_FLAG_IGNORED;


**Values:**

* **LINK_FLAG_IGNORED** -1D component is transmitted regardless of whether a 2D component is
 detected.

* **ALWAYS_LINKED** -1D and the 2D components are transmitted. If 2D is not present, the
 1D component is not transmitted.

* **AUTO_DISCRIMINATE** -the digital scanner determines if there is a 2D portion, then
 transmits the 1D component, as well as the 2D portion if present
 (default). (default).

