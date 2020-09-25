.class public Lin/juspay/hypersdk/core/PaymentConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/hypersdk/core/PaymentConstants$Events;,
        Lin/juspay/hypersdk/core/PaymentConstants$GodelOffReasons;,
        Lin/juspay/hypersdk/core/PaymentConstants$SubCategory;,
        Lin/juspay/hypersdk/core/PaymentConstants$LogCategory;,
        Lin/juspay/hypersdk/core/PaymentConstants$Category;,
        Lin/juspay/hypersdk/core/PaymentConstants$ENVIRONMENT;,
        Lin/juspay/hypersdk/core/PaymentConstants$LogLevel;,
        Lin/juspay/hypersdk/core/PaymentConstants$Event;
    }
.end annotation


# static fields
.field public static final ACS:Ljava/lang/String; = "payments/in.juspay.godel/v1-acs.jsa"

.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final ASSET_MANAGE:Ljava/lang/String; = "jp_asset_manage"

.field public static final ATTR_HASH_IN_DISK:Ljava/lang/String; = "hashInDisk"

.field public static final BANK:Ljava/lang/String; = "bank"

.field public static final BETA_ASSETS:Ljava/lang/String; = "betaAssets"

.field public static final BLOCKED_WALLETS:Ljava/lang/String; = "udf_disabled_methods"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static BUILD_ID:Ljava/lang/String; = ""

.field public static final CANCEL_TRANSACTION:Ljava/lang/String; = "CancelTransaction"

.field public static final CAN_OPEN_SDK:I = 0x7
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final CLIENT_AUTH_TOKEN:Ljava/lang/String; = "session_token"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final CLIENT_EMAIL:Ljava/lang/String; = "customer_email"

.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final CLIENT_MOBILE_NO:Ljava/lang/String; = "customer_phone_number"

.field public static final CLIPBOARD:Ljava/lang/String; = "CLIPBOARD"

.field public static final CUSTOMER_EMAIL:Ljava/lang/String; = "customer_email"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final CUSTOMER_ID:Ljava/lang/String; = "customer_id"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final CUSTOMER_MOBILE:Ljava/lang/String; = "customer_phone_number"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final DELIVER_SMS:Ljava/lang/String; = "DELIVER_SMS"

.field public static final DESCRIPTION:Ljava/lang/String; = "display_note"

.field public static final END_URLS:Ljava/lang/String; = "endUrls"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final ENV:Ljava/lang/String; = "environment"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final GODEL:Ljava/lang/String; = "GODEL"

.field public static GPAY_CONSTANT:I = 0x2
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final GPAY_REQUEST_CODE:I = 0x72
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final ITEM_COUNT:Ljava/lang/String; = "itemCount"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final JP_BLOCKED_HASH:Ljava/lang/String; = "jp_blocked_hash"

.field public static final JP_HASH_AND_STATUS:Ljava/lang/String; = "jp_hash_and_status"

.field public static final LOG_VERSION:Ljava/lang/String; = "2.0.0"

.field public static final MCC:Ljava/lang/String; = "mcc"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final MERCHANT_CHANNEL_ID:Ljava/lang/String; = "merchant_channel_id"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final MERCHANT_ID:Ljava/lang/String; = "merchant_id"

.field public static final MERCHANT_KEY_ID:Ljava/lang/String; = "merchant_key_id"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final NETWORK_STATUS:Ljava/lang/String; = "NETWORK_STATUS"

.field public static final OFFER_APPLIED:Ljava/lang/String; = "offer_applied"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final OFFER_CODE:Ljava/lang/String; = "offer_code"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final OFFER_DETAILS:Ljava/lang/String; = "offer_details"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final OFFER_DISCOUNT:Ljava/lang/String; = "offer_discount"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final OFFER_PAYMENT_CARD_ISSUER:Ljava/lang/String; = "offer_payment_card_issuer"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final OFFER_PAYMENT_CARD_TYPE:Ljava/lang/String; = "offer_payment_card_type"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final OFFER_PAYMENT_METHOD:Ljava/lang/String; = "offer_payment_method"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final OFFER_PAYMENT_METHOD_TYPE:Ljava/lang/String; = "offer_payment_method_type"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final ORDER_CREATE_RESP:Ljava/lang/String; = "__order_create_response_"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final ORDER_DETAILS:Ljava/lang/String; = "order_details"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final ORDER_ID:Ljava/lang/String; = "order_id"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PAYLOAD:Ljava/lang/String; = "payload"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final PAYMENT_LOCKING:Ljava/lang/String; = "payment_locking"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final PAYMENT_PAGE_TITLE:Ljava/lang/String; = "udf_title"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final POST_DATA:Ljava/lang/String; = "postData"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final PROJECT_ID:Ljava/lang/String; = "project_id"

.field public static final REMARKS:Ljava/lang/String; = "remarks"

.field public static final REQUEST_PERMISSION_PREFIX:Ljava/lang/String; = "ReqPermi"

.field public static final REQUEST_SMS_PERMISSION:I = 0x7

.field public static final SAFETYNET_API_KEY:Ljava/lang/String; = "safetynet_api_key"

.field public static final SAFETYNET_API_RESP:Ljava/lang/String; = "safetynet_api_resp"

.field public static final SAFETY_NET_REQUEST:Ljava/lang/String; = "SAFETY_NET_REQUEST"

.field public static final SAVED_PAYMENT_METHODS:Ljava/lang/String; = "saved_payment_methods_"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final SDK_META:Ljava/lang/String; = "sdk_meta"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final SDK_NAME:Ljava/lang/String; = "sdkName"

.field public static final SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field public static final SEND_SMS:Ljava/lang/String; = "SEND_SMS"

.field public static final SERVICE:Ljava/lang/String; = "service"

.field public static final SESSION_TOKEN:Ljava/lang/String; = "juspay_session_token"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final SIGNATURE:Ljava/lang/String; = "signature"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final SIGNATURE_PAYLOAD:Ljava/lang/String; = "signature_payload"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final SMS_CONSENT:Ljava/lang/String; = "SMS_CONSENT"

.field public static final SMS_RECEIVE:Ljava/lang/String; = "SMS_RECEIVE"

.field public static final TEST_MODE:Ljava/lang/String; = "test_mode"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field public static final UDF1:Ljava/lang/String; = "udf1"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final UDF10:Ljava/lang/String; = "udf10"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final UDF2:Ljava/lang/String; = "udf2"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final UDF3:Ljava/lang/String; = "udf3"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final UDF4:Ljava/lang/String; = "udf4"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final UDF5:Ljava/lang/String; = "udf5"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final UDF6:Ljava/lang/String; = "udf6"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final UDF7:Ljava/lang/String; = "udf7"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final UDF8:Ljava/lang/String; = "udf8"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final UDF9:Ljava/lang/String; = "udf9"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final URL:Ljava/lang/String; = "url"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final VERIFY_ASSETS:Ljava/lang/String; = "verifyAssets"

.field public static final VIES_CORE_DEVICE_VALIDATION:Ljava/lang/String; = "VIES_CORE_DEVICE_VALIDATION"

.field public static final VIES_CORE_DISENROLL:Ljava/lang/String; = "VIES_CORE_DISENROLL"

.field public static final VIES_CORE_PAY:Ljava/lang/String; = "VIES_CORE_PAY"

.field public static final VIES_CORE_UPDATE_ENROLL:Ljava/lang/String; = "VIES_CORE_UPDATE_ENROLL"

.field public static final VIES_DELETE_CARD:Ljava/lang/String; = "VIES_DELETE_CARD"

.field public static final VIES_DISENROLL:Ljava/lang/String; = "VIES_DISENROLL"

.field public static final VIES_ELIGIBILITY:Ljava/lang/String; = "VIES_ELIGIBILITY"

.field public static final VIES_GET_MAX_AMOUNT:Ljava/lang/String; = "VIES_GET_MAX_AMOUNT"

.field public static final VIES_PAY:Ljava/lang/String; = "VIES_PAY"

.field public static final VIES_SERVICE:Ljava/lang/String; = "in.juspay.vies"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final WIDGET_ADD_CARD:Ljava/lang/String; = "addCard"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final WIDGET_ADD_WALLETS:Ljava/lang/String; = "addAndLinkWallet"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final WIDGET_DELINK_WALLET:Ljava/lang/String; = "delinkWallet"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final WIDGET_NAME:Ljava/lang/String; = "widget_key"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final WIDGET_NETBANKING:Ljava/lang/String; = "nb"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final WIDGET_PAYMENT_PAGE:Ljava/lang/String; = "paymentPage"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final WIDGET_UPI:Ljava/lang/String; = "upi"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBuildId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lin/juspay/hypersdk/core/PaymentConstants;->BUILD_ID:Ljava/lang/String;

    return-void
.end method
