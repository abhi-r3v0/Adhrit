.class public final enum Lcom/freshchat/consumer/sdk/b/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cQ:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dA:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dB:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dC:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dD:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dE:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dF:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dG:Lcom/freshchat/consumer/sdk/b/c;

.field private static final synthetic dJ:[Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dd:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum de:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum df:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dg:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dh:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum di:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dj:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dk:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dl:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dm:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dn:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum do:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dp:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dq:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dr:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum ds:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dt:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum du:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dv:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dw:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dx:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dy:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum dz:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum hG:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum hH:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum hI:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum hx:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum kK:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum kL:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum kM:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum kN:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum kO:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum kY:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum kv:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum lD:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum lF:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum lb:Lcom/freshchat/consumer/sdk/b/c;

.field public static final enum ll:Lcom/freshchat/consumer/sdk/b/c;


# instance fields
.field private dI:I

.field private errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/4 v1, 0x0

    const-string v2, "ERROR_UNSUPPORTED_OS_VERSION"

    const/16 v3, 0x65

    const-string v4, "Freshchat is not supported in this version of OS"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dd:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/4 v2, 0x1

    const-string v3, "CHANNLES_NOT_AVAILABLE"

    const/16 v4, 0x66

    const-string v5, "Unable to display support section"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->de:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/4 v3, 0x2

    const-string v4, "CHANNEL_INFO_NOT_AVAILABLE"

    const/16 v5, 0x67

    const-string v6, "Unable to display channel detail"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->df:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/4 v4, 0x3

    const-string v5, "CHANNEL_INFO_INVALID"

    const/16 v6, 0x68

    const-string v7, "Unable to load channel info"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dg:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/4 v5, 0x4

    const-string v6, "CHANNEL_ID_MISSING"

    const/16 v7, 0x69

    const-string v8, "Channel Id is missing !"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dh:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/4 v6, 0x5

    const-string v7, "CHANNEL_UPDATE_FAILED"

    const/16 v8, 0x6a

    const-string v9, "Channels Update Failed."

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->di:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/4 v7, 0x6

    const-string v8, "MESSAGE_SENDING_FAILED"

    const/16 v9, 0x6b

    const-string v10, "Failed to send message."

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->kL:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v8, "Oops! Unable to display linked content"

    const/4 v9, 0x7

    const-string v10, "FAQ_NOT_FOUND"

    const/16 v11, 0xc9

    invoke-direct {v0, v10, v9, v11, v8}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dj:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v10, 0x8

    const-string v11, "LINKED_CONTENT_NOT_FOUND"

    const/16 v12, 0xca

    invoke-direct {v0, v11, v10, v12, v8}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->lb:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v8, 0x9

    const-string v11, "ERROR_TAGS_COUNT_EXCEEDED"

    const/16 v12, 0xcb

    const-string v13, "Limit exceeded: Maximum number of filter tag(s) allowed is 25."

    invoke-direct {v0, v11, v8, v12, v13}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->lF:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v11, 0xa

    const-string v12, "VOICE_MESSAGE_RECORDING_FAILED"

    const/16 v13, 0x12d

    const-string v14, "Failed to record voice message. Please try later"

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dk:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v12, 0xb

    const-string v13, "PICTURE_ATTACHMENT_FAILED"

    const/16 v14, 0x15f

    const-string v15, "Failed to access camera!"

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dl:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v13, 0xc

    const-string v14, "PICTURE_ATTACHMENT_FAILED_NO_STORAGE_ACCESS"

    const/16 v15, 0x160

    const-string v12, "Failed to access camera due to insufficient access to storage!"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dm:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v12, 0xd

    const-string v14, "PICTURE_ATTACHMENT_FAILED_BAD_AUTHORITY"

    const/16 v15, 0x161

    const-string v13, "Failed to capture from camera/write to the storage system due to bad provider authority!"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dn:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v13, 0xe

    const-string v14, "PICTURE_ATTACHMENT_MISSING_FILE_PROVIDER"

    const/16 v15, 0x162

    const-string v12, "Missing/Bad FileProvider for Freshchat. Camera capture will fail in devices running Nougat or later versions of OS"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->do:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "Failed to attach image!"

    const/16 v14, 0xf

    const-string v15, "PICTURE_ATTACHMENT_INVALID_PARAMS_ERROR"

    const/16 v13, 0x163

    invoke-direct {v0, v15, v14, v13, v12}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->kM:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v13, 0x10

    const-string v15, "PICTURE_ATTACHMENT_UNKNOWN_TYPE_ERROR"

    const/16 v14, 0x164

    invoke-direct {v0, v15, v13, v14, v12}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->kN:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v12, 0x11

    const-string v14, "PICTURE_ATTACHMENT_NON_IMAGE_URI_ERROR"

    const/16 v15, 0x165

    const-string v13, "Oops, the selected one wasn\'t an image file!"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->kO:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v13, 0x12

    const-string v14, "PICTURE_ATTACHMENT_PREVIEW_ERROR"

    const/16 v15, 0x166

    const-string v12, "Failed to attach image! Please try later"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->ll:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const/16 v12, 0x13

    const-string v14, "THEME_ATTRIBUTE_MISSING"

    const/16 v15, 0x191

    const-string v13, "FreshchatSDK Theme Error. Unable to find the resource for theme attribute {{resource_name}} Have you declared this in your theme xml ?"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dp:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v13, "INVALID_FRESHCHAT_CONFIG"

    const/16 v14, 0x14

    const/16 v15, 0x1f5

    const-string v12, "Freshchat.init() requires a valid FreshchatConfig instance"

    invoke-direct {v0, v13, v14, v15, v12}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dq:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "INVALID_FRESHCHAT_CONFIG_NON_FRESCHAT_DOMAIN"

    const/16 v13, 0x15

    const/16 v14, 0x1f6

    const-string v15, "Potentially misconfigured domain for Freshchat. Got {{domain}} as domain. Would typically be of the format something.freshchat.com"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dr:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "INVALID_FRESHCHAT_CONFIG_APP_ID"

    const/16 v13, 0x16

    const/16 v14, 0x1f7

    const-string v15, "Freshchat.init() requires a valid FreshchatConfig instance - App Id is missing or invalid"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->ds:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "INVALID_FRESHCHAT_CONFIG_APP_KEY"

    const/16 v13, 0x17

    const/16 v14, 0x1f8

    const-string v15, "Freshchat.init() requires a valid FreshchatConfig instance - App Key is missing or invalid"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dt:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "INVALID_NOTIFICATION_CONFIG"

    const/16 v13, 0x18

    const/16 v14, 0x1fa

    const-string v15, "Invalid FreshchatNotificationConfig object received in setNotificationConfig()"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->du:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "INVALID_NOTIFICATION_PAYLOAD"

    const/16 v13, 0x19

    const/16 v14, 0x1fb

    const-string v15, "Invalid notification payload in handleFcmMessage()"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->kv:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "INVALID_NOTIFICATION_CLICK_ACTION_MISSING_DEEPLINK"

    const/16 v13, 0x1a

    const/16 v14, 0x1fc

    const-string v15, "Got Action {{action_str}} but missing deeplink"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->hx:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "INVALID_NOTIFICATION_CONFIG_IMPORTANCE_VALUE"

    const/16 v13, 0x1b

    const/16 v14, 0x1fd

    const-string v15, "Invalid notification importance value provided : {{importance}}, fallback to default importance"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->lD:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "ERROR_WHILE_CROPPING"

    const/16 v13, 0x1c

    const/16 v14, 0x226

    const-string v15, "Exception while performing circular crop"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->hG:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "PICASSO_INIT_ERROR"

    const/16 v13, 0x1d

    const/16 v14, 0x258

    const-string v15, "Picasso initialisation error"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->hH:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "PICASSO_NO_SUCH_METHOD_ERROR"

    const/16 v13, 0x1e

    const/16 v14, 0x259

    const-string v15, "Unsupported version of Picasso found. Please create and set custom Image loader using Freshchat.setImageLoader()."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->hI:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "PICASSO_INSTANCE_MISSING"

    const/16 v13, 0x1f

    const/16 v14, 0x25a

    const-string v15, "Picasso instance is null"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->kK:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "DEFAULT_IMAGE_LOADER_MISSING"

    const/16 v13, 0x20

    const/16 v14, 0x25b

    const-string v15, "Default image loader library was not found. Please create and set custom Image loader using Freshchat.setImageLoader()."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->kY:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_PROPERTY_KEY_LENGTH_ERROR"

    const/16 v13, 0x21

    const/16 v14, 0x3e8

    const-string v15, "Key length exceeded for key: {{user_property_key_placeholder}} Limit is {{user_property_charecter_limit_placeholder}} characters. Key can only contain alphanumeric characters for key:{{user_property_key_placeholder}}"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dv:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_PROPERTY_VALUE_ERROR"

    const/16 v13, 0x22

    const/16 v14, 0x3e9

    const-string v15, "Value length exceeded for key: {{user_property_key_placeholder}} Limit is {{user_property_charecter_limit_placeholder}} characters"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dw:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_PROPERTY_NAME_ERROR"

    const/16 v13, 0x23

    const/16 v14, 0x3ea

    const-string v15, "Name should be maximum of 256 charecters."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dx:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_PROPERTY_EMAIL_ERROR"

    const/16 v13, 0x24

    const/16 v14, 0x3eb

    const-string v15, "Email is not valid."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dy:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_PROPERTY_EXTERNAL_ID_ERROR"

    const/16 v13, 0x25

    const/16 v14, 0x3ec

    const-string v15, "External Id should be maximum of 256 charecters."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dz:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_PROPERTY_COUNTRY_CODE_ERROR"

    const/16 v13, 0x26

    const/16 v14, 0x3ed

    const-string v15, "Phone number country code should be maximum of 6 digits including +."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dA:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_PROPERTY_PHONE_NUMBER_ERROR"

    const/16 v13, 0x27

    const/16 v14, 0x3ee

    const-string v15, "Phone number should be maximum of 16 charecters and can contain digits, +, ., (, ), -."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dB:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_PROPERTY_RESTORE_ID_ERROR"

    const/16 v13, 0x28

    const/16 v14, 0x3ef

    const-string v15, "Invalid restore id"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->cQ:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_NOT_REGISTERED_ACTIVITY_NOT_SENT"

    const/16 v13, 0x29

    const/16 v14, 0x7d1

    const-string v15, "User not registered. User activity ignored."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dC:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_NOT_REGISTERED_CLIENT_VERSION_NOT_SENT"

    const/16 v13, 0x2a

    const/16 v14, 0x7d2

    const-string v15, "The user does not exist yet. Avoiding user client version call"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dD:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_NOT_REGISTERED_APP_VERSION_NOT_SENT"

    const/16 v13, 0x2b

    const/16 v14, 0x7d3

    const-string v15, "The user does not exist yet. Avoiding user app version call"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dE:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_NOT_REGISTERED_HEARTBEAT_NOT_SENT"

    const/16 v13, 0x2c

    const/16 v14, 0x7d4

    const-string v15, "User not registered. User heartbeat ignored."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dF:Lcom/freshchat/consumer/sdk/b/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/b/c;

    const-string v12, "USER_HEARTBEAT_NOT_SENT"

    const/16 v13, 0x2d

    const/16 v14, 0x7d5

    const-string v15, "User heartbeat not registered."

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/freshchat/consumer/sdk/b/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/b/c;->dG:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v12, 0x2e

    new-array v12, v12, [Lcom/freshchat/consumer/sdk/b/c;

    sget-object v13, Lcom/freshchat/consumer/sdk/b/c;->dd:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v13, v12, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->de:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->df:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v1, v12, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dg:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v1, v12, v4

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dh:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v1, v12, v5

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->di:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v1, v12, v6

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->kL:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v1, v12, v7

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dj:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v1, v12, v9

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->lb:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v1, v12, v10

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->lF:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v1, v12, v8

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dk:Lcom/freshchat/consumer/sdk/b/c;

    aput-object v1, v12, v11

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dl:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0xb

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dm:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0xc

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dn:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0xd

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->do:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0xe

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->kM:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0xf

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->kN:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x10

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->kO:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x11

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->ll:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x12

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dp:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x13

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dq:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x14

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dr:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x15

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->ds:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x16

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dt:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x17

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->du:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x18

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->kv:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x19

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->hx:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x1a

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->lD:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x1b

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->hG:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x1c

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->hH:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x1d

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->hI:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x1e

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->kK:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x1f

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->kY:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x20

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dv:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x21

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dw:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x22

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dx:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x23

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dy:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x24

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dz:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x25

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dA:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x26

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dB:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x27

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->cQ:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x28

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dC:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x29

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dD:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x2a

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dE:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x2b

    aput-object v1, v12, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dF:Lcom/freshchat/consumer/sdk/b/c;

    const/16 v2, 0x2c

    aput-object v1, v12, v2

    const/16 v1, 0x2d

    aput-object v0, v12, v1

    sput-object v12, Lcom/freshchat/consumer/sdk/b/c;->dJ:[Lcom/freshchat/consumer/sdk/b/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/b/c;->dI:I

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/b/c;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/b/c;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/b/c;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/b/c;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->dJ:[Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/b/c;

    return-object v0
.end method


# virtual methods
.method public final be()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/b/c;->dI:I

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/c;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/c;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (ErrorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/c;->be()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
