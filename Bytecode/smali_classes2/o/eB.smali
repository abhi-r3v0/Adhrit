.class public final enum Lo/eB;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/eB;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum AudioAttributesCompatParcelizer:Lo/eB;

.field private static final enum AudioAttributesImplApi21Parcelizer:Lo/eB;

.field private static final enum AudioAttributesImplBaseParcelizer:Lo/eB;

.field public static final enum ICustomTabsCallback:Lo/eB;

.field private static final enum ICustomTabsCallback$Stub:Lo/eB;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/eB;

.field private static final enum ICustomTabsService:Lo/eB;

.field private static final enum ICustomTabsService$Stub:Lo/eB;

.field private static final enum ICustomTabsService$Stub$Proxy:Lo/eB;

.field private static final enum INotificationSideChannel:Lo/eB;

.field private static final enum INotificationSideChannel$Default:Lo/eB;

.field private static final enum INotificationSideChannel$Stub:Lo/eB;

.field private static final enum INotificationSideChannel$Stub$Proxy:Lo/eB;

.field private static final enum IPostMessageService:Lo/eB;

.field private static final enum IPostMessageService$Stub:Lo/eB;

.field private static final enum IPostMessageService$Stub$Proxy:Lo/eB;

.field private static final enum IconCompatParcelizer:Lo/eB;

.field private static final enum MediaBrowserCompat:Lo/eB;

.field private static final enum RemoteActionCompatParcelizer:Lo/eB;

.field private static final enum asBinder:Lo/eB;

.field private static final enum asInterface:Lo/eB;

.field private static final enum cancel:Lo/eB;

.field private static final enum cancelAll:Lo/eB;

.field private static final enum connect:Lo/eB;

.field private static final enum disconnect:Lo/eB;

.field private static final enum extraCallback:Lo/eB;

.field private static final enum extraCommand:Lo/eB;

.field private static final enum getDefaultImpl:Lo/eB;

.field private static final enum getExtras:Lo/eB;

.field private static final enum getInterfaceDescriptor:Lo/eB;

.field private static final synthetic getNotifyChildrenChangedOptions:[Lo/eB;

.field private static final enum getRoot:Lo/eB;

.field private static final enum getServiceComponent:Lo/eB;

.field private static final enum getSessionToken:Lo/eB;

.field private static final handleMessage:[Lo/eB;

.field private static final enum isConnected:Lo/eB;

.field private static final enum mayLaunchUrl:Lo/eB;

.field private static final enum newSession:Lo/eB;

.field private static final enum notify:Lo/eB;

.field public static final enum onMessageChannelReady:Lo/eB;

.field private static final enum onNavigationEvent:Lo/eB;

.field private static final enum onPostMessage:Lo/eB;

.field private static final enum onRelationshipValidationResult:Lo/eB;

.field private static final enum onTransact:Lo/eB;

.field private static final enum postMessage:Lo/eB;

.field private static final enum read:Lo/eB;

.field private static final enum requestPostMessageChannel:Lo/eB;

.field private static final setCallbacksMessenger:[Ljava/lang/reflect/Type;

.field private static final enum setDefaultImpl:Lo/eB;

.field private static final enum unsubscribe:Lo/eB;

.field private static final enum updateVisuals:Lo/eB;

.field private static final enum validateRelationship:Lo/eB;

.field private static final enum warmup:Lo/eB;

.field private static final enum write:Lo/eB;


# instance fields
.field private final MediaBrowserCompat$ConnectionCallback:Z

.field private final getItem:Lo/onCancel;

.field private final search:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final sendCustomAction:Lo/fT;

.field private final subscribe:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 20
    new-instance v6, Lo/eB;

    sget-object v4, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v5, Lo/onCancel;->extraCallback:Lo/onCancel;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v6, Lo/eB;->onNavigationEvent:Lo/eB;

    .line 21
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->onMessageChannelReady:Lo/onCancel;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->extraCallback:Lo/eB;

    .line 22
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->onPostMessage:Lo/eB;

    .line 23
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->asInterface:Lo/eB;

    .line 24
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->onRelationshipValidationResult:Lo/eB;

    .line 25
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->ICustomTabsCallback$Stub:Lo/eB;

    .line 26
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->asBinder:Lo/eB;

    .line 27
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->onTransact:Lo/onCancel;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->onTransact:Lo/eB;

    .line 28
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->onRelationshipValidationResult:Lo/onCancel;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->warmup:Lo/eB;

    .line 29
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->asBinder:Lo/onCancel;

    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->ICustomTabsCallback$Stub$Proxy:Lo/eB;

    .line 30
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->asInterface:Lo/onCancel;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->ICustomTabsService:Lo/eB;

    .line 31
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "UINT32"

    const/16 v9, 0xb

    const/16 v10, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->newSession:Lo/eB;

    .line 32
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback$Stub:Lo/onCancel;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->getInterfaceDescriptor:Lo/eB;

    .line 33
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "SFIXED32"

    const/16 v9, 0xd

    const/16 v10, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->mayLaunchUrl:Lo/eB;

    .line 34
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->extraCommand:Lo/eB;

    .line 35
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "SINT32"

    const/16 v9, 0xf

    const/16 v10, 0xf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->postMessage:Lo/eB;

    .line 36
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->requestPostMessageChannel:Lo/eB;

    .line 37
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->ICustomTabsCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->asBinder:Lo/onCancel;

    const-string v8, "GROUP"

    const/16 v9, 0x11

    const/16 v10, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->updateVisuals:Lo/eB;

    .line 38
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->extraCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->extraCallback:Lo/onCancel;

    const-string v2, "DOUBLE_LIST"

    const/16 v3, 0x12

    const/16 v4, 0x12

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->IPostMessageService:Lo/eB;

    .line 39
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->extraCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->onMessageChannelReady:Lo/onCancel;

    const-string v8, "FLOAT_LIST"

    const/16 v9, 0x13

    const/16 v10, 0x13

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->ICustomTabsService$Stub:Lo/eB;

    .line 40
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->extraCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->ICustomTabsService$Stub$Proxy:Lo/eB;

    .line 41
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->extraCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v8, "UINT64_LIST"

    const/16 v9, 0x15

    const/16 v10, 0x15

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->IPostMessageService$Stub:Lo/eB;

    .line 42
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->extraCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->validateRelationship:Lo/eB;

    .line 43
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->extraCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v8, "FIXED64_LIST"

    const/16 v9, 0x17

    const/16 v10, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->INotificationSideChannel:Lo/eB;

    .line 44
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->extraCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->cancel:Lo/eB;

    .line 45
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->extraCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->onTransact:Lo/onCancel;

    const-string v8, "BOOL_LIST"

    const/16 v9, 0x19

    const/16 v10, 0x19

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->notify:Lo/eB;

    .line 46
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->extraCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->onRelationshipValidationResult:Lo/onCancel;

    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->IPostMessageService$Stub$Proxy:Lo/eB;

    .line 47
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->extraCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->asBinder:Lo/onCancel;

    const-string v8, "MESSAGE_LIST"

    const/16 v9, 0x1b

    const/16 v10, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->cancelAll:Lo/eB;

    .line 48
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->extraCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->asInterface:Lo/onCancel;

    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->INotificationSideChannel$Stub:Lo/eB;

    .line 49
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->extraCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "UINT32_LIST"

    const/16 v9, 0x1d

    const/16 v10, 0x1d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->setDefaultImpl:Lo/eB;

    .line 50
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->extraCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback$Stub:Lo/onCancel;

    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->INotificationSideChannel$Default:Lo/eB;

    .line 51
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->extraCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "SFIXED32_LIST"

    const/16 v9, 0x1f

    const/16 v10, 0x1f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->getDefaultImpl:Lo/eB;

    .line 52
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->extraCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->INotificationSideChannel$Stub$Proxy:Lo/eB;

    .line 53
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->extraCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "SINT32_LIST"

    const/16 v9, 0x21

    const/16 v10, 0x21

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->RemoteActionCompatParcelizer:Lo/eB;

    .line 54
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->extraCallback:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->read:Lo/eB;

    .line 55
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v12, Lo/onCancel;->extraCallback:Lo/onCancel;

    const-string v8, "DOUBLE_LIST_PACKED"

    const/16 v9, 0x23

    const/16 v10, 0x23

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->onMessageChannelReady:Lo/eB;

    .line 56
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v6, Lo/onCancel;->onMessageChannelReady:Lo/onCancel;

    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->AudioAttributesCompatParcelizer:Lo/eB;

    .line 57
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v12, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v8, "INT64_LIST_PACKED"

    const/16 v9, 0x25

    const/16 v10, 0x25

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->write:Lo/eB;

    .line 58
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->IconCompatParcelizer:Lo/eB;

    .line 59
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "INT32_LIST_PACKED"

    const/16 v9, 0x27

    const/16 v10, 0x27

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->AudioAttributesImplApi21Parcelizer:Lo/eB;

    .line 60
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->disconnect:Lo/eB;

    .line 61
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "FIXED32_LIST_PACKED"

    const/16 v9, 0x29

    const/16 v10, 0x29

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->MediaBrowserCompat:Lo/eB;

    .line 62
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v6, Lo/onCancel;->onTransact:Lo/onCancel;

    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->connect:Lo/eB;

    .line 63
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "UINT32_LIST_PACKED"

    const/16 v9, 0x2b

    const/16 v10, 0x2b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->AudioAttributesImplBaseParcelizer:Lo/eB;

    .line 64
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback$Stub:Lo/onCancel;

    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->getServiceComponent:Lo/eB;

    .line 65
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "SFIXED32_LIST_PACKED"

    const/16 v9, 0x2d

    const/16 v10, 0x2d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->getRoot:Lo/eB;

    .line 66
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v2, "SFIXED64_LIST_PACKED"

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->getSessionToken:Lo/eB;

    .line 67
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v12, Lo/onCancel;->onNavigationEvent:Lo/onCancel;

    const-string v8, "SINT32_LIST_PACKED"

    const/16 v9, 0x2f

    const/16 v10, 0x2f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->isConnected:Lo/eB;

    .line 68
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->onPostMessage:Lo/fT;

    sget-object v6, Lo/onCancel;->ICustomTabsCallback:Lo/onCancel;

    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->ICustomTabsCallback:Lo/eB;

    .line 69
    new-instance v0, Lo/eB;

    sget-object v11, Lo/fT;->extraCallback:Lo/fT;

    sget-object v12, Lo/onCancel;->asBinder:Lo/onCancel;

    const-string v8, "GROUP_LIST"

    const/16 v9, 0x31

    const/16 v10, 0x31

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->getExtras:Lo/eB;

    .line 70
    new-instance v0, Lo/eB;

    sget-object v5, Lo/fT;->onMessageChannelReady:Lo/fT;

    sget-object v6, Lo/onCancel;->onPostMessage:Lo/onCancel;

    const-string v2, "MAP"

    const/16 v3, 0x32

    const/16 v4, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/eB;-><init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V

    sput-object v0, Lo/eB;->unsubscribe:Lo/eB;

    const/16 v1, 0x33

    new-array v1, v1, [Lo/eB;

    .line 71
    sget-object v2, Lo/eB;->onNavigationEvent:Lo/eB;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/eB;->extraCallback:Lo/eB;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->onPostMessage:Lo/eB;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->asInterface:Lo/eB;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->onRelationshipValidationResult:Lo/eB;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->ICustomTabsCallback$Stub:Lo/eB;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->asBinder:Lo/eB;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->onTransact:Lo/eB;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->warmup:Lo/eB;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->ICustomTabsCallback$Stub$Proxy:Lo/eB;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->ICustomTabsService:Lo/eB;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->newSession:Lo/eB;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->getInterfaceDescriptor:Lo/eB;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->mayLaunchUrl:Lo/eB;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->extraCommand:Lo/eB;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->postMessage:Lo/eB;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->requestPostMessageChannel:Lo/eB;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->updateVisuals:Lo/eB;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->IPostMessageService:Lo/eB;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->ICustomTabsService$Stub:Lo/eB;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->ICustomTabsService$Stub$Proxy:Lo/eB;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->IPostMessageService$Stub:Lo/eB;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->validateRelationship:Lo/eB;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->INotificationSideChannel:Lo/eB;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->cancel:Lo/eB;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->notify:Lo/eB;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->IPostMessageService$Stub$Proxy:Lo/eB;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->cancelAll:Lo/eB;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->INotificationSideChannel$Stub:Lo/eB;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->setDefaultImpl:Lo/eB;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->INotificationSideChannel$Default:Lo/eB;

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->getDefaultImpl:Lo/eB;

    const/16 v4, 0x1f

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->INotificationSideChannel$Stub$Proxy:Lo/eB;

    const/16 v4, 0x20

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->RemoteActionCompatParcelizer:Lo/eB;

    const/16 v4, 0x21

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->read:Lo/eB;

    const/16 v4, 0x22

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->onMessageChannelReady:Lo/eB;

    const/16 v4, 0x23

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->AudioAttributesCompatParcelizer:Lo/eB;

    const/16 v4, 0x24

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->write:Lo/eB;

    const/16 v4, 0x25

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->IconCompatParcelizer:Lo/eB;

    const/16 v4, 0x26

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->AudioAttributesImplApi21Parcelizer:Lo/eB;

    const/16 v4, 0x27

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->disconnect:Lo/eB;

    const/16 v4, 0x28

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->MediaBrowserCompat:Lo/eB;

    const/16 v4, 0x29

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->connect:Lo/eB;

    const/16 v4, 0x2a

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->AudioAttributesImplBaseParcelizer:Lo/eB;

    const/16 v4, 0x2b

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->getServiceComponent:Lo/eB;

    const/16 v4, 0x2c

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->getRoot:Lo/eB;

    const/16 v4, 0x2d

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->getSessionToken:Lo/eB;

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->isConnected:Lo/eB;

    const/16 v4, 0x2f

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->ICustomTabsCallback:Lo/eB;

    const/16 v4, 0x30

    aput-object v2, v1, v4

    sget-object v2, Lo/eB;->getExtras:Lo/eB;

    const/16 v4, 0x31

    aput-object v2, v1, v4

    const/16 v2, 0x32

    aput-object v0, v1, v2

    sput-object v1, Lo/eB;->getNotifyChildrenChangedOptions:[Lo/eB;

    new-array v0, v3, [Ljava/lang/reflect/Type;

    .line 72
    sput-object v0, Lo/eB;->setCallbacksMessenger:[Ljava/lang/reflect/Type;

    .line 73
    invoke-static {}, Lo/eB;->values()[Lo/eB;

    move-result-object v0

    .line 74
    array-length v1, v0

    new-array v1, v1, [Lo/eB;

    sput-object v1, Lo/eB;->handleMessage:[Lo/eB;

    .line 75
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 76
    sget-object v4, Lo/eB;->handleMessage:[Lo/eB;

    iget v5, v2, Lo/eB;->subscribe:I

    aput-object v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILo/fT;Lo/onCancel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/fT;",
            "Lo/onCancel;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput p3, p0, Lo/eB;->subscribe:I

    .line 4
    iput-object p4, p0, Lo/eB;->sendCustomAction:Lo/fT;

    .line 5
    iput-object p5, p0, Lo/eB;->getItem:Lo/onCancel;

    .line 6
    sget-object p1, Lo/as;->onMessageChannelReady:[I

    invoke-virtual {p4}, Lo/fT;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lo/eB;->search:Ljava/lang/Class;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p5}, Lo/onCancel;->onNavigationEvent()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo/eB;->search:Ljava/lang/Class;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p5}, Lo/onCancel;->onNavigationEvent()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo/eB;->search:Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x0

    .line 13
    sget-object v0, Lo/fT;->ICustomTabsCallback:Lo/fT;

    if-ne p4, v0, :cond_2

    .line 14
    sget-object p4, Lo/as;->onNavigationEvent:[I

    invoke-virtual {p5}, Lo/onCancel;->ordinal()I

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
    iput-boolean p3, p0, Lo/eB;->MediaBrowserCompat$ConnectionCallback:Z

    return-void
.end method

.method public static values()[Lo/eB;
    .locals 1

    .line 1
    sget-object v0, Lo/eB;->getNotifyChildrenChangedOptions:[Lo/eB;

    invoke-virtual {v0}, [Lo/eB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/eB;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    .line 19
    iget v0, p0, Lo/eB;->subscribe:I

    return v0
.end method
