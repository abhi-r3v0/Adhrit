.class public final enum Lo/getDirection;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum AudioAttributesCompatParcelizer:Lo/getDirection;

.field private static final enum AudioAttributesImplApi21Parcelizer:Lo/getDirection;

.field private static final enum AudioAttributesImplBaseParcelizer:Lo/getDirection;

.field public static final enum ICustomTabsCallback:Lo/getDirection;

.field private static final enum ICustomTabsCallback$Stub:Lo/getDirection;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/getDirection;

.field private static final enum ICustomTabsService:Lo/getDirection;

.field private static final enum ICustomTabsService$Stub:Lo/getDirection;

.field private static final enum ICustomTabsService$Stub$Proxy:Lo/getDirection;

.field private static final enum INotificationSideChannel:Lo/getDirection;

.field private static final enum INotificationSideChannel$Default:Lo/getDirection;

.field private static final enum INotificationSideChannel$Stub:Lo/getDirection;

.field private static final enum INotificationSideChannel$Stub$Proxy:Lo/getDirection;

.field private static final enum IPostMessageService:Lo/getDirection;

.field private static final enum IPostMessageService$Stub:Lo/getDirection;

.field private static final enum IPostMessageService$Stub$Proxy:Lo/getDirection;

.field private static final enum IconCompatParcelizer:Lo/getDirection;

.field private static final enum MediaBrowserCompat:Lo/getDirection;

.field private static final MediaBrowserCompat$CallbackHandler:[Ljava/lang/reflect/Type;

.field private static final enum RemoteActionCompatParcelizer:Lo/getDirection;

.field private static final enum asBinder:Lo/getDirection;

.field private static final enum asInterface:Lo/getDirection;

.field private static final enum cancel:Lo/getDirection;

.field private static final enum cancelAll:Lo/getDirection;

.field private static final enum connect:Lo/getDirection;

.field private static final enum disconnect:Lo/getDirection;

.field private static final enum extraCallback:Lo/getDirection;

.field private static final enum extraCommand:Lo/getDirection;

.field private static final enum getDefaultImpl:Lo/getDirection;

.field private static final enum getExtras:Lo/getDirection;

.field private static final enum getInterfaceDescriptor:Lo/getDirection;

.field private static final synthetic getNotifyChildrenChangedOptions:[Lo/getDirection;

.field private static final enum getRoot:Lo/getDirection;

.field private static final enum getServiceComponent:Lo/getDirection;

.field private static final enum getSessionToken:Lo/getDirection;

.field private static final handleMessage:[Lo/getDirection;

.field private static final enum isConnected:Lo/getDirection;

.field private static final enum mayLaunchUrl:Lo/getDirection;

.field private static final enum newSession:Lo/getDirection;

.field private static final enum notify:Lo/getDirection;

.field private static final enum onMessageChannelReady:Lo/getDirection;

.field private static final enum onNavigationEvent:Lo/getDirection;

.field public static final enum onPostMessage:Lo/getDirection;

.field private static final enum onRelationshipValidationResult:Lo/getDirection;

.field private static final enum onTransact:Lo/getDirection;

.field private static final enum postMessage:Lo/getDirection;

.field private static final enum read:Lo/getDirection;

.field private static final enum requestPostMessageChannel:Lo/getDirection;

.field private static final enum sendCustomAction:Lo/getDirection;

.field private static final enum setDefaultImpl:Lo/getDirection;

.field private static final enum updateVisuals:Lo/getDirection;

.field private static final enum validateRelationship:Lo/getDirection;

.field private static final enum warmup:Lo/getDirection;

.field private static final enum write:Lo/getDirection;


# instance fields
.field private final getItem:Lo/clicked;

.field private final search:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final setCallbacksMessenger:Z

.field private final subscribe:I

.field private final unsubscribe:Lo/setDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 20
    new-instance v6, Lo/getDirection;

    sget-object v4, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v5, Lo/clicked;->onNavigationEvent:Lo/clicked;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v6, Lo/getDirection;->onMessageChannelReady:Lo/getDirection;

    .line 21
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v12, Lo/clicked;->extraCallback:Lo/clicked;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->onNavigationEvent:Lo/getDirection;

    .line 22
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v6, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->extraCallback:Lo/getDirection;

    .line 23
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v12, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->onTransact:Lo/getDirection;

    .line 24
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v6, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->asInterface:Lo/getDirection;

    .line 25
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v12, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->onRelationshipValidationResult:Lo/getDirection;

    .line 26
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v6, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->ICustomTabsCallback$Stub:Lo/getDirection;

    .line 27
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v12, Lo/clicked;->onRelationshipValidationResult:Lo/clicked;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->asBinder:Lo/getDirection;

    .line 28
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v6, Lo/clicked;->onTransact:Lo/clicked;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->warmup:Lo/getDirection;

    .line 29
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v12, Lo/clicked;->asInterface:Lo/clicked;

    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->newSession:Lo/getDirection;

    .line 30
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v6, Lo/clicked;->asBinder:Lo/clicked;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->getInterfaceDescriptor:Lo/getDirection;

    .line 31
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "UINT32"

    const/16 v9, 0xb

    const/16 v10, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->ICustomTabsCallback$Stub$Proxy:Lo/getDirection;

    .line 32
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v6, Lo/clicked;->ICustomTabsCallback$Stub:Lo/clicked;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->ICustomTabsService:Lo/getDirection;

    .line 33
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "SFIXED32"

    const/16 v9, 0xd

    const/16 v10, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->requestPostMessageChannel:Lo/getDirection;

    .line 34
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v6, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->mayLaunchUrl:Lo/getDirection;

    .line 35
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "SINT32"

    const/16 v9, 0xf

    const/16 v10, 0xf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->updateVisuals:Lo/getDirection;

    .line 36
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v6, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->postMessage:Lo/getDirection;

    .line 37
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    sget-object v12, Lo/clicked;->asInterface:Lo/clicked;

    const-string v8, "GROUP"

    const/16 v9, 0x11

    const/16 v10, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->extraCommand:Lo/getDirection;

    .line 38
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v6, Lo/clicked;->onNavigationEvent:Lo/clicked;

    const-string v2, "DOUBLE_LIST"

    const/16 v3, 0x12

    const/16 v4, 0x12

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->validateRelationship:Lo/getDirection;

    .line 39
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v12, Lo/clicked;->extraCallback:Lo/clicked;

    const-string v8, "FLOAT_LIST"

    const/16 v9, 0x13

    const/16 v10, 0x13

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->ICustomTabsService$Stub$Proxy:Lo/getDirection;

    .line 40
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v6, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->IPostMessageService:Lo/getDirection;

    .line 41
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v12, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v8, "UINT64_LIST"

    const/16 v9, 0x15

    const/16 v10, 0x15

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->IPostMessageService$Stub:Lo/getDirection;

    .line 42
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v6, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->ICustomTabsService$Stub:Lo/getDirection;

    .line 43
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v12, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v8, "FIXED64_LIST"

    const/16 v9, 0x17

    const/16 v10, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->cancel:Lo/getDirection;

    .line 44
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v6, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->cancelAll:Lo/getDirection;

    .line 45
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v12, Lo/clicked;->onRelationshipValidationResult:Lo/clicked;

    const-string v8, "BOOL_LIST"

    const/16 v9, 0x19

    const/16 v10, 0x19

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->notify:Lo/getDirection;

    .line 46
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v6, Lo/clicked;->onTransact:Lo/clicked;

    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->IPostMessageService$Stub$Proxy:Lo/getDirection;

    .line 47
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v12, Lo/clicked;->asInterface:Lo/clicked;

    const-string v8, "MESSAGE_LIST"

    const/16 v9, 0x1b

    const/16 v10, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->INotificationSideChannel:Lo/getDirection;

    .line 48
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v6, Lo/clicked;->asBinder:Lo/clicked;

    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->INotificationSideChannel$Stub:Lo/getDirection;

    .line 49
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "UINT32_LIST"

    const/16 v9, 0x1d

    const/16 v10, 0x1d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->setDefaultImpl:Lo/getDirection;

    .line 50
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v6, Lo/clicked;->ICustomTabsCallback$Stub:Lo/clicked;

    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->getDefaultImpl:Lo/getDirection;

    .line 51
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "SFIXED32_LIST"

    const/16 v9, 0x1f

    const/16 v10, 0x1f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->INotificationSideChannel$Default:Lo/getDirection;

    .line 52
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v6, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->INotificationSideChannel$Stub$Proxy:Lo/getDirection;

    .line 53
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "SINT32_LIST"

    const/16 v9, 0x21

    const/16 v10, 0x21

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->RemoteActionCompatParcelizer:Lo/getDirection;

    .line 54
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v6, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->AudioAttributesCompatParcelizer:Lo/getDirection;

    .line 55
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v12, Lo/clicked;->onNavigationEvent:Lo/clicked;

    const-string v8, "DOUBLE_LIST_PACKED"

    const/16 v9, 0x23

    const/16 v10, 0x23

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->onPostMessage:Lo/getDirection;

    .line 56
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v6, Lo/clicked;->extraCallback:Lo/clicked;

    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->read:Lo/getDirection;

    .line 57
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v12, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v8, "INT64_LIST_PACKED"

    const/16 v9, 0x25

    const/16 v10, 0x25

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->IconCompatParcelizer:Lo/getDirection;

    .line 58
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v6, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->write:Lo/getDirection;

    .line 59
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "INT32_LIST_PACKED"

    const/16 v9, 0x27

    const/16 v10, 0x27

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->AudioAttributesImplBaseParcelizer:Lo/getDirection;

    .line 60
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v6, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->AudioAttributesImplApi21Parcelizer:Lo/getDirection;

    .line 61
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "FIXED32_LIST_PACKED"

    const/16 v9, 0x29

    const/16 v10, 0x29

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->disconnect:Lo/getDirection;

    .line 62
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v6, Lo/clicked;->onRelationshipValidationResult:Lo/clicked;

    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->MediaBrowserCompat:Lo/getDirection;

    .line 63
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "UINT32_LIST_PACKED"

    const/16 v9, 0x2b

    const/16 v10, 0x2b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->connect:Lo/getDirection;

    .line 64
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v6, Lo/clicked;->ICustomTabsCallback$Stub:Lo/clicked;

    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->getServiceComponent:Lo/getDirection;

    .line 65
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "SFIXED32_LIST_PACKED"

    const/16 v9, 0x2d

    const/16 v10, 0x2d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->isConnected:Lo/getDirection;

    .line 66
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v6, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v2, "SFIXED64_LIST_PACKED"

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->getExtras:Lo/getDirection;

    .line 67
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v12, Lo/clicked;->onMessageChannelReady:Lo/clicked;

    const-string v8, "SINT32_LIST_PACKED"

    const/16 v9, 0x2f

    const/16 v10, 0x2f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->getSessionToken:Lo/getDirection;

    .line 68
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->ICustomTabsCallback:Lo/setDirection;

    sget-object v6, Lo/clicked;->onPostMessage:Lo/clicked;

    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->ICustomTabsCallback:Lo/getDirection;

    .line 69
    new-instance v0, Lo/getDirection;

    sget-object v11, Lo/setDirection;->onMessageChannelReady:Lo/setDirection;

    sget-object v12, Lo/clicked;->asInterface:Lo/clicked;

    const-string v8, "GROUP_LIST"

    const/16 v9, 0x31

    const/16 v10, 0x31

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->getRoot:Lo/getDirection;

    .line 70
    new-instance v0, Lo/getDirection;

    sget-object v5, Lo/setDirection;->onPostMessage:Lo/setDirection;

    sget-object v6, Lo/clicked;->ICustomTabsCallback:Lo/clicked;

    const-string v2, "MAP"

    const/16 v3, 0x32

    const/16 v4, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getDirection;-><init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V

    sput-object v0, Lo/getDirection;->sendCustomAction:Lo/getDirection;

    const/16 v1, 0x33

    new-array v1, v1, [Lo/getDirection;

    .line 71
    sget-object v2, Lo/getDirection;->onMessageChannelReady:Lo/getDirection;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/getDirection;->onNavigationEvent:Lo/getDirection;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->extraCallback:Lo/getDirection;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->onTransact:Lo/getDirection;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->asInterface:Lo/getDirection;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->onRelationshipValidationResult:Lo/getDirection;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->ICustomTabsCallback$Stub:Lo/getDirection;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->asBinder:Lo/getDirection;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->warmup:Lo/getDirection;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->newSession:Lo/getDirection;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->getInterfaceDescriptor:Lo/getDirection;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->ICustomTabsCallback$Stub$Proxy:Lo/getDirection;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->ICustomTabsService:Lo/getDirection;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->requestPostMessageChannel:Lo/getDirection;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->mayLaunchUrl:Lo/getDirection;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->updateVisuals:Lo/getDirection;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->postMessage:Lo/getDirection;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->extraCommand:Lo/getDirection;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->validateRelationship:Lo/getDirection;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->ICustomTabsService$Stub$Proxy:Lo/getDirection;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->IPostMessageService:Lo/getDirection;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->IPostMessageService$Stub:Lo/getDirection;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->ICustomTabsService$Stub:Lo/getDirection;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->cancel:Lo/getDirection;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->cancelAll:Lo/getDirection;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->notify:Lo/getDirection;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->IPostMessageService$Stub$Proxy:Lo/getDirection;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->INotificationSideChannel:Lo/getDirection;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->INotificationSideChannel$Stub:Lo/getDirection;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->setDefaultImpl:Lo/getDirection;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->getDefaultImpl:Lo/getDirection;

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->INotificationSideChannel$Default:Lo/getDirection;

    const/16 v4, 0x1f

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->INotificationSideChannel$Stub$Proxy:Lo/getDirection;

    const/16 v4, 0x20

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->RemoteActionCompatParcelizer:Lo/getDirection;

    const/16 v4, 0x21

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->AudioAttributesCompatParcelizer:Lo/getDirection;

    const/16 v4, 0x22

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->onPostMessage:Lo/getDirection;

    const/16 v4, 0x23

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->read:Lo/getDirection;

    const/16 v4, 0x24

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->IconCompatParcelizer:Lo/getDirection;

    const/16 v4, 0x25

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->write:Lo/getDirection;

    const/16 v4, 0x26

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->AudioAttributesImplBaseParcelizer:Lo/getDirection;

    const/16 v4, 0x27

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->AudioAttributesImplApi21Parcelizer:Lo/getDirection;

    const/16 v4, 0x28

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->disconnect:Lo/getDirection;

    const/16 v4, 0x29

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->MediaBrowserCompat:Lo/getDirection;

    const/16 v4, 0x2a

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->connect:Lo/getDirection;

    const/16 v4, 0x2b

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->getServiceComponent:Lo/getDirection;

    const/16 v4, 0x2c

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->isConnected:Lo/getDirection;

    const/16 v4, 0x2d

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->getExtras:Lo/getDirection;

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->getSessionToken:Lo/getDirection;

    const/16 v4, 0x2f

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->ICustomTabsCallback:Lo/getDirection;

    const/16 v4, 0x30

    aput-object v2, v1, v4

    sget-object v2, Lo/getDirection;->getRoot:Lo/getDirection;

    const/16 v4, 0x31

    aput-object v2, v1, v4

    const/16 v2, 0x32

    aput-object v0, v1, v2

    sput-object v1, Lo/getDirection;->getNotifyChildrenChangedOptions:[Lo/getDirection;

    new-array v0, v3, [Ljava/lang/reflect/Type;

    .line 72
    sput-object v0, Lo/getDirection;->MediaBrowserCompat$CallbackHandler:[Ljava/lang/reflect/Type;

    .line 73
    invoke-static {}, Lo/getDirection;->values()[Lo/getDirection;

    move-result-object v0

    .line 74
    array-length v1, v0

    new-array v1, v1, [Lo/getDirection;

    sput-object v1, Lo/getDirection;->handleMessage:[Lo/getDirection;

    .line 75
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 76
    sget-object v4, Lo/getDirection;->handleMessage:[Lo/getDirection;

    iget v5, v2, Lo/getDirection;->subscribe:I

    aput-object v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILo/setDirection;Lo/clicked;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/setDirection;",
            "Lo/clicked;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput p3, p0, Lo/getDirection;->subscribe:I

    .line 4
    iput-object p4, p0, Lo/getDirection;->unsubscribe:Lo/setDirection;

    .line 5
    iput-object p5, p0, Lo/getDirection;->getItem:Lo/clicked;

    .line 6
    sget-object p1, Lo/setDelivered;->onPostMessage:[I

    invoke-virtual {p4}, Lo/setDirection;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lo/getDirection;->search:Ljava/lang/Class;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p5}, Lo/clicked;->ICustomTabsCallback()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo/getDirection;->search:Ljava/lang/Class;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p5}, Lo/clicked;->ICustomTabsCallback()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo/getDirection;->search:Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x0

    .line 13
    sget-object v0, Lo/setDirection;->onNavigationEvent:Lo/setDirection;

    if-ne p4, v0, :cond_2

    .line 14
    sget-object p4, Lo/setDelivered;->onMessageChannelReady:[I

    invoke-virtual {p5}, Lo/clicked;->ordinal()I

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
    iput-boolean p3, p0, Lo/getDirection;->setCallbacksMessenger:Z

    return-void
.end method

.method public static values()[Lo/getDirection;
    .locals 1

    .line 1
    sget-object v0, Lo/getDirection;->getNotifyChildrenChangedOptions:[Lo/getDirection;

    invoke-virtual {v0}, [Lo/getDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getDirection;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    .line 19
    iget v0, p0, Lo/getDirection;->subscribe:I

    return v0
.end method
