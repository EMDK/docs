##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

##Public Enums

###com.symbol.emdk.emdkservice.barcode.SvcStatusData.ScannerStates

Defines the different states of the barcode scanner.

**Values:**

* **IDLE**

* **WAITING**

* **SCANNING**

* **DISABLED**

* **ERROR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DeviceType

List of supported scanner device types.

**Values:**

* **CAMERA**

* **IMAGER**

* **LASER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.ConnectionType

List of supported scanner connection types.

**Values:**

* **INTERNAL**

* **BLUETOOTH_SSI**

* **SERIAL_SSI**

* **USB**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerInfo.DecoderType

This lists all the barcode types supported by scanners.

**Values:**

* **ONE_DIMENSIONAL**

* **TWO_DIMENSIONAL**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Preamble

Controls the preamble applied to the bar code Preamble characters are
 part of the UPC symbol consisting of Country Code and System Character.

**Values:**

* **NONE**

* **SYS_CHAR**

* **COUNTRY_AND_SYS_CHAR**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Isbt128ContactMode

Option for concatenating pairs of ISBT128 code types.

**Values:**

* **NEVER**

* **ALWAYS**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SecurityLevel

The scanner offers four levels of decode security for UPC/EAN bar codes.

**Values:**

* **LEVEL_0**

* **LEVEL_1**

* **LEVEL_2**

* **LEVEL_3**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AimType

Describes the type of aiming to use.

**Values:**

* **DUALTRIGGER**

* **CONTINUOUSTRIGGER**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LinearSecurityLevel

Sets the number of times a bar code is read to confirm an accurate
 decode.

**Values:**

* **SHORT_OR_CODABAR**

* **ALL_TWICE**

* **LONG_AND_SHORT**

* **ALL_THRICE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitType

Verify data integrity.

**Values:**

* **NO**

* **USS**

* **OPCC**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigit

The number of check digits to be verified.

**Values:**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.HanXinInverse

This parameter allows the user to select decoding on inverse HanXin bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.VerifyCheckDigit

Check the integrity of all Code 11 symbols to verify that the data
 complies with the specified check digit algorithm.

**Values:**

* **NO**

* **ONE**

* **TWO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CheckDigitScheme

Two algorithms are possible for the verification of the second MSI check
 digit.

**Values:**

* **MOD_11_10**

* **MOD_10_10**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.UccLinkMode

Describes the UCC link mode state.

**Values:**

* **LINK_FLAG_IGNORED**

* **ALWAYS_LINKED**

* **AUTO_DISCRIMINATE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PickList

Allows the imager to decode only the bar code that is directly under the
 cross-hair/reticle (+) part of the pattern.

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CodeIdType

A Code ID character identifies the code type of a scanned bar code.

**Values:**

* **NONE**

* **AIM**

* **SYMBOL**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SupplementalMode

Supplemental modes.

**Values:**

* **NO**

* **ALWAYS**

* **AUTO**

* **SMART**

* **S_378_379**

* **S_978_979**

* **S_414_419_434_439**

* **S_977**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.CouponReport

Supported Coupon modes.

**Values:**

* **OLD**

* **NEW**

* **BOTH**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.BooklandFormat

Lists the Bookland formats.

**Values:**

* **ISBN_10**

* **ISBN_13**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.ViewFinderMode

Configures the Viewfinder modes supported for camera scanning.

**Values:**

* **ENABLED**

* **STATIC_RECTICLE**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.IlluminationMode

Enable/disable illumination depending on ambient light conditions.

**Values:**

* **OFF**

* **ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.LcdMode

Enable or disable LCD mode (for Blockbuster imager devices only).

**Values:**

* **DISABLED**

* **ENABLED**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.Inverse1DMode

This parameter allows the user to select decoding on inverse 1D bar codes.

**Values:**

* **DISABLED**

* **ENABLED**

* **AUTO**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.AudioStreamType

Volume slider type for decode audio feedback.

**Values:**

* **RINGER**

* **MEDIA**

* **ALARAMS**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.PowerMode

Set laser scanner power mode.

**Values:**

* **LOW**

* **OPTIMIZED**

* **HIGH**

* **ALWAYS_ON**

###com.symbol.emdk.emdkservice.barcode.SvcScannerConfig.SkipOnUnSupported

.

**Values:**

* **NONE**

* **UNSUPPORTED_PARAM**

* **UNSUPPORTED_VALUE**

* **ALL**

###com.symbol.emdk.emdkservice.barcode.SvcScanData.LabelType

List of label types of the scanner data.

**Values:**

* **AUSPOSTAL**

* **AZTEC**

* **BOOKLAND**

* **CANPOSTAL**

* **CHINESE_2OF5**

* **CODABAR**

* **CODE11**

* **CODE128**

* **CODE32**

* **CODE39**

* **CODE93**

* **COMPOSITE_AB**

* **COMPOSITE_C**

* **COUPON**

* **D2OF5**

* **DATAMATRIX**

* **DUTCHPOSTAL**

* **DATABAR_COUPON**

* **EAN128**

* **EAN13**

* **EAN8**

* **GS1_DATABAR**

* **GS1_DATABAR_EXP**

* **GS1_DATABAR_LIM**

* **I2OF5**

* **IATA2OF5**

* **ISBT128**

* **JAPPOSTAL**

* **KOREAN_3OF5**

* **MATRIX_2OF5**

* **MAXICODE**

* **MICROPDF**

* **MICROQR**

* **MSI**

* **OCR**

* **PDF417**

* **QRCODE**

* **SIGNATURE**

* **TLC39**

* **TRIOPTIC39**

* **UKPOSTAL**

* **UPCA**

* **UPCE0**

* **UPCE1**

* **US4STATE**

* **US4STATE_FICS**

* **USPLANET**

* **USPOSTNET**

* **WEBCODE**

* **MAILMARK**

* **HANXIN**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.barcode.SvcConnectionStatus.ConnectionState

Connection states of a scanner device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.barcode.ScannerResults

Defines all the error codes the barcode scanning API returns.

**Values:**

* **SUCCESS**

* **ALREADY_SCANNING**

* **SCANNER_IN_USE**

* **VF_ERROR**

* **INVALID_VALUE**

* **SCAN_PARAM_NOT_SUPPORTED**

* **SCAN_DATA_FAILURE**

* **SCAN_PARAM_READ_ONLY**

* **LENGTH_MISMATCH**

* **SCANNER_OPERATION_FAILURE**

* **FEATURE_NOT_SUPPORTED**

* **SCANNER_NOT_SUPPORTED**

* **FAILURE**

* **SCANNER_NOT_ENABLED**

* **SCANNER_TIMED_OUT**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **TRIGGER_KEY_REG_FAILED**

* **TRIGGER_KEY_IN_USE**

* **TRIGGER_KEY_UNREG_FAILED**

* **SCANNER_INIT_FAILURE**

* **SCANNER_DEINIT_FAILURE**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentResults

Defines all the error codes the payment API returns.

**Values:**

* **SUCCESS**

* **INVALID_VALUE**

* **AUTHORIZATION_FAILED**

* **FAILURE**

* **TIMED_OUT**

* **AUTHENTICATION_FAILED**

* **ENABLE_FAILED**

* **DISABLE_FAILED**

* **ALREADY_ENABLED**

* **OPERATION_CANCELLED**

* **OK_KEY_PRESSED**

* **CANCEL_KEY_PRESSED**

* **LOW_POWER_OPERATION_CANCELLED**

* **TLV_DATA_ERROR**

* **MAC_KEY_CREATE_ERROR**

* **MAC_BLOCK_CREATE_ERROR**

* **MAC_VALIDATION_ERROR**

* **INVALID_MAC_KEY_LENGTH**

* **INVALID_DATA_LENGTH**

* **INVALID_PIN_LENGTH**

* **ALREADY_CLOSED**

* **CHIP_READ_ERROR**

* **CARD_BLOCKED**

* **CHIP_READ_NO_APP_ERROR**

* **CARD_INSERTION_ERROR**

* **DEVICE_NOT_PAIRED**

* **DEVICE_NOT_ENABLED**

* **INVALID_CONFIGURATION**

* **COMMUNICATION_ERROR**

* **FEATURE_NOT_SUPPORTED**

* **INVALID_OBJECT**

* **NO_DATA_LISTENER**

* **PREVIOUS_COMMAND_PENDING**

* **CARD_SWIPE_ERROR**

* **EMV_APP_NOT_SELECTED**

* **EMV_APP_ADD_ERROR**

* **EMV_TRANSACTION_DENIED**

* **CARD_EXPIRED**

* **APP_EXPIRED**

* **API_SEQUENCE_ERROR**

* **CARD_NOT_AUTHORIZED**

* **DEVICE_IN_USE**

* **CONNECTION_ERROR**

* **NULL_POINTER**

* **CARD_REMOVED**

* **EMV_TRANSACTION_ERROR**

* **CARD_AUTHENTICATION_FAILED**

* **GET_ONLINE_PIN_FAILED**

* **GAC_CARD_LOOPBACK**

* **GAC_RESPONSE_ERROR**

* **NO_DUKPT_KEY**

* **EMV_CAPK_ADD_ERROR**

* **ACCOUNT_NUMBER_MISMATCH**

* **UPDATE_FILE_TOO_LARGE**

* **UPDATE_FILE_SIGNATURE_ERROR**

* **UPDATE_FILE_WRITE_ERROR**

* **INCOMPETE_DATA**

* **DISABLED**

* **CANNOT_ABORT**

* **REMOVECARD_COMMAND_PENDING**

* **UNSUPPORTED_ENCRYPTION_TYPE**

* **NO_ENCRYPTION_KEY**

* **NO_PIN_INPUT**

* **REPETITIVE_OPERATION**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcPaymentData.DataType

List of data types to identify for method data belongs and also to type cast to the respective derived class to obtain the actual data.

**Values:**

* **ENABLE**

* **READCARDDATA**

* **PROMPTPIN**

* **PROMPTMENU**

* **PROMPTMESSAGE**

* **GETEMVTAG**

* **CREATEMAC**

* **PROMPTADDITIONALINFO**

* **COMPLETEONLINEEMV**

* **VALIDATEMAC**

* **AUTHORIZECARD**

* **BATTERYDATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.DeviceType

List of supported Payment device types.

**Values:**

* **PD40**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcDeviceInfo.ConnectionType

List of supported payment connection types.

**Values:**

* **BLUETOOTH**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.payment.SvcConnectionStatus.ConnectionState

Connection states of a Payment Device.

**Values:**

* **CONNECTED**

* **DISCONNECTED**

###com.symbol.emdk.emdkservice.scanandpair.SvcStatusData.ScanAndPairStates

Decision indicator from the host response.

**Values:**

* **WAITING**

* **SCANNING**

* **SCANNED**

* **PAIRED**

* **UNPAIRED**

* **ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSmartcardResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **INVALID_OBJECT**

* **INVALID_VALUE**

* **NFC_DISABLED**

* **UNSUPPORTED_PROTOCOL**

* **SAM_NOT_PRESENT**

* **SMARTCARD_ALREADY_CONNECTED**

* **SMARTCARD_CONNECTION_NOT_ESTABLISHED**

* **TDA8029_DEVICE_NOT_FOUND**

* **TDA8029_SERIAL_LRC_ERR**

* **TDA8029_SERIAL_TIMOUT**

* **TDA8029_CMD_FRAME_LOST**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcSamMode

SAM modes.

**Values:**

* **AV1**

* **AV2**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamResult

.

**Values:**

* **SUCCESS**

* **NFC_DISABLED**

* **SAM_NOT_AVAILABLE**

* **FAILURE**

* **ALREADY_CONNECTED**

* **INVALID_VALUE**

* **INVALID_KEY**

* **PARAM_NOT_SUPPORTED**

* **NOT_CONNECTED**

* **SAM_NOT_IN_AV1_MODE**

* **SAM_NOT_IN_AV2_MODE**

* **SAM_KEY_DISABLED**

* **INVALID_HOST_KEY**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareSamData.DataType

.

**Values:**

* **CARD_VERSION**

* **CONNECT**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireResult

.

**Values:**

* **SUCCESS**

* **FAILURE**

* **NOT_ENABLED**

* **SAM_AUTHENTICATION_ERROR**

* **TAG_LOST**

* **INVALID_SAM_KEY**

* **INVALID_VALUE**

* **ALREADY_ENABLED**

* **APP_NOT_SELECTED**

* **NO_TRANSACTION_CHANGES**

* **TAG_OUT_OF_MEMORY**

* **INVALID_COMMAND_CODE**

* **INTEGRITY_ERROR**

* **TAG_KEY_NOT_FOUND**

* **INVALID_COMMAND_LENGTH**

* **APP_NOT_FOUND**

* **APP_INTEGRITY_ERROR**

* **AUTHENTICATION_ERROR**

* **ADDITIONAL_FRAME_REQUIRED**

* **FILE_SIZE_LIMIT_EXCEEDED**

* **PICC_INTEGRITY_ERROR**

* **COMMAND_ABORTED**

* **PICC_DISABLED_ERROR**

* **APP_LIMIT_EXCEEDED**

* **ALREADY_EXISTS**

* **TAG_MEMORY_ERROR**

* **FILE_NOT_FOUND**

* **FILE_INTEGRITY_ERROR**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.securenfc.SvcMifareDesfireData.DataType

.

**Values:**

* **CARD_VERSION**

* **READ_DATA**

* **READ_RECORD**

* **APP_IDS**

* **FILE_IDS**

* **GET_VALUE**

* **FILE_SETTINGS**

* **KEY_SETTINGS**

* **DFNAMES**

* **FREE_MEM**

* **KEY_VER**

* **ERROR_DATA**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.SSDCState

Defines the different states of the barcode scanner.

**Values:**

* **DISABLED**

* **ENABLED**

* **SCANNING**

* **IDLE**

* **ERROR**

* **UNKNOWN**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanStatusData.ExtendedStatus

.

**Values:**

* **NONE**

* **PROCESS_TIMEOUT**

* **IDENTIFICATION_TIMEOUT**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanRegion.RegionType

.

**Values:**

* **DEFAULT**

* **OCR**

* **OMR**

* **BARCODE**

* **PICTURE**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceIdentifier

.

**Values:**

* **DEFAULT**

* **INTERNAL_CAMERA1**

* **INTERNAL_IMAGER1**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanDeviceInfo.DeviceType

.

**Values:**

* **CAMERA**

* **IMAGER**

* **UNDEFINED**

###com.symbol.emdk.emdkservice.simulscan.SvcSimulScanData.ElementType

.

**Values:**

* **REGION**

* **GROUP**

