.class public final enum Lo/getGooglePlayServicesAvailabilityRecoveryIntent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getGooglePlayServicesAvailabilityRecoveryIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum AudioAttributesCompatParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum AudioAttributesImplApi21Parcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum AudioAttributesImplBaseParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field public static final enum ICustomTabsCallback:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum ICustomTabsCallback$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum ICustomTabsService:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum ICustomTabsService$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum ICustomTabsService$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum INotificationSideChannel:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum INotificationSideChannel$Default:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum INotificationSideChannel$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum INotificationSideChannel$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum IPostMessageService:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum IPostMessageService$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum IPostMessageService$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum IconCompatParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum MediaBrowserCompat:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final MediaBrowserCompat$CallbackHandler:[Ljava/lang/reflect/Type;

.field private static final enum RemoteActionCompatParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum asBinder:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum asInterface:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum cancel:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum cancelAll:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum connect:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum disconnect:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum extraCallback:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum extraCommand:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum getDefaultImpl:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum getExtras:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum getInterfaceDescriptor:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final synthetic getNotifyChildrenChangedOptions:[Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum getRoot:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum getServiceComponent:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum getSessionToken:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum isConnected:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum mayLaunchUrl:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum newSession:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum notify:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum onMessageChannelReady:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field public static final enum onNavigationEvent:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum onPostMessage:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum onRelationshipValidationResult:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum onTransact:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum postMessage:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum read:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum requestPostMessageChannel:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum sendCustomAction:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final setCallbacksMessenger:[Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum setDefaultImpl:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum updateVisuals:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum validateRelationship:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum warmup:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

.field private static final enum write:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;


# instance fields
.field private final getItem:Lo/AvailabilityException;

.field private final handleMessage:Z

.field private final search:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final subscribe:Lo/uidHasPackageName;

.field private final unsubscribe:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 20
    new-instance v6, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v4, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v5, Lo/AvailabilityException;->ICustomTabsCallback:Lo/AvailabilityException;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v6, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->onMessageChannelReady:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 21
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onPostMessage:Lo/AvailabilityException;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->extraCallback:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 22
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->onPostMessage:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 23
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->asInterface:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 24
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->onTransact:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 25
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->onRelationshipValidationResult:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 26
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->asBinder:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 27
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->ICustomTabsCallback$Stub:Lo/AvailabilityException;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsCallback$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 28
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->asInterface:Lo/AvailabilityException;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsService:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 29
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onTransact:Lo/AvailabilityException;

    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsCallback$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 30
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onRelationshipValidationResult:Lo/AvailabilityException;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getInterfaceDescriptor:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 31
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "UINT32"

    const/16 v9, 0xb

    const/16 v10, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->warmup:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 32
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->asBinder:Lo/AvailabilityException;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->newSession:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 33
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "SFIXED32"

    const/16 v9, 0xd

    const/16 v10, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->updateVisuals:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 34
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->requestPostMessageChannel:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 35
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "SINT32"

    const/16 v9, 0xf

    const/16 v10, 0xf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->mayLaunchUrl:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 36
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->postMessage:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 37
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onTransact:Lo/AvailabilityException;

    const-string v8, "GROUP"

    const/16 v9, 0x11

    const/16 v10, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->extraCommand:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 38
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->ICustomTabsCallback:Lo/AvailabilityException;

    const-string v2, "DOUBLE_LIST"

    const/16 v3, 0x12

    const/16 v4, 0x12

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->IPostMessageService$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 39
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onPostMessage:Lo/AvailabilityException;

    const-string v8, "FLOAT_LIST"

    const/16 v9, 0x13

    const/16 v10, 0x13

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->IPostMessageService:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 40
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsService$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 41
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v8, "UINT64_LIST"

    const/16 v9, 0x15

    const/16 v10, 0x15

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->validateRelationship:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 42
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsService$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 43
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v8, "FIXED64_LIST"

    const/16 v9, 0x17

    const/16 v10, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->notify:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 44
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->INotificationSideChannel:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 45
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->ICustomTabsCallback$Stub:Lo/AvailabilityException;

    const-string v8, "BOOL_LIST"

    const/16 v9, 0x19

    const/16 v10, 0x19

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->cancelAll:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 46
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->asInterface:Lo/AvailabilityException;

    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->cancel:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 47
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onTransact:Lo/AvailabilityException;

    const-string v8, "MESSAGE_LIST"

    const/16 v9, 0x1b

    const/16 v10, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->IPostMessageService$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 48
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onRelationshipValidationResult:Lo/AvailabilityException;

    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->setDefaultImpl:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 49
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "UINT32_LIST"

    const/16 v9, 0x1d

    const/16 v10, 0x1d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->INotificationSideChannel$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 50
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->asBinder:Lo/AvailabilityException;

    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->INotificationSideChannel$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 51
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "SFIXED32_LIST"

    const/16 v9, 0x1f

    const/16 v10, 0x1f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->INotificationSideChannel$Default:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 52
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getDefaultImpl:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 53
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "SINT32_LIST"

    const/16 v9, 0x21

    const/16 v10, 0x21

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->RemoteActionCompatParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 54
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->write:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 55
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->ICustomTabsCallback:Lo/AvailabilityException;

    const-string v8, "DOUBLE_LIST_PACKED"

    const/16 v9, 0x23

    const/16 v10, 0x23

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->onNavigationEvent:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 56
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onPostMessage:Lo/AvailabilityException;

    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->read:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 57
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v8, "INT64_LIST_PACKED"

    const/16 v9, 0x25

    const/16 v10, 0x25

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->AudioAttributesCompatParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 58
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->IconCompatParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 59
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "INT32_LIST_PACKED"

    const/16 v9, 0x27

    const/16 v10, 0x27

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->AudioAttributesImplBaseParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 60
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->disconnect:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 61
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "FIXED32_LIST_PACKED"

    const/16 v9, 0x29

    const/16 v10, 0x29

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->MediaBrowserCompat:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 62
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->ICustomTabsCallback$Stub:Lo/AvailabilityException;

    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->AudioAttributesImplApi21Parcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 63
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "UINT32_LIST_PACKED"

    const/16 v9, 0x2b

    const/16 v10, 0x2b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->connect:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 64
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->asBinder:Lo/AvailabilityException;

    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getRoot:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 65
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "SFIXED32_LIST_PACKED"

    const/16 v9, 0x2d

    const/16 v10, 0x2d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getServiceComponent:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 66
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v2, "SFIXED64_LIST_PACKED"

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getSessionToken:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 67
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->extraCallback:Lo/AvailabilityException;

    const-string v8, "SINT32_LIST_PACKED"

    const/16 v9, 0x2f

    const/16 v10, 0x2f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->isConnected:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 68
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onPostMessage:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onNavigationEvent:Lo/AvailabilityException;

    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsCallback:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 69
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v11, Lo/uidHasPackageName;->extraCallback:Lo/uidHasPackageName;

    sget-object v12, Lo/AvailabilityException;->onTransact:Lo/AvailabilityException;

    const-string v8, "GROUP_LIST"

    const/16 v9, 0x31

    const/16 v10, 0x31

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getExtras:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 70
    new-instance v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sget-object v5, Lo/uidHasPackageName;->onNavigationEvent:Lo/uidHasPackageName;

    sget-object v6, Lo/AvailabilityException;->onMessageChannelReady:Lo/AvailabilityException;

    const-string v2, "MAP"

    const/16 v3, 0x32

    const/16 v4, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;-><init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V

    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->sendCustomAction:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v1, 0x33

    new-array v1, v1, [Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 71
    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->onMessageChannelReady:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->extraCallback:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->onPostMessage:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->asInterface:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->onTransact:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->onRelationshipValidationResult:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->asBinder:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsCallback$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsService:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsCallback$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getInterfaceDescriptor:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->warmup:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->newSession:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->updateVisuals:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->requestPostMessageChannel:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->mayLaunchUrl:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->postMessage:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->extraCommand:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->IPostMessageService$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->IPostMessageService:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsService$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->validateRelationship:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsService$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->notify:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->INotificationSideChannel:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->cancelAll:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->cancel:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->IPostMessageService$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->setDefaultImpl:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->INotificationSideChannel$Stub:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->INotificationSideChannel$Stub$Proxy:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->INotificationSideChannel$Default:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x1f

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getDefaultImpl:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x20

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->RemoteActionCompatParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x21

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->write:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x22

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->onNavigationEvent:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x23

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->read:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x24

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->AudioAttributesCompatParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x25

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->IconCompatParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x26

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->AudioAttributesImplBaseParcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x27

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->disconnect:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x28

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->MediaBrowserCompat:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x29

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->AudioAttributesImplApi21Parcelizer:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x2a

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->connect:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x2b

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getRoot:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x2c

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getServiceComponent:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x2d

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getSessionToken:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->isConnected:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x2f

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->ICustomTabsCallback:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x30

    aput-object v2, v1, v4

    sget-object v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getExtras:Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    const/16 v4, 0x31

    aput-object v2, v1, v4

    const/16 v2, 0x32

    aput-object v0, v1, v2

    .line 72
    sput-object v1, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getNotifyChildrenChangedOptions:[Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    new-array v0, v3, [Ljava/lang/reflect/Type;

    .line 73
    sput-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->MediaBrowserCompat$CallbackHandler:[Ljava/lang/reflect/Type;

    .line 74
    invoke-static {}, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->values()[Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    move-result-object v0

    .line 75
    array-length v1, v0

    new-array v1, v1, [Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    sput-object v1, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->setCallbacksMessenger:[Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    .line 76
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 77
    sget-object v4, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->setCallbacksMessenger:[Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    iget v5, v2, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->unsubscribe:I

    aput-object v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILo/uidHasPackageName;Lo/AvailabilityException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/uidHasPackageName;",
            "Lo/AvailabilityException;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput p3, p0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->unsubscribe:I

    .line 4
    iput-object p4, p0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->subscribe:Lo/uidHasPackageName;

    .line 5
    iput-object p5, p0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getItem:Lo/AvailabilityException;

    .line 6
    sget-object p1, Lo/isGooglePlayServicesUid;->extraCallback:[I

    invoke-virtual {p4}, Lo/uidHasPackageName;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->search:Ljava/lang/Class;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p5}, Lo/AvailabilityException;->onNavigationEvent()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->search:Ljava/lang/Class;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p5}, Lo/AvailabilityException;->onNavigationEvent()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->search:Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x0

    .line 13
    sget-object v0, Lo/uidHasPackageName;->onMessageChannelReady:Lo/uidHasPackageName;

    if-ne p4, v0, :cond_2

    .line 14
    sget-object p4, Lo/isGooglePlayServicesUid;->onPostMessage:[I

    invoke-virtual {p5}, Lo/AvailabilityException;->ordinal()I

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
    iput-boolean p3, p0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->handleMessage:Z

    return-void
.end method

.method public static values()[Lo/getGooglePlayServicesAvailabilityRecoveryIntent;
    .locals 1

    .line 1
    sget-object v0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->getNotifyChildrenChangedOptions:[Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    invoke-virtual {v0}, [Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getGooglePlayServicesAvailabilityRecoveryIntent;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 19
    iget v0, p0, Lo/getGooglePlayServicesAvailabilityRecoveryIntent;->unsubscribe:I

    return v0
.end method
