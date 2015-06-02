#MifareSam.AdditionalAuthData.AV1Mode

Data specific to the AV1 Sam Mode.



##Constructors

**MifareSam.AdditionalAuthData.AV1Mode**



Parameters:

Throws:

##Public Fields

###useLogicalChannelForCMacCalculation

Use logical channel for CMAC calculation or not.

**Type:**

boolean

###useSecretKeyForCrypto

False: Generate session key by authentication.
 True: Use secret key for crypto.

**Type:**

boolean

###samDiverseParams

Diversification parameters for current key. If diversification is not required by current key then this parameter should be NULL.

**Type:**

com.symbol.emdk.securenfc.SamDiverseParams

