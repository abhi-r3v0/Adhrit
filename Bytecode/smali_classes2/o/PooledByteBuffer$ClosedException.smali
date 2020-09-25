.class public final enum Lo/PooledByteBuffer$ClosedException;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/PooledByteBuffer$ClosedException;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum AudioAttributesCompatParcelizer:Lo/PooledByteBuffer$ClosedException;

.field private static final enum AudioAttributesImplApi21Parcelizer:Lo/PooledByteBuffer$ClosedException;

.field private static final enum AudioAttributesImplBaseParcelizer:Lo/PooledByteBuffer$ClosedException;

.field public static final enum ICustomTabsCallback:Lo/PooledByteBuffer$ClosedException;

.field public static final enum ICustomTabsCallback$Stub:Lo/PooledByteBuffer$ClosedException;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

.field private static final enum ICustomTabsService:Lo/PooledByteBuffer$ClosedException;

.field private static final enum ICustomTabsService$Stub:Lo/PooledByteBuffer$ClosedException;

.field private static final enum ICustomTabsService$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

.field private static final enum INotificationSideChannel:Lo/PooledByteBuffer$ClosedException;

.field private static final enum INotificationSideChannel$Default:Lo/PooledByteBuffer$ClosedException;

.field private static final enum INotificationSideChannel$Stub:Lo/PooledByteBuffer$ClosedException;

.field private static final enum INotificationSideChannel$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

.field private static final enum IPostMessageService:Lo/PooledByteBuffer$ClosedException;

.field private static final enum IPostMessageService$Stub:Lo/PooledByteBuffer$ClosedException;

.field private static final enum IPostMessageService$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

.field private static final enum IconCompatParcelizer:Lo/PooledByteBuffer$ClosedException;

.field private static final enum MediaBrowserCompat:Lo/PooledByteBuffer$ClosedException;

.field private static final synthetic MediaBrowserCompat$CallbackHandler:[Lo/PooledByteBuffer$ClosedException;

.field private static final enum RemoteActionCompatParcelizer:Lo/PooledByteBuffer$ClosedException;

.field public static final enum asBinder:Lo/PooledByteBuffer$ClosedException;

.field public static final enum asInterface:Lo/PooledByteBuffer$ClosedException;

.field private static final enum cancel:Lo/PooledByteBuffer$ClosedException;

.field private static final enum cancelAll:Lo/PooledByteBuffer$ClosedException;

.field private static final enum connect:Lo/PooledByteBuffer$ClosedException;

.field private static final enum disconnect:Lo/PooledByteBuffer$ClosedException;

.field public static final enum extraCallback:Lo/PooledByteBuffer$ClosedException;

.field private static final enum extraCommand:Lo/PooledByteBuffer$ClosedException;

.field private static final enum getDefaultImpl:Lo/PooledByteBuffer$ClosedException;

.field private static final enum getExtras:Lo/PooledByteBuffer$ClosedException;

.field private static final enum getInterfaceDescriptor:Lo/PooledByteBuffer$ClosedException;

.field private static final enum getRoot:Lo/PooledByteBuffer$ClosedException;

.field private static final enum getServiceComponent:Lo/PooledByteBuffer$ClosedException;

.field private static final enum getSessionToken:Lo/PooledByteBuffer$ClosedException;

.field private static final handleMessage:[Ljava/lang/reflect/Type;

.field private static final enum isConnected:Lo/PooledByteBuffer$ClosedException;

.field private static final enum mayLaunchUrl:Lo/PooledByteBuffer$ClosedException;

.field private static final enum newSession:Lo/PooledByteBuffer$ClosedException;

.field private static final enum notify:Lo/PooledByteBuffer$ClosedException;

.field public static final enum onMessageChannelReady:Lo/PooledByteBuffer$ClosedException;

.field public static final enum onNavigationEvent:Lo/PooledByteBuffer$ClosedException;

.field public static final enum onPostMessage:Lo/PooledByteBuffer$ClosedException;

.field public static final enum onRelationshipValidationResult:Lo/PooledByteBuffer$ClosedException;

.field public static final enum onTransact:Lo/PooledByteBuffer$ClosedException;

.field private static final enum postMessage:Lo/PooledByteBuffer$ClosedException;

.field private static final enum read:Lo/PooledByteBuffer$ClosedException;

.field private static final enum requestPostMessageChannel:Lo/PooledByteBuffer$ClosedException;

.field private static final enum sendCustomAction:Lo/PooledByteBuffer$ClosedException;

.field private static final setCallbacksMessenger:[Lo/PooledByteBuffer$ClosedException;

.field private static final enum setDefaultImpl:Lo/PooledByteBuffer$ClosedException;

.field private static final enum updateVisuals:Lo/PooledByteBuffer$ClosedException;

.field private static final enum validateRelationship:Lo/PooledByteBuffer$ClosedException;

.field public static final enum warmup:Lo/PooledByteBuffer$ClosedException;

.field private static final enum write:Lo/PooledByteBuffer$ClosedException;


# instance fields
.field private final MediaBrowserCompat$ConnectionCallback:Z

.field private final getItem:Lo/onComplete;

.field private final search:Lo/newCursor;

.field private final subscribe:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final unsubscribe:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lo/PooledByteBuffer$ClosedException;

    sget-object v4, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v5, Lo/newCursor;->onMessageChannelReady:Lo/newCursor;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v6, Lo/PooledByteBuffer$ClosedException;->ICustomTabsService:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v12, Lo/newCursor;->ICustomTabsCallback:Lo/newCursor;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->newSession:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->ICustomTabsCallback$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->getInterfaceDescriptor:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->updateVisuals:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->requestPostMessageChannel:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->extraCommand:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v12, Lo/newCursor;->asBinder:Lo/newCursor;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->postMessage:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v6, Lo/newCursor;->asInterface:Lo/newCursor;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->mayLaunchUrl:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onTransact:Lo/newCursor;

    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->onNavigationEvent:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v6, Lo/newCursor;->ICustomTabsCallback$Stub:Lo/newCursor;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->IPostMessageService:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "UINT32"

    const/16 v9, 0xb

    const/16 v10, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->IPostMessageService$Stub:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onRelationshipValidationResult:Lo/newCursor;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->extraCallback:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "SFIXED32"

    const/16 v9, 0xd

    const/16 v10, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->ICustomTabsService$Stub:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->validateRelationship:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "SINT32"

    const/16 v9, 0xf

    const/16 v10, 0xf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->ICustomTabsService$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->cancel:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onTransact:Lo/newCursor;

    const-string v8, "GROUP"

    const/16 v9, 0x11

    const/16 v10, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->ICustomTabsCallback:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onMessageChannelReady:Lo/newCursor;

    const-string v2, "DOUBLE_LIST"

    const/16 v3, 0x12

    const/16 v4, 0x12

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->onMessageChannelReady:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v12, Lo/newCursor;->ICustomTabsCallback:Lo/newCursor;

    const-string v8, "FLOAT_LIST"

    const/16 v9, 0x13

    const/16 v10, 0x13

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->notify:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->INotificationSideChannel:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v8, "UINT64_LIST"

    const/16 v9, 0x15

    const/16 v10, 0x15

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->IPostMessageService$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->cancelAll:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v8, "FIXED64_LIST"

    const/16 v9, 0x17

    const/16 v10, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->getDefaultImpl:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->setDefaultImpl:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v12, Lo/newCursor;->asBinder:Lo/newCursor;

    const-string v8, "BOOL_LIST"

    const/16 v9, 0x19

    const/16 v10, 0x19

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->INotificationSideChannel$Stub:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v6, Lo/newCursor;->asInterface:Lo/newCursor;

    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->INotificationSideChannel$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onTransact:Lo/newCursor;

    const-string v8, "MESSAGE_LIST"

    const/16 v9, 0x1b

    const/16 v10, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->onPostMessage:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v6, Lo/newCursor;->ICustomTabsCallback$Stub:Lo/newCursor;

    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->INotificationSideChannel$Default:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "UINT32_LIST"

    const/16 v9, 0x1d

    const/16 v10, 0x1d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->RemoteActionCompatParcelizer:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onRelationshipValidationResult:Lo/newCursor;

    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->asBinder:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "SFIXED32_LIST"

    const/16 v9, 0x1f

    const/16 v10, 0x1f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->write:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->IconCompatParcelizer:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "SINT32_LIST"

    const/16 v9, 0x21

    const/16 v10, 0x21

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->AudioAttributesCompatParcelizer:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->read:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onMessageChannelReady:Lo/newCursor;

    const-string v8, "DOUBLE_LIST_PACKED"

    const/16 v9, 0x23

    const/16 v10, 0x23

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->asInterface:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v6, Lo/newCursor;->ICustomTabsCallback:Lo/newCursor;

    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->MediaBrowserCompat:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v8, "INT64_LIST_PACKED"

    const/16 v9, 0x25

    const/16 v10, 0x25

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->connect:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->AudioAttributesImplBaseParcelizer:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "INT32_LIST_PACKED"

    const/16 v9, 0x27

    const/16 v10, 0x27

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->AudioAttributesImplApi21Parcelizer:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->disconnect:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "FIXED32_LIST_PACKED"

    const/16 v9, 0x29

    const/16 v10, 0x29

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->getServiceComponent:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v6, Lo/newCursor;->asBinder:Lo/newCursor;

    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->getSessionToken:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "UINT32_LIST_PACKED"

    const/16 v9, 0x2b

    const/16 v10, 0x2b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->getExtras:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onRelationshipValidationResult:Lo/newCursor;

    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->onRelationshipValidationResult:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "SFIXED32_LIST_PACKED"

    const/16 v9, 0x2d

    const/16 v10, 0x2d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->isConnected:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v2, "SFIXED64_LIST_PACKED"

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->getRoot:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onPostMessage:Lo/newCursor;

    const-string v8, "SINT32_LIST_PACKED"

    const/16 v9, 0x2f

    const/16 v10, 0x2f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->sendCustomAction:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->extraCallback:Lo/onComplete;

    sget-object v6, Lo/newCursor;->onNavigationEvent:Lo/newCursor;

    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->onTransact:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v11, Lo/onComplete;->onPostMessage:Lo/onComplete;

    sget-object v12, Lo/newCursor;->onTransact:Lo/newCursor;

    const-string v8, "GROUP_LIST"

    const/16 v9, 0x31

    const/16 v10, 0x31

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->ICustomTabsCallback$Stub:Lo/PooledByteBuffer$ClosedException;

    new-instance v0, Lo/PooledByteBuffer$ClosedException;

    sget-object v5, Lo/onComplete;->onNavigationEvent:Lo/onComplete;

    sget-object v6, Lo/newCursor;->extraCallback:Lo/newCursor;

    const-string v2, "MAP"

    const/16 v3, 0x32

    const/16 v4, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/PooledByteBuffer$ClosedException;-><init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->warmup:Lo/PooledByteBuffer$ClosedException;

    const/16 v1, 0x33

    new-array v1, v1, [Lo/PooledByteBuffer$ClosedException;

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->ICustomTabsService:Lo/PooledByteBuffer$ClosedException;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->newSession:Lo/PooledByteBuffer$ClosedException;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->ICustomTabsCallback$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->getInterfaceDescriptor:Lo/PooledByteBuffer$ClosedException;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->updateVisuals:Lo/PooledByteBuffer$ClosedException;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->requestPostMessageChannel:Lo/PooledByteBuffer$ClosedException;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->extraCommand:Lo/PooledByteBuffer$ClosedException;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->postMessage:Lo/PooledByteBuffer$ClosedException;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->mayLaunchUrl:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->onNavigationEvent:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->IPostMessageService:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->IPostMessageService$Stub:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->extraCallback:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->ICustomTabsService$Stub:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->validateRelationship:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->ICustomTabsService$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->cancel:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->ICustomTabsCallback:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->onMessageChannelReady:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->notify:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->INotificationSideChannel:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->IPostMessageService$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->cancelAll:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->getDefaultImpl:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->setDefaultImpl:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->INotificationSideChannel$Stub:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->INotificationSideChannel$Stub$Proxy:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->onPostMessage:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->INotificationSideChannel$Default:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->RemoteActionCompatParcelizer:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->asBinder:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->write:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x1f

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->IconCompatParcelizer:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x20

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->AudioAttributesCompatParcelizer:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x21

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->read:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x22

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->asInterface:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x23

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->MediaBrowserCompat:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x24

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->connect:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x25

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->AudioAttributesImplBaseParcelizer:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x26

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->AudioAttributesImplApi21Parcelizer:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x27

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->disconnect:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x28

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->getServiceComponent:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x29

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->getSessionToken:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x2a

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->getExtras:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x2b

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->onRelationshipValidationResult:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x2c

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->isConnected:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x2d

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->getRoot:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->sendCustomAction:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x2f

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->onTransact:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x30

    aput-object v2, v1, v4

    sget-object v2, Lo/PooledByteBuffer$ClosedException;->ICustomTabsCallback$Stub:Lo/PooledByteBuffer$ClosedException;

    const/16 v4, 0x31

    aput-object v2, v1, v4

    const/16 v2, 0x32

    aput-object v0, v1, v2

    sput-object v1, Lo/PooledByteBuffer$ClosedException;->MediaBrowserCompat$CallbackHandler:[Lo/PooledByteBuffer$ClosedException;

    new-array v0, v3, [Ljava/lang/reflect/Type;

    sput-object v0, Lo/PooledByteBuffer$ClosedException;->handleMessage:[Ljava/lang/reflect/Type;

    invoke-static {}, Lo/PooledByteBuffer$ClosedException;->values()[Lo/PooledByteBuffer$ClosedException;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lo/PooledByteBuffer$ClosedException;

    sput-object v1, Lo/PooledByteBuffer$ClosedException;->setCallbacksMessenger:[Lo/PooledByteBuffer$ClosedException;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lo/PooledByteBuffer$ClosedException;->setCallbacksMessenger:[Lo/PooledByteBuffer$ClosedException;

    iget v5, v2, Lo/PooledByteBuffer$ClosedException;->unsubscribe:I

    aput-object v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILo/onComplete;Lo/newCursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/onComplete;",
            "Lo/newCursor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo/PooledByteBuffer$ClosedException;->unsubscribe:I

    iput-object p4, p0, Lo/PooledByteBuffer$ClosedException;->getItem:Lo/onComplete;

    iput-object p5, p0, Lo/PooledByteBuffer$ClosedException;->search:Lo/newCursor;

    sget-object p1, Lo/FileUtils$ParentDirNotFoundException;->ICustomTabsCallback:[I

    invoke-virtual {p4}, Lo/onComplete;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lo/newCursor;->onMessageChannelReady()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/PooledByteBuffer$ClosedException;->subscribe:Ljava/lang/Class;

    const/4 p1, 0x0

    sget-object v0, Lo/onComplete;->onMessageChannelReady:Lo/onComplete;

    if-ne p4, v0, :cond_1

    sget-object p4, Lo/FileUtils$ParentDirNotFoundException;->onPostMessage:[I

    invoke-virtual {p5}, Lo/newCursor;->ordinal()I

    move-result p5

    aget p4, p4, p5

    if-eq p4, p3, :cond_1

    if-eq p4, p2, :cond_1

    const/4 p2, 0x3

    if-eq p4, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Lo/PooledByteBuffer$ClosedException;->MediaBrowserCompat$ConnectionCallback:Z

    return-void
.end method

.method public static values()[Lo/PooledByteBuffer$ClosedException;
    .locals 1

    sget-object v0, Lo/PooledByteBuffer$ClosedException;->MediaBrowserCompat$CallbackHandler:[Lo/PooledByteBuffer$ClosedException;

    invoke-virtual {v0}, [Lo/PooledByteBuffer$ClosedException;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/PooledByteBuffer$ClosedException;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/PooledByteBuffer$ClosedException;->unsubscribe:I

    return v0
.end method
