.class public final enum Lo/eS;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/eS;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum AudioAttributesCompatParcelizer:Lo/eS;

.field private static final enum AudioAttributesImplApi21Parcelizer:Lo/eS;

.field private static final enum AudioAttributesImplBaseParcelizer:Lo/eS;

.field public static final enum ICustomTabsCallback:Lo/eS;

.field private static final enum ICustomTabsCallback$Stub:Lo/eS;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/eS;

.field private static final enum ICustomTabsService:Lo/eS;

.field private static final enum ICustomTabsService$Stub:Lo/eS;

.field private static final enum ICustomTabsService$Stub$Proxy:Lo/eS;

.field private static final enum INotificationSideChannel:Lo/eS;

.field private static final enum INotificationSideChannel$Default:Lo/eS;

.field private static final enum INotificationSideChannel$Stub:Lo/eS;

.field private static final enum INotificationSideChannel$Stub$Proxy:Lo/eS;

.field private static final enum IPostMessageService:Lo/eS;

.field private static final enum IPostMessageService$Stub:Lo/eS;

.field private static final enum IPostMessageService$Stub$Proxy:Lo/eS;

.field private static final enum IconCompatParcelizer:Lo/eS;

.field private static final enum MediaBrowserCompat:Lo/eS;

.field private static final MediaBrowserCompat$CallbackHandler:[Lo/eS;

.field private static final enum RemoteActionCompatParcelizer:Lo/eS;

.field private static final enum asBinder:Lo/eS;

.field private static final enum asInterface:Lo/eS;

.field private static final enum cancel:Lo/eS;

.field private static final enum cancelAll:Lo/eS;

.field private static final enum connect:Lo/eS;

.field private static final enum disconnect:Lo/eS;

.field private static final enum extraCallback:Lo/eS;

.field private static final enum extraCommand:Lo/eS;

.field private static final enum getDefaultImpl:Lo/eS;

.field private static final enum getExtras:Lo/eS;

.field private static final enum getInterfaceDescriptor:Lo/eS;

.field private static final synthetic getNotifyChildrenChangedOptions:[Lo/eS;

.field private static final enum getRoot:Lo/eS;

.field private static final enum getServiceComponent:Lo/eS;

.field private static final enum getSessionToken:Lo/eS;

.field private static final enum isConnected:Lo/eS;

.field private static final enum mayLaunchUrl:Lo/eS;

.field private static final enum newSession:Lo/eS;

.field private static final enum notify:Lo/eS;

.field private static final enum onMessageChannelReady:Lo/eS;

.field private static final enum onNavigationEvent:Lo/eS;

.field public static final enum onPostMessage:Lo/eS;

.field private static final enum onRelationshipValidationResult:Lo/eS;

.field private static final enum onTransact:Lo/eS;

.field private static final enum postMessage:Lo/eS;

.field private static final enum read:Lo/eS;

.field private static final enum requestPostMessageChannel:Lo/eS;

.field private static final setCallbacksMessenger:[Ljava/lang/reflect/Type;

.field private static final enum setDefaultImpl:Lo/eS;

.field private static final enum subscribe:Lo/eS;

.field private static final enum updateVisuals:Lo/eS;

.field private static final enum validateRelationship:Lo/eS;

.field private static final enum warmup:Lo/eS;

.field private static final enum write:Lo/eS;


# instance fields
.field private final getItem:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final handleMessage:Z

.field private final search:Lo/az$c;

.field private final sendCustomAction:I

.field private final unsubscribe:Lo/eR;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 20
    new-instance v6, Lo/eS;

    sget-object v4, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v5, Lo/az$c;->ICustomTabsCallback:Lo/az$c;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v6, Lo/eS;->onNavigationEvent:Lo/eS;

    .line 21
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v12, Lo/az$c;->onMessageChannelReady:Lo/az$c;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->extraCallback:Lo/eS;

    .line 22
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v6, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->onMessageChannelReady:Lo/eS;

    .line 23
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v12, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->asBinder:Lo/eS;

    .line 24
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v6, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->onTransact:Lo/eS;

    .line 25
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v12, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->onRelationshipValidationResult:Lo/eS;

    .line 26
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v6, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->asInterface:Lo/eS;

    .line 27
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v12, Lo/az$c;->onRelationshipValidationResult:Lo/az$c;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->ICustomTabsCallback$Stub:Lo/eS;

    .line 28
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v6, Lo/az$c;->asInterface:Lo/az$c;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->ICustomTabsCallback$Stub$Proxy:Lo/eS;

    .line 29
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v12, Lo/az$c;->ICustomTabsCallback$Stub:Lo/az$c;

    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->ICustomTabsService:Lo/eS;

    .line 30
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v6, Lo/az$c;->onTransact:Lo/az$c;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->newSession:Lo/eS;

    .line 31
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "UINT32"

    const/16 v9, 0xb

    const/16 v10, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->warmup:Lo/eS;

    .line 32
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v6, Lo/az$c;->asBinder:Lo/az$c;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->getInterfaceDescriptor:Lo/eS;

    .line 33
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "SFIXED32"

    const/16 v9, 0xd

    const/16 v10, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->postMessage:Lo/eS;

    .line 34
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v6, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->extraCommand:Lo/eS;

    .line 35
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "SINT32"

    const/16 v9, 0xf

    const/16 v10, 0xf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->mayLaunchUrl:Lo/eS;

    .line 36
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v6, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->updateVisuals:Lo/eS;

    .line 37
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->ICustomTabsCallback:Lo/eR;

    sget-object v12, Lo/az$c;->ICustomTabsCallback$Stub:Lo/az$c;

    const-string v8, "GROUP"

    const/16 v9, 0x11

    const/16 v10, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->requestPostMessageChannel:Lo/eS;

    .line 38
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v6, Lo/az$c;->ICustomTabsCallback:Lo/az$c;

    const-string v2, "DOUBLE_LIST"

    const/16 v3, 0x12

    const/16 v4, 0x12

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->ICustomTabsService$Stub:Lo/eS;

    .line 39
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v12, Lo/az$c;->onMessageChannelReady:Lo/az$c;

    const-string v8, "FLOAT_LIST"

    const/16 v9, 0x13

    const/16 v10, 0x13

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->ICustomTabsService$Stub$Proxy:Lo/eS;

    .line 40
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v6, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->IPostMessageService$Stub:Lo/eS;

    .line 41
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v12, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v8, "UINT64_LIST"

    const/16 v9, 0x15

    const/16 v10, 0x15

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->IPostMessageService:Lo/eS;

    .line 42
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v6, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->validateRelationship:Lo/eS;

    .line 43
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v12, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v8, "FIXED64_LIST"

    const/16 v9, 0x17

    const/16 v10, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->INotificationSideChannel:Lo/eS;

    .line 44
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v6, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->IPostMessageService$Stub$Proxy:Lo/eS;

    .line 45
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v12, Lo/az$c;->onRelationshipValidationResult:Lo/az$c;

    const-string v8, "BOOL_LIST"

    const/16 v9, 0x19

    const/16 v10, 0x19

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->notify:Lo/eS;

    .line 46
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v6, Lo/az$c;->asInterface:Lo/az$c;

    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->cancel:Lo/eS;

    .line 47
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v12, Lo/az$c;->ICustomTabsCallback$Stub:Lo/az$c;

    const-string v8, "MESSAGE_LIST"

    const/16 v9, 0x1b

    const/16 v10, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->cancelAll:Lo/eS;

    .line 48
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v6, Lo/az$c;->onTransact:Lo/az$c;

    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->setDefaultImpl:Lo/eS;

    .line 49
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "UINT32_LIST"

    const/16 v9, 0x1d

    const/16 v10, 0x1d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->getDefaultImpl:Lo/eS;

    .line 50
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v6, Lo/az$c;->asBinder:Lo/az$c;

    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->INotificationSideChannel$Stub:Lo/eS;

    .line 51
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "SFIXED32_LIST"

    const/16 v9, 0x1f

    const/16 v10, 0x1f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->INotificationSideChannel$Stub$Proxy:Lo/eS;

    .line 52
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v6, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->INotificationSideChannel$Default:Lo/eS;

    .line 53
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "SINT32_LIST"

    const/16 v9, 0x21

    const/16 v10, 0x21

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->read:Lo/eS;

    .line 54
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v6, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->AudioAttributesCompatParcelizer:Lo/eS;

    .line 55
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v12, Lo/az$c;->ICustomTabsCallback:Lo/az$c;

    const-string v8, "DOUBLE_LIST_PACKED"

    const/16 v9, 0x23

    const/16 v10, 0x23

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->onPostMessage:Lo/eS;

    .line 56
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v6, Lo/az$c;->onMessageChannelReady:Lo/az$c;

    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->RemoteActionCompatParcelizer:Lo/eS;

    .line 57
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v12, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v8, "INT64_LIST_PACKED"

    const/16 v9, 0x25

    const/16 v10, 0x25

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->write:Lo/eS;

    .line 58
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v6, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->IconCompatParcelizer:Lo/eS;

    .line 59
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "INT32_LIST_PACKED"

    const/16 v9, 0x27

    const/16 v10, 0x27

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->AudioAttributesImplApi21Parcelizer:Lo/eS;

    .line 60
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v6, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->disconnect:Lo/eS;

    .line 61
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "FIXED32_LIST_PACKED"

    const/16 v9, 0x29

    const/16 v10, 0x29

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->connect:Lo/eS;

    .line 62
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v6, Lo/az$c;->onRelationshipValidationResult:Lo/az$c;

    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->AudioAttributesImplBaseParcelizer:Lo/eS;

    .line 63
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "UINT32_LIST_PACKED"

    const/16 v9, 0x2b

    const/16 v10, 0x2b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->MediaBrowserCompat:Lo/eS;

    .line 64
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v6, Lo/az$c;->asBinder:Lo/az$c;

    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->getServiceComponent:Lo/eS;

    .line 65
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "SFIXED32_LIST_PACKED"

    const/16 v9, 0x2d

    const/16 v10, 0x2d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->isConnected:Lo/eS;

    .line 66
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v6, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v2, "SFIXED64_LIST_PACKED"

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->getSessionToken:Lo/eS;

    .line 67
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v12, Lo/az$c;->onNavigationEvent:Lo/az$c;

    const-string v8, "SINT32_LIST_PACKED"

    const/16 v9, 0x2f

    const/16 v10, 0x2f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->getExtras:Lo/eS;

    .line 68
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onNavigationEvent:Lo/eR;

    sget-object v6, Lo/az$c;->onPostMessage:Lo/az$c;

    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->ICustomTabsCallback:Lo/eS;

    .line 69
    new-instance v0, Lo/eS;

    sget-object v11, Lo/eR;->onPostMessage:Lo/eR;

    sget-object v12, Lo/az$c;->ICustomTabsCallback$Stub:Lo/az$c;

    const-string v8, "GROUP_LIST"

    const/16 v9, 0x31

    const/16 v10, 0x31

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->getRoot:Lo/eS;

    .line 70
    new-instance v0, Lo/eS;

    sget-object v5, Lo/eR;->onMessageChannelReady:Lo/eR;

    sget-object v6, Lo/az$c;->extraCallback:Lo/az$c;

    const-string v2, "MAP"

    const/16 v3, 0x32

    const/16 v4, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eS;-><init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V

    sput-object v0, Lo/eS;->subscribe:Lo/eS;

    const/16 v1, 0x33

    new-array v1, v1, [Lo/eS;

    .line 71
    sget-object v2, Lo/eS;->onNavigationEvent:Lo/eS;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/eS;->extraCallback:Lo/eS;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->onMessageChannelReady:Lo/eS;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->asBinder:Lo/eS;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->onTransact:Lo/eS;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->onRelationshipValidationResult:Lo/eS;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->asInterface:Lo/eS;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->ICustomTabsCallback$Stub:Lo/eS;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->ICustomTabsCallback$Stub$Proxy:Lo/eS;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->ICustomTabsService:Lo/eS;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->newSession:Lo/eS;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->warmup:Lo/eS;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->getInterfaceDescriptor:Lo/eS;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->postMessage:Lo/eS;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->extraCommand:Lo/eS;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->mayLaunchUrl:Lo/eS;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->updateVisuals:Lo/eS;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->requestPostMessageChannel:Lo/eS;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->ICustomTabsService$Stub:Lo/eS;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->ICustomTabsService$Stub$Proxy:Lo/eS;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->IPostMessageService$Stub:Lo/eS;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->IPostMessageService:Lo/eS;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->validateRelationship:Lo/eS;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->INotificationSideChannel:Lo/eS;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->IPostMessageService$Stub$Proxy:Lo/eS;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->notify:Lo/eS;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->cancel:Lo/eS;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->cancelAll:Lo/eS;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->setDefaultImpl:Lo/eS;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->getDefaultImpl:Lo/eS;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->INotificationSideChannel$Stub:Lo/eS;

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->INotificationSideChannel$Stub$Proxy:Lo/eS;

    const/16 v4, 0x1f

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->INotificationSideChannel$Default:Lo/eS;

    const/16 v4, 0x20

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->read:Lo/eS;

    const/16 v4, 0x21

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->AudioAttributesCompatParcelizer:Lo/eS;

    const/16 v4, 0x22

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->onPostMessage:Lo/eS;

    const/16 v4, 0x23

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->RemoteActionCompatParcelizer:Lo/eS;

    const/16 v4, 0x24

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->write:Lo/eS;

    const/16 v4, 0x25

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->IconCompatParcelizer:Lo/eS;

    const/16 v4, 0x26

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->AudioAttributesImplApi21Parcelizer:Lo/eS;

    const/16 v4, 0x27

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->disconnect:Lo/eS;

    const/16 v4, 0x28

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->connect:Lo/eS;

    const/16 v4, 0x29

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->AudioAttributesImplBaseParcelizer:Lo/eS;

    const/16 v4, 0x2a

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->MediaBrowserCompat:Lo/eS;

    const/16 v4, 0x2b

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->getServiceComponent:Lo/eS;

    const/16 v4, 0x2c

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->isConnected:Lo/eS;

    const/16 v4, 0x2d

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->getSessionToken:Lo/eS;

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->getExtras:Lo/eS;

    const/16 v4, 0x2f

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->ICustomTabsCallback:Lo/eS;

    const/16 v4, 0x30

    aput-object v2, v1, v4

    sget-object v2, Lo/eS;->getRoot:Lo/eS;

    const/16 v4, 0x31

    aput-object v2, v1, v4

    const/16 v2, 0x32

    aput-object v0, v1, v2

    sput-object v1, Lo/eS;->getNotifyChildrenChangedOptions:[Lo/eS;

    new-array v0, v3, [Ljava/lang/reflect/Type;

    .line 72
    sput-object v0, Lo/eS;->setCallbacksMessenger:[Ljava/lang/reflect/Type;

    .line 73
    invoke-static {}, Lo/eS;->values()[Lo/eS;

    move-result-object v0

    .line 74
    array-length v1, v0

    new-array v1, v1, [Lo/eS;

    sput-object v1, Lo/eS;->MediaBrowserCompat$CallbackHandler:[Lo/eS;

    .line 75
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 76
    sget-object v4, Lo/eS;->MediaBrowserCompat$CallbackHandler:[Lo/eS;

    iget v5, v2, Lo/eS;->sendCustomAction:I

    aput-object v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILo/eR;Lo/az$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/eR;",
            "Lo/az$c;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput p3, p0, Lo/eS;->sendCustomAction:I

    .line 4
    iput-object p4, p0, Lo/eS;->unsubscribe:Lo/eR;

    .line 5
    iput-object p5, p0, Lo/eS;->search:Lo/az$c;

    .line 6
    sget-object p1, Lo/eY;->onMessageChannelReady:[I

    invoke-virtual {p4}, Lo/eR;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lo/eS;->getItem:Ljava/lang/Class;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p5}, Lo/az$c;->onNavigationEvent()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo/eS;->getItem:Ljava/lang/Class;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p5}, Lo/az$c;->onNavigationEvent()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo/eS;->getItem:Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x0

    .line 13
    sget-object v0, Lo/eR;->ICustomTabsCallback:Lo/eR;

    if-ne p4, v0, :cond_2

    .line 14
    sget-object p4, Lo/eY;->extraCallback:[I

    invoke-virtual {p5}, Lo/az$c;->ordinal()I

    move-result p5

    aget p4, p4, p5

    if-eq p4, p3, :cond_2

    if-eq p4, p2, :cond_2

    const/4 p2, 0x3

    if-eq p4, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 17
    :goto_1
    iput-boolean p3, p0, Lo/eS;->handleMessage:Z

    return-void
.end method

.method public static values()[Lo/eS;
    .locals 1

    .line 1
    sget-object v0, Lo/eS;->getNotifyChildrenChangedOptions:[Lo/eS;

    invoke-virtual {v0}, [Lo/eS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/eS;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 19
    iget v0, p0, Lo/eS;->sendCustomAction:I

    return v0
.end method
