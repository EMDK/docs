#ProfileConfig.DataCapture.DataDelivery.Intent
Holds Intent configuration settings.

**Example Usage:**

	:::java
	Intent intent = profileConfig.Intent;

**Version:**

2.0

##Public Fields

###action
Gets and Sets the intent action.

**Example Usage:**

	:::java
	String action = intent.action;

**Type:**

java.lang.String

###basicDataFormatting
Gets and Sets intent INTENT_DELIVERY configuration object [ProfileConfig.DataCapture.DataDelivery.BasicDataFormatting](ProfileConfig.DataCapture.DataDelivery.BasicDataFormatting).

**Example Usage:**

	:::java
	intent.BasicDataFormatting.bdf_enabled = ENABLED_STATE.DEFAULT;

**Type:**

com.symbol.emdk.[ProfileConfig.DataCapture.DataDelivery.BasicDataFormatting](ProfileConfig.DataCapture.DataDelivery.BasicDataFormatting)

###category
Gets and Sets the intent category.

**Example Usage:**

	:::java
	String category = intent.category;

**Type:**

java.lang.String

###delivery
Gets and Sets intent INTENT_DELIVERY configuration enum [ProfileConfig.INTENT_DELIVERY](ProfileConfig.INTENT_DELIVERY).

**Example Usage:**

	:::java
	intent.delivery = INTENT_DELIVERY.DEFAULT;

**Type:**

com.symbol.emdk.[ProfileConfig.INTENT_DELIVERY](ProfileConfig.INTENT_DELIVERY)

###output_enabled
Gets and Sets intent ENABLED_STATE configuration enum [ProfileConfig.ENABLED_STATE](ProfileConfig.ENABLED_STATE).

**Example Usage:**

	:::java
	intent.output_enabled = ENABLED_STATE.DEFAULT;

**Type:**

com.symbol.emdk.[ProfileConfig.ENABLED_STATE](ProfileConfig.ENABLED_STATE)

