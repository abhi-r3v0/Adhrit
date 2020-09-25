.class public final Lo/setTag;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/setMinHeight;

.field public static final ICustomTabsCallback$Stub:Lo/setMinHeight;

.field public static final ICustomTabsCallback$Stub$Proxy:Lo/setMinHeight;

.field public static final ICustomTabsService:Lo/setMinHeight;

.field public static final ICustomTabsService$Stub:Lo/setMinHeight;

.field public static final ICustomTabsService$Stub$Proxy:Lo/setMinHeight;

.field public static final INotificationSideChannel:Lo/setMinHeight;

.field public static final IPostMessageService:Lo/setMinHeight;

.field public static final IPostMessageService$Stub:Lo/setMinHeight;

.field public static final asBinder:Lo/setMinHeight;

.field public static final asInterface:Lo/setMinHeight;

.field public static final cancel:Lo/setMinHeight;

.field public static final extraCallback:Lo/setMinHeight;

.field public static final extraCommand:Lo/setMinHeight;

.field public static final getInterfaceDescriptor:Lo/setMinHeight;

.field public static final mayLaunchUrl:Lo/setMinHeight;

.field public static final newSession:Lo/setMinHeight;

.field private static notify:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lo/setDesignInformation;",
            "Lo/setMinHeight;",
            ">;"
        }
    .end annotation
.end field

.field public static final onMessageChannelReady:Lo/setMinHeight;

.field public static final onNavigationEvent:Lo/setMinHeight;

.field public static final onPostMessage:Lo/setMinHeight;

.field public static final onRelationshipValidationResult:Lo/setMinHeight;

.field public static final onTransact:Lo/setMinHeight;

.field public static final postMessage:Lo/setMinHeight;

.field public static final requestPostMessageChannel:Lo/setMinHeight;

.field public static final updateVisuals:Lo/setMinHeight;

.field public static final validateRelationship:Lo/setMinHeight;

.field public static final warmup:Lo/setMinHeight;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lo/setTag;->notify:Ljava/util/LinkedHashMap;

    .line 25
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "06"

    const-string v3, "Object Identifier (OID)"

    const-string v4, "Universal tag for OID"

    invoke-direct {v0, v2, v1, v3, v4}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "41"

    const-string v3, "Country Code"

    const-string v4, "Country code (encoding specified in ISO 3166-1) and optional national data"

    invoke-direct {v0, v2, v1, v3, v4}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "42"

    const-string v3, "Issuer Identification Number (IIN)"

    const-string v4, "The number that identifies the major industry and the card issuer and that forms the first part of the Primary Account Number (PAN)"

    invoke-direct {v0, v2, v1, v3, v4}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "Identifies the application as described in ISO/IEC 7816-5"

    const-string v3, "4f"

    const-string v4, "Application Identifier (AID) - card"

    invoke-direct {v0, v3, v1, v4, v2}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->onPostMessage:Lo/setMinHeight;

    .line 31
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v3, "50"

    const-string v4, "Application Label"

    const-string v5, "Mnemonic associated with the AID according to ISO/IEC 7816-5"

    invoke-direct {v0, v3, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->ICustomTabsCallback:Lo/setMinHeight;

    .line 32
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v3, "51"

    const-string v4, "File reference data element"

    const-string v5, "ISO-7816 Path"

    invoke-direct {v0, v3, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v3, ""

    const-string v4, "52"

    const-string v5, "Command APDU"

    invoke-direct {v0, v4, v1, v5, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "53"

    const-string v5, "Discretionary data (or template)"

    invoke-direct {v0, v4, v1, v5, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "61"

    const-string v5, "Application Template"

    const-string v6, "Contains one or more data objects relevant to an application directory entry according to ISO/IEC 7816-5"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "6f"

    const-string v5, "File Control Information (FCI) Template"

    const-string v6, "Set of file control parameters and file management data (according to ISO/IEC 7816-4)"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "73"

    const-string v5, "Directory Discretionary Template"

    const-string v6, "Issuer discretionary part of the directory according to ISO/IEC 7816-5"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "84"

    const-string v5, "Dedicated File (DF) Name"

    const-string v6, "Identifies the name of the DF as described in ISO/IEC 7816-4"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->onMessageChannelReady:Lo/setMinHeight;

    .line 39
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "88"

    const-string v5, "Short File Identifier (SFI)"

    const-string v6, "Identifies the SFI to be used in the commands related to a given AEF or DDF. The SFI data object is a binary field with the three high order bits set to zero"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->extraCallback:Lo/setMinHeight;

    .line 41
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "a5"

    const-string v5, "File Control Information (FCI) Proprietary Template"

    const-string v6, "Identifies the data object proprietary to this specification in the FCI template according to ISO/IEC 7816-4"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v4, "5f50"

    const-string v5, "Issuer URL"

    const-string v6, "The URL provides the location of the Issuer\u00e2\u20ac\u2122s Library Server on the Internet"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "57"

    const-string v5, "Track 2 Equivalent Data"

    const-string v6, "Contains the data elements of track 2 according to ISO/IEC 7813, excluding start sentinel, end sentinel, and Longitudinal Redundancy Check (LRC)"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->onNavigationEvent:Lo/setMinHeight;

    .line 46
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v4, "5a"

    const-string v5, "Application Primary Account Number (PAN)"

    const-string v6, "Valid cardholder account number"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "70"

    const-string v5, "Record Template (EMV Proprietary)"

    const-string v6, "Template proprietary to the EMV specification"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "71"

    const-string v5, "Issuer Script Template 1"

    const-string v6, "Contains proprietary issuer data for transmission to the ICC before the second GENERATE AC command"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "72"

    const-string v5, "Issuer Script Template 2"

    const-string v6, "Contains proprietary issuer data for transmission to the ICC after the second GENERATE AC command"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "77"

    const-string v5, "Response Message Template Format 2"

    const-string v6, "Contains the data objects (with tags and lengths) returned by the ICC in response to a command"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "80"

    const-string v5, "Response Message Template Format 1"

    const-string v6, "Contains the data objects (without tags and lengths) returned by the ICC in response to a command"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->ICustomTabsCallback$Stub:Lo/setMinHeight;

    .line 52
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "Authorised amount of the transaction (excluding adjustments)"

    const-string v5, "81"

    const-string v6, "Amount, Authorised (Binary)"

    invoke-direct {v0, v5, v1, v6, v4}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v5, "82"

    const-string v6, "Application Interchange Profile"

    const-string v7, "Indicates the capabilities of the card to support specific functions in the application"

    invoke-direct {v0, v5, v1, v6, v7}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v5, "83"

    const-string v6, "Command Template"

    const-string v7, "Identifies the data field of a command message"

    invoke-direct {v0, v5, v1, v6, v7}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->onRelationshipValidationResult:Lo/setMinHeight;

    .line 55
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v5, "86"

    const-string v6, "Issuer Script Command"

    const-string v7, "Contains a command for transmission to the ICC"

    invoke-direct {v0, v5, v1, v6, v7}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v5, "87"

    const-string v6, "Application Priority Indicator"

    const-string v7, "Indicates the priority of a given application or group of applications in a directory"

    invoke-direct {v0, v5, v1, v6, v7}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v5, "89"

    const-string v6, "Authorisation Code"

    const-string v7, "Value generated by the authorisation authority for an approved transaction"

    invoke-direct {v0, v5, v1, v6, v7}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v5, "8a"

    const-string v6, "Authorisation Response Code"

    const-string v7, "Code that defines the disposition of a message"

    invoke-direct {v0, v5, v1, v6, v7}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->extraCallback:Lo/setType;

    const-string v5, "8c"

    const-string v6, "Card Risk Management Data Object List 1 (CDOL1)"

    const-string v7, "List of data objects (tag and length) to be passed to the ICC in the first GENERATE AC command"

    invoke-direct {v0, v5, v1, v6, v7}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->extraCallback:Lo/setType;

    const-string v5, "8d"

    const-string v6, "Card Risk Management Data Object List 2 (CDOL2)"

    const-string v7, "List of data objects (tag and length) to be passed to the ICC in the second GENERATE AC command"

    invoke-direct {v0, v5, v1, v6, v7}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v5, "8e"

    const-string v6, "Cardholder Verification Method (CVM) List"

    const-string v7, "Identifies a method of verification of the cardholder supported by the application"

    invoke-direct {v0, v5, v1, v6, v7}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v5, "Identifies the certification authority\u00e2\u20ac\u2122s public key in conjunction with the RID"

    const-string v6, "8f"

    const-string v7, "Certification Authority Public Key Index - card"

    invoke-direct {v0, v6, v1, v7, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "90"

    const-string v7, "Issuer Public Key Certificate"

    const-string v8, "Issuer public key certified by a certification authority"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "91"

    const-string v7, "Issuer Authentication Data"

    const-string v8, "Data sent to the ICC for online issuer authentication"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "92"

    const-string v7, "Issuer Public Key Remainder"

    const-string v8, "Remaining digits of the Issuer Public Key Modulus"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "93"

    const-string v7, "Signed Static Application Data"

    const-string v8, "Digital signature on critical application parameters for SDA"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "94"

    const-string v7, "Application File Locator (AFL)"

    const-string v8, "Indicates the location (SFI, range of records) of the AEFs related to a given application"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->asBinder:Lo/setMinHeight;

    .line 68
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "95"

    const-string v7, "Terminal Verification Results (TVR)"

    const-string v8, "Status of the different functions as seen from the terminal"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "97"

    const-string v7, "Transaction Certificate Data Object List (TDOL)"

    const-string v8, "List of data objects (tag and length) to be used by the terminal in generating the TC Hash Value"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "98"

    const-string v7, "Transaction Certificate (TC) Hash Value"

    const-string v8, "Result of a hash function specified in Book 2, Annex B3.1"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "99"

    const-string v7, "Transaction Personal Identification Number (PIN) Data"

    const-string v8, "Data entered by the cardholder for the purpose of the PIN verification"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "9a"

    const-string v7, "Transaction Date"

    const-string v8, "Local date that the transaction was authorised"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->onTransact:Lo/setMinHeight;

    .line 73
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "9b"

    const-string v7, "Transaction Status Information"

    const-string v8, "Indicates the functions performed in a transaction"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "9c"

    const-string v7, "Transaction Type"

    const-string v8, "Indicates the type of financial transaction, represented by the first two digits of ISO 8583:1987 Processing Code"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->asInterface:Lo/setMinHeight;

    .line 75
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "9d"

    const-string v7, "Directory Definition File (DDF) Name"

    const-string v8, "Identifies the name of a DF associated with a directory"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v6, "5f20"

    const-string v7, "Cardholder Name"

    const-string v8, "Indicates cardholder name according to ISO 7813"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->getInterfaceDescriptor:Lo/setMinHeight;

    .line 78
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "5f24"

    const-string v7, "Application Expiration Date"

    const-string v8, "Date after which application expires"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "5f25"

    const-string v7, "Application Effective Date"

    const-string v8, "Date from which the application may be used"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "5f28"

    const-string v7, "Issuer Country Code"

    const-string v8, "Indicates the country of the issuer according to ISO 3166"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v6, "5f2a"

    const-string v7, "Transaction Currency Code"

    const-string v8, "Indicates the currency code of the transaction according to ISO 4217"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->ICustomTabsCallback$Stub$Proxy:Lo/setMinHeight;

    .line 82
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v6, "5f2d"

    const-string v7, "Language Preference"

    const-string v8, "1\u00e2\u20ac\u201c4 languages stored in order of preference, each represented by 2 alphabetical characters according to ISO 639"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "5f30"

    const-string v7, "Service Code"

    const-string v8, "Service code as defined in ISO/IEC 7813 for track 1 and track 2"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "5f34"

    const-string v7, "Application Primary Account Number (PAN) Sequence Number"

    const-string v8, "Identifies and differentiates cards with the same PAN"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "5f36"

    const-string v7, "Transaction Currency Exponent"

    const-string v8, "Indicates the implied position of the decimal point from the right of the transaction amount represented according to ISO 4217"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v6, "5f53"

    const-string v7, "International Bank Account Number (IBAN)"

    const-string v8, "Uniquely identifies the account of a customer at a financial institution as defined in ISO 13616"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onNavigationEvent:Lo/setType;

    const-string v6, "5f54"

    const-string v7, "Bank Identifier Code (BIC)"

    const-string v8, "Uniquely identifies a bank as defined in ISO 9362"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v6, "5f55"

    const-string v7, "Issuer Country Code (alpha2 format)"

    const-string v8, "Indicates the country of the issuer as defined in ISO 3166 (using a 2 character alphabetic code)"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v6, "5f56"

    const-string v7, "Issuer Country Code (alpha3 format)"

    const-string v8, "Indicates the country of the issuer as defined in ISO 3166 (using a 3 character alphabetic code)"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "9f01"

    const-string v7, "Acquirer Identifier"

    const-string v8, "Uniquely identifies the acquirer within each payment system"

    invoke-direct {v0, v6, v1, v7, v8}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "9f02"

    const-string v7, "Amount, Authorised (Numeric)"

    invoke-direct {v0, v6, v1, v7, v4}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->newSession:Lo/setMinHeight;

    .line 92
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v4, "Secondary amount associated with the transaction representing a cashback amount"

    const-string v6, "9f03"

    const-string v7, "Amount, Other (Numeric)"

    invoke-direct {v0, v6, v1, v7, v4}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v6, "9f04"

    const-string v7, "Amount, Other (Binary)"

    invoke-direct {v0, v6, v1, v7, v4}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "9f05"

    const-string v6, "Application Discretionary Data"

    const-string v7, "Issuer or payment system specified data relating to the application"

    invoke-direct {v0, v4, v1, v6, v7}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "9f06"

    const-string v6, "Application Identifier (AID) - terminal"

    invoke-direct {v0, v4, v1, v6, v2}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f07"

    const-string v4, "Application Usage Control"

    const-string v6, "Indicates issuer\u00e2\u20ac\u2122s specified restrictions on the geographic usage and services allowed for the application"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "Version number assigned by the payment system for the application"

    const-string v4, "9f08"

    const-string v6, "Application Version Number - card"

    invoke-direct {v0, v4, v1, v6, v2}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "9f09"

    const-string v6, "Application Version Number - terminal"

    invoke-direct {v0, v4, v1, v6, v2}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v2, "9f0b"

    const-string v4, "Cardholder Name Extended"

    const-string v6, "Indicates the whole cardholder name when greater than 26 characters using the same coding convention as in ISO 7813"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f0d"

    const-string v4, "Issuer Action Code - Default"

    const-string v6, "Specifies the issuer\u00e2\u20ac\u2122s conditions that cause a transaction to be rejected if it might have been approved online, but the terminal is unable to process the transaction online"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f0e"

    const-string v4, "Issuer Action Code - Denial"

    const-string v6, "Specifies the issuer\u00e2\u20ac\u2122s conditions that cause the denial of a transaction without attempt to go online"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f0f"

    const-string v4, "Issuer Action Code - Online"

    const-string v6, "Specifies the issuer\u00e2\u20ac\u2122s conditions that cause a transaction to be transmitted online"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f10"

    const-string v4, "Issuer Application Data"

    const-string v6, "Contains proprietary application data for transmission to the issuer in an online transaction"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f11"

    const-string v4, "Issuer Code Table Index"

    const-string v6, "Indicates the code table according to ISO/IEC 8859 for displaying the Application Preferred Name"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v2, "9f12"

    const-string v4, "Application Preferred Name"

    const-string v6, "Preferred mnemonic associated with the AID"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f13"

    const-string v4, "Last Online Application Transaction Counter (ATC) Register"

    const-string v6, "ATC value of the last transaction that went online"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f14"

    const-string v4, "Lower Consecutive Offline Limit"

    const-string v6, "Issuer-specified preference for the maximum number of consecutive offline transactions for this ICC application allowed in a terminal with online capability"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f15"

    const-string v4, "Merchant Category Code"

    const-string v6, "Classifies the type of business being done by the merchant, represented according to ISO 8583:1993 for Card Acceptor Business Code"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v2, "9f16"

    const-string v4, "Merchant Identifier"

    const-string v6, "When concatenated with the Acquirer Identifier, uniquely identifies a given merchant"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f17"

    const-string v4, "Personal Identification Number (PIN) Try Counter"

    const-string v6, "Number of PIN tries remaining"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->warmup:Lo/setMinHeight;

    .line 111
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f18"

    const-string v4, "Issuer Script Identifier"

    const-string v6, "Identification of the Issuer Script"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v2, "9f1a"

    const-string v4, "Terminal Country Code"

    const-string v6, "Indicates the country of the terminal, represented according to ISO 3166"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->ICustomTabsService:Lo/setMinHeight;

    .line 113
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f1b"

    const-string v4, "Terminal Floor Limit"

    const-string v6, "Indicates the floor limit in the terminal in conjunction with the AID"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v2, "9f1c"

    const-string v4, "Terminal Identification"

    const-string v6, "Designates the unique location of a terminal at a merchant"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f1d"

    const-string v4, "Terminal Risk Management Data"

    const-string v6, "Application-specific value used by the card for risk management purposes"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v2, "9f1e"

    const-string v4, "Interface Device (IFD) Serial Number"

    const-string v6, "Unique and permanent serial number assigned to the IFD by the manufacturer"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v2, "9f1f"

    const-string v4, "[Magnetic Stripe] Track 1 Discretionary Data"

    const-string v6, "Discretionary part of track 1 according to ISO/IEC 7813"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v2, "9f20"

    const-string v4, "[Magnetic Stripe] Track 2 Discretionary Data"

    const-string v6, "Discretionary part of track 2 according to ISO/IEC 7813"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f21"

    const-string v4, "Transaction Time (HHMMSS)"

    const-string v6, "Local time that the transaction was authorised"

    invoke-direct {v0, v2, v1, v4, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f22"

    const-string v4, "Certification Authority Public Key Index - Terminal"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f23"

    const-string v4, "Upper Consecutive Offline Limit"

    const-string v5, "Issuer-specified preference for the maximum number of consecutive offline transactions for this ICC application allowed in a terminal without online capability"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f26"

    const-string v4, "Application Cryptogram"

    const-string v5, "Cryptogram returned by the ICC in response of the GENERATE AC command"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f27"

    const-string v4, "Cryptogram Information Data"

    const-string v5, "Indicates the type of cryptogram and the actions to be performed by the terminal"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f2d"

    const-string v4, "ICC PIN Encipherment Public Key Certificate"

    const-string v5, "ICC PIN Encipherment Public Key certified by the issuer"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f2e"

    const-string v4, "ICC PIN Encipherment Public Key Exponent"

    const-string v5, "ICC PIN Encipherment Public Key Exponent used for PIN encipherment"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f2f"

    const-string v4, "ICC PIN Encipherment Public Key Remainder"

    const-string v5, "Remaining digits of the ICC PIN Encipherment Public Key Modulus"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f32"

    const-string v4, "Issuer Public Key Exponent"

    const-string v5, "Issuer public key exponent used for the verification of the Signed Static Application Data and the ICC Public Key Certificate"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f33"

    const-string v4, "Terminal Capabilities"

    const-string v5, "Indicates the card data input, CVM, and security capabilities of the terminal"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->extraCommand:Lo/setMinHeight;

    .line 129
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f34"

    const-string v4, "Cardholder Verification (CVM) Results"

    const-string v5, "Indicates the results of the last CVM performed"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f35"

    const-string v4, "Terminal Type"

    const-string v5, "Indicates the environment of the terminal, its communications capability, and its operational control"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->requestPostMessageChannel:Lo/setMinHeight;

    .line 131
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f36"

    const-string v4, "Application Transaction Counter (ATC)"

    const-string v5, "Counter maintained by the application in the ICC (incrementing the ATC is managed by the ICC)"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f37"

    const-string v4, "Unpredictable Number"

    const-string v5, "Value to provide variability and uniqueness to the generation of a cryptogram"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->postMessage:Lo/setMinHeight;

    .line 133
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->extraCallback:Lo/setType;

    const-string v2, "9f38"

    const-string v4, "Processing Options Data Object List (PDOL)"

    const-string v5, "Contains a list of terminal resident data objects (tags and lengths) needed by the ICC in processing the GET PROCESSING OPTIONS command"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->mayLaunchUrl:Lo/setMinHeight;

    .line 134
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f39"

    const-string v4, "Point-of-Service (POS) Entry Mode"

    const-string v5, "Indicates the method by which the PAN was entered, according to the first two digits of the ISO 8583:1987 POS Entry Mode"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f3a"

    const-string v4, "Amount, Reference Currency"

    const-string v5, "Authorised amount expressed in the reference currency"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f3b"

    const-string v4, "Application Reference Currency"

    const-string v5, "1\u00e2\u20ac\u201c4 currency codes used between the terminal and the ICC when the Transaction Currency Code is different from the Application Currency Code; each code is 3 digits according to ISO 4217"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f3c"

    const-string v4, "Transaction Reference Currency Code"

    const-string v5, "Code defining the common currency used by the terminal in case the Transaction Currency Code is different from the Application Currency Code"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f3d"

    const-string v4, "Transaction Reference Currency Exponent"

    const-string v5, "Indicates the implied position of the decimal point from the right of the transaction amount, with the Transaction Reference Currency Code represented according to ISO 4217"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f40"

    const-string v4, "Additional Terminal Capabilities"

    const-string v5, "Indicates the data input and output capabilities of the terminal"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->updateVisuals:Lo/setMinHeight;

    .line 140
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f41"

    const-string v4, "Transaction Sequence Counter"

    const-string v5, "Counter maintained by the terminal that is incremented by one for each transaction"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f42"

    const-string v4, "Application Currency Code"

    const-string v5, "Indicates the currency in which the account is managed according to ISO 4217"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f43"

    const-string v4, "Application Reference Currency Exponent"

    const-string v5, "Indicates the implied position of the decimal point from the right of the amount, for each of the 1\u00e2\u20ac\u201c4 reference currencies represented according to ISO 4217"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onPostMessage:Lo/setType;

    const-string v2, "9f44"

    const-string v4, "Application Currency Exponent"

    const-string v5, "Indicates the implied position of the decimal point from the right of the amount represented according to ISO 4217"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f45"

    const-string v4, "Data Authentication Code"

    const-string v5, "An issuer assigned value that is retained by the terminal during the verification process of the Signed Static Application Data"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f46"

    const-string v4, "ICC Public Key Certificate"

    const-string v5, "ICC Public Key certified by the issuer"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f47"

    const-string v4, "ICC Public Key Exponent"

    const-string v5, "ICC Public Key Exponent used for the verification of the Signed Dynamic Application Data"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f48"

    const-string v4, "ICC Public Key Remainder"

    const-string v5, "Remaining digits of the ICC Public Key Modulus"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->extraCallback:Lo/setType;

    const-string v2, "9f49"

    const-string v4, "Dynamic Data Authentication Data Object List (DDOL)"

    const-string v5, "List of data objects (tag and length) to be passed to the ICC in the INTERNAL AUTHENTICATE command"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f4a"

    const-string v4, "Static Data Authentication Tag List"

    const-string v5, "List of tags of primitive data objects defined in this specification whose value fields are to be included in the Signed Static or Dynamic Application Data"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f4b"

    const-string v4, "Signed Dynamic Application Data"

    const-string v5, "Digital signature on critical application parameters for DDA or CDA"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f4c"

    const-string v4, "ICC Dynamic Number"

    const-string v5, "Time-variant number generated by the ICC, to be captured by the terminal"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f4d"

    const-string v4, "Log Entry"

    const-string v5, "Provides the SFI of the Transaction Log file and its number of records"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->IPostMessageService$Stub:Lo/setMinHeight;

    .line 153
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->ICustomTabsCallback:Lo/setType;

    const-string v2, "9f4e"

    const-string v4, "Merchant Name and Location"

    const-string v5, "Indicates the name and location of the merchant"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->extraCallback:Lo/setType;

    const-string v2, "9f4f"

    const-string v4, "Log Format"

    const-string v5, "List (in tag and length format) of data objects representing the logged data elements that are passed to the terminal when a transaction log record is read"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->ICustomTabsService$Stub$Proxy:Lo/setMinHeight;

    .line 156
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "bf0c"

    const-string v4, "File Control Information (FCI) Issuer Discretionary Data"

    const-string v5, "Issuer discretionary part of the FCI (e.g. O/S Manufacturer proprietary data)"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df60"

    const-string v4, "VISA Log Entry"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->ICustomTabsService$Stub:Lo/setMinHeight;

    .line 181
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "56"

    const-string v4, "Track 1 Data"

    const-string v5, "Track 1 Data contains the data objects of the track 1 according to [ISO/IEC 7813] Structure B, excluding start sentinel, end sentinel and LRC."

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f66"

    const-string v4, "Terminal Transaction Qualifiers"

    const-string v5, "Provided by the reader in the GPO command and used by the card to determine processing choices based on reader functionality"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->IPostMessageService:Lo/setMinHeight;

    .line 200
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f6b"

    const-string v4, "Track 2 Data"

    const-string v5, "Track 2 Data contains the data objects of the track 2 according to [ISO/IEC 7813] Structure B, excluding start sentinel, end sentinel and LRC."

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->validateRelationship:Lo/setMinHeight;

    .line 201
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f6e"

    const-string v4, "Visa Low-Value Payment (VLP) Issuer Authorisation Code"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f29"

    const-string v4, "Indicates the card\'s preference for the kernel on which the contactless application can be processed"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f2a"

    const-string v4, "The value to be appended to the ADF Name in the data field of the SELECT command, if the Extended Selection Support flag is present and set to 1"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->cancel:Lo/setMinHeight;

    .line 208
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f52"

    const-string v4, "Upper Cumulative Domestic Offline Transaction Amount"

    const-string v5, "Issuer specified data element indicating the required maximum cumulative offline amount allowed for the application before the transaction goes online."

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "?"

    const-string v4, "9f56"

    invoke-direct {v0, v4, v1, v2, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "9f6c"

    const-string v5, "Mag Stripe Application Version Number (Card)"

    const-string v6, "Must be personalized with the value 0x0001"

    invoke-direct {v0, v4, v1, v5, v6}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v4, "df3e"

    invoke-direct {v0, v4, v1, v2, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f50"

    const-string v4, "Offline Accumulator Balance"

    const-string v5, "Represents the amount of offline spending available in the Card."

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f51"

    const-string v4, "DRDOL"

    const-string v5, "A data object in the Card that provides the Kernel with a list of data objects that must be passed to the Card in the data field of the RECOVER AC command"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f53"

    const-string v4, "Transaction Category Code"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f54"

    const-string v4, "DS ODS Card"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f55"

    const-string v4, "Mobile Support Indicator"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f5b"

    const-string v4, "DSDOL"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f5c"

    const-string v4, "DS Requested Operator ID"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setTag;->INotificationSideChannel:Lo/setMinHeight;

    .line 263
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f5d"

    const-string v4, "Application Capabilities Information"

    const-string v5, "Lists a number of card features beyond regular payment"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f5e"

    const-string v4, "Data Storage Identifier"

    const-string v5, "Constructed as follows: Application PAN (without any \'F\' padding) || Application PAN Sequence Number (+ zero padding)"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f5f"

    const-string v4, "DS Slot Availability"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f60"

    const-string v4, "CVC3 (Track1)"

    const-string v5, "The CVC3 (Track1) is a 2-byte cryptogram returned by the Card in the response to the COMPUTE CRYPTOGRAPHIC CHECKSUM command."

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f61"

    const-string v4, "CVC3 (Track2)"

    const-string v5, "The CVC3 (Track2) is a 2-byte cryptogram returned by the Card in the response to the COMPUTE CRYPTOGRAPHIC CHECKSUM command."

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f62"

    const-string v4, "Track 1 bit map for CVC3"

    const-string v5, "PCVC3(Track1) indicates to the Kernel the positions in the discretionary data field of the Track 1 Data where the CVC3 (Track1) digits must be copied"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f63"

    const-string v4, "Track 1 bit map for UN and ATC"

    const-string v5, "PUNATC(Track1) indicates to the Kernel the positions in the discretionary data field of Track 1 Data where the Unpredictable Number (Numeric) digits and Application Transaction Counter digits have to be copied."

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f64"

    const-string v4, "Track 1 number of ATC digits"

    const-string v5, "The value of NATC(Track1) represents the number of digits of the Application Transaction Counter to be included in the discretionary data field of Track 1 Data"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f65"

    const-string v4, "Track 2 bit map for CVC3"

    const-string v5, "PCVC3(Track2) indicates to the Kernel the positions in the discretionary data field of the Track 2 Data where the CVC3 (Track2) digits must be copied"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f67"

    const-string v4, "Track 2 number of ATC digits"

    const-string v5, "The value of NATC(Track2) represents the number of digits of the Application Transaction Counter to be included in the discretionary data field of Track 2 Data"

    invoke-direct {v0, v2, v1, v4, v5}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f69"

    const-string v4, "UDOL"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f6a"

    const-string v4, "Unpredictable Number (Numeric)"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f6d"

    const-string v4, "Mag-stripe Application Version Number (Reader)"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f6f"

    const-string v4, "DS Slot Management Control"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f70"

    const-string v4, "Protected Data Envelope 1"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f71"

    const-string v4, "Protected Data Envelope 2"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f72"

    const-string v4, "Protected Data Envelope 3"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f73"

    const-string v4, "Protected Data Envelope 4"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f74"

    const-string v4, "Protected Data Envelope 5"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f75"

    const-string v4, "Unprotected Data Envelope 1"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f76"

    const-string v4, "Unprotected Data Envelope 2"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f77"

    const-string v4, "Unprotected Data Envelope 3"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f78"

    const-string v4, "Unprotected Data Envelope 4"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f79"

    const-string v4, "Unprotected Data Envelope 5"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f7c"

    const-string v4, "Merchant Custom Data"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f7d"

    const-string v4, "DS Summary 1"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "9f7f"

    const-string v4, "DS Unpredictable Number"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df4b"

    const-string v4, "POS Cardholder Interaction Information"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df61"

    const-string v4, "DS Digest H"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df62"

    const-string v4, "DS ODS Info"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df63"

    const-string v4, "DS ODS Term"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8104"

    const-string v4, "Balance Read Before Gen AC"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8105"

    const-string v4, "Balance Read After Gen AC"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8106"

    const-string v4, "Data Needed"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8107"

    const-string v4, "CDOL1 Related Data"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8108"

    const-string v4, "DS AC Type"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8109"

    const-string v4, "DS Input (Term)"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df810a"

    const-string v4, "DS ODS Info For Reader"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df810b"

    const-string v4, "DS Summary Status"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df810c"

    const-string v4, "Kernel ID"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df810d"

    const-string v4, "DSVN Term"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df810e"

    const-string v4, "Post-Gen AC Put Data Status"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df810f"

    const-string v4, "Pre-Gen AC Put Data Status"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8110"

    const-string v4, "Proceed To First Write Flag"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8111"

    const-string v4, "PDOL Related Data"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8112"

    const-string v4, "Tags To Read"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8113"

    const-string v4, "DRDOL Related Data"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8114"

    const-string v4, "Reference Control Parameter"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8115"

    const-string v4, "Error Indication"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8116"

    const-string v4, "User Interface Request Data"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8117"

    const-string v4, "Card Data Input Capability"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8118"

    const-string v4, "CVM Capability - CVM Required"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8119"

    const-string v4, "CVM Capability - No CVM Required"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df811a"

    const-string v4, "Default UDOL"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df811b"

    const-string v4, "Kernel Configuration"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df811c"

    const-string v4, "Max Lifetime of Torn Transaction Log Record"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df811d"

    const-string v4, "Max Number of Torn Transaction Log Records"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df811e"

    const-string v4, "Mag-stripe CVM Capability \u2013 CVM Required"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df811f"

    const-string v4, "Security Capability"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8120"

    const-string v4, "Terminal Action Code \u2013 Default"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8121"

    const-string v4, "Terminal Action Code \u2013 Denial"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8122"

    const-string v4, "Terminal Action Code \u2013 Online"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8123"

    const-string v4, "Reader Contactless Floor Limit"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8124"

    const-string v4, "Reader Contactless Transaction Limit (No On-device CVM)"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8125"

    const-string v4, "Reader Contactless Transaction Limit (On-device CVM)"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8126"

    const-string v4, "Reader CVM Required Limit"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8127"

    const-string v4, "TIME_OUT_VALUE"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8128"

    const-string v4, "IDS Status"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df8129"

    const-string v4, "Outcome Parameter Set"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df812a"

    const-string v4, "DD Card (Track1)"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df812b"

    const-string v4, "DD Card (Track2)"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df812c"

    const-string v4, "Mag-stripe CVM Capability \u2013 No CVM Required"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "df812d"

    const-string v4, "Message Hold Time"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "ff8101"

    const-string v4, "Torn Record"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "ff8102"

    const-string v4, "Tags To Write Before Gen AC"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "ff8103"

    const-string v4, "Tags To Write After Gen AC"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "ff8104"

    const-string v4, "Data To Send"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "ff8105"

    const-string v4, "Data Record"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "ff8106"

    const-string v4, "Discretionary Data"

    invoke-direct {v0, v2, v1, v4, v3}, Lo/setId;-><init>(Ljava/lang/String;Lo/setType;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-class v0, Lo/setTag;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 395
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 396
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lo/setMinHeight;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    .line 398
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setMinHeight;

    .line 3384
    invoke-interface {v3}, Lo/setMinHeight;->onPostMessage()[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4019
    new-instance v5, Lo/setDesignInformation;

    invoke-direct {v5, v4}, Lo/setDesignInformation;-><init>([B)V

    .line 3385
    sget-object v4, Lo/setTag;->notify:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3388
    sget-object v4, Lo/setTag;->notify:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3386
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag already added "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4017
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 401
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback([B)Lo/setMinHeight;
    .locals 3

    .line 1379
    sget-object v0, Lo/setTag;->notify:Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_1

    .line 2019
    new-instance v1, Lo/setDesignInformation;

    invoke-direct {v1, p0}, Lo/setDesignInformation;-><init>([B)V

    .line 1379
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setMinHeight;

    if-nez v0, :cond_0

    .line 2372
    new-instance v0, Lo/setId;

    sget-object v1, Lo/setType;->onMessageChannelReady:Lo/setType;

    const-string v2, "[UNKNOWN TAG]"

    invoke-direct {v0, p0, v1, v2}, Lo/setId;-><init>([BLo/setType;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    .line 2017
    throw p0
.end method

.method public static onMessageChannelReady([B)Lo/setMinHeight;
    .locals 2

    .line 379
    sget-object v0, Lo/setTag;->notify:Ljava/util/LinkedHashMap;

    .line 3019
    new-instance v1, Lo/setDesignInformation;

    invoke-direct {v1, p0}, Lo/setDesignInformation;-><init>([B)V

    .line 379
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setMinHeight;

    return-object p0
.end method
