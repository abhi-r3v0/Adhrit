.class public final enum Lo/LoanStatusResponse_CurrentDataJsonAdapter;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/LoanStatusResponse_CurrentDataJsonAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum AudioAttributesCompatParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum AudioAttributesImplApi21Parcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum AudioAttributesImplBaseParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum ICustomTabsCallback:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum ICustomTabsCallback$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum ICustomTabsCallback$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum ICustomTabsService:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum ICustomTabsService$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum ICustomTabsService$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum INotificationSideChannel:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum INotificationSideChannel$Default:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum INotificationSideChannel$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum INotificationSideChannel$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum IPostMessageService:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum IPostMessageService$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum IPostMessageService$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum IconCompatParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum MediaBrowserCompat:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final MediaBrowserCompat$CallbackHandler:[Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum RemoteActionCompatParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum asBinder:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum asInterface:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum cancel:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum cancelAll:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum connect:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum disconnect:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum extraCallback:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum extraCommand:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum getDefaultImpl:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum getExtras:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum getInterfaceDescriptor:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final getNotifyChildrenChangedOptions:[Ljava/lang/reflect/Type;

.field private static final enum getRoot:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum getServiceComponent:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum getSessionToken:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final synthetic handleMessage:[Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum isConnected:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum mayLaunchUrl:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum newSession:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum notify:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum onMessageChannelReady:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum onNavigationEvent:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum onPostMessage:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum onRelationshipValidationResult:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field public static final enum onTransact:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum postMessage:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum read:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum requestPostMessageChannel:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum setDefaultImpl:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum unsubscribe:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum updateVisuals:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum validateRelationship:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum warmup:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

.field private static final enum write:Lo/LoanStatusResponse_CurrentDataJsonAdapter;


# instance fields
.field private final MediaBrowserCompat$ConnectionCallback:Z

.field private final getItem:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final search:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

.field private final sendCustomAction:I

.field private final subscribe:Lo/LoanStatusResponse_KycDataJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v4, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_KycDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v6, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->newSession:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsService:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->warmup:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getInterfaceDescriptor:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->mayLaunchUrl:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->postMessage:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->asInterface:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->extraCommand:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->asBinder:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback$Stub:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onTransact:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsService$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "UINT32"

    const/16 v9, 0xb

    const/16 v10, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsService$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onRelationshipValidationResult:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "SFIXED32"

    const/16 v9, 0xd

    const/16 v10, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->IPostMessageService:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->IPostMessageService$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "SINT32"

    const/16 v9, 0xf

    const/16 v10, 0xf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->validateRelationship:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback$Stub:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "GROUP"

    const/16 v9, 0x11

    const/16 v10, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "DOUBLE_LIST"

    const/16 v3, 0x12

    const/16 v4, 0x12

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "FLOAT_LIST"

    const/16 v9, 0x13

    const/16 v10, 0x13

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->notify:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->cancel:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "UINT64_LIST"

    const/16 v9, 0x15

    const/16 v10, 0x15

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->INotificationSideChannel:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->cancelAll:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "FIXED64_LIST"

    const/16 v9, 0x17

    const/16 v10, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->setDefaultImpl:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->INotificationSideChannel$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->asInterface:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "BOOL_LIST"

    const/16 v9, 0x19

    const/16 v10, 0x19

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->INotificationSideChannel$Default:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->asBinder:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->INotificationSideChannel$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback$Stub:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "MESSAGE_LIST"

    const/16 v9, 0x1b

    const/16 v10, 0x1b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onTransact:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getDefaultImpl:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "UINT32_LIST"

    const/16 v9, 0x1d

    const/16 v10, 0x1d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->read:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onRelationshipValidationResult:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onRelationshipValidationResult:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "SFIXED32_LIST"

    const/16 v9, 0x1f

    const/16 v10, 0x1f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->AudioAttributesCompatParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->write:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "SINT32_LIST"

    const/16 v9, 0x21

    const/16 v10, 0x21

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->RemoteActionCompatParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->IconCompatParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "DOUBLE_LIST_PACKED"

    const/16 v9, 0x23

    const/16 v10, 0x23

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->asBinder:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->disconnect:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "INT64_LIST_PACKED"

    const/16 v9, 0x25

    const/16 v10, 0x25

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->MediaBrowserCompat:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->connect:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "INT32_LIST_PACKED"

    const/16 v9, 0x27

    const/16 v10, 0x27

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->AudioAttributesImplBaseParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->AudioAttributesImplApi21Parcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "FIXED32_LIST_PACKED"

    const/16 v9, 0x29

    const/16 v10, 0x29

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getRoot:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->asInterface:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->isConnected:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "UINT32_LIST_PACKED"

    const/16 v9, 0x2b

    const/16 v10, 0x2b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getSessionToken:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onRelationshipValidationResult:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onTransact:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "SFIXED32_LIST_PACKED"

    const/16 v9, 0x2d

    const/16 v10, 0x2d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getServiceComponent:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "SFIXED64_LIST_PACKED"

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getExtras:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "SINT32_LIST_PACKED"

    const/16 v9, 0x2f

    const/16 v10, 0x2f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->unsubscribe:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->asInterface:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v11, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v12, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback$Stub:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v8, "GROUP_LIST"

    const/16 v9, 0x31

    const/16 v10, 0x31

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-instance v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v5, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    sget-object v6, Lo/LoanStatusResponse_KycDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_KycDataJsonAdapter;

    const-string v2, "MAP"

    const/16 v3, 0x32

    const/16 v4, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;-><init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v1, 0x33

    new-array v1, v1, [Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->newSession:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsService:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->warmup:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getInterfaceDescriptor:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->mayLaunchUrl:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->postMessage:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->extraCommand:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsService$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsService$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->IPostMessageService:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->IPostMessageService$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->validateRelationship:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->notify:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->cancel:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->INotificationSideChannel:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->cancelAll:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->setDefaultImpl:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->INotificationSideChannel$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->INotificationSideChannel$Default:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->INotificationSideChannel$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onMessageChannelReady:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getDefaultImpl:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->read:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onRelationshipValidationResult:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->AudioAttributesCompatParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x1f

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->write:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x20

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->RemoteActionCompatParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x21

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->IconCompatParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x22

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->asBinder:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x23

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->disconnect:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x24

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->MediaBrowserCompat:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x25

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->connect:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x26

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->AudioAttributesImplBaseParcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x27

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->AudioAttributesImplApi21Parcelizer:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x28

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getRoot:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x29

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->isConnected:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x2a

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getSessionToken:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x2b

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onTransact:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x2c

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getServiceComponent:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x2d

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getExtras:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->unsubscribe:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x2f

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->asInterface:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x30

    aput-object v2, v1, v4

    sget-object v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback$Stub:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    const/16 v4, 0x31

    aput-object v2, v1, v4

    const/16 v2, 0x32

    aput-object v0, v1, v2

    sput-object v1, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->handleMessage:[Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    new-array v0, v3, [Ljava/lang/reflect/Type;

    sput-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getNotifyChildrenChangedOptions:[Ljava/lang/reflect/Type;

    invoke-static {}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->values()[Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    sput-object v1, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->MediaBrowserCompat$CallbackHandler:[Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->MediaBrowserCompat$CallbackHandler:[Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    iget v5, v2, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->sendCustomAction:I

    aput-object v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILo/LoanStatusResponse_BreakDownDataJsonAdapter;Lo/LoanStatusResponse_KycDataJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/LoanStatusResponse_BreakDownDataJsonAdapter;",
            "Lo/LoanStatusResponse_KycDataJsonAdapter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->sendCustomAction:I

    iput-object p4, p0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->search:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    iput-object p5, p0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->subscribe:Lo/LoanStatusResponse_KycDataJsonAdapter;

    sget-object p1, Lo/LoanStatusResponse_BreakDownDetailsJsonAdapter;->onNavigationEvent:[I

    invoke-virtual {p4}, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lo/LoanStatusResponse_KycDataJsonAdapter;->ICustomTabsCallback()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->getItem:Ljava/lang/Class;

    const/4 p1, 0x0

    sget-object v0, Lo/LoanStatusResponse_BreakDownDataJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_BreakDownDataJsonAdapter;

    if-ne p4, v0, :cond_1

    sget-object p4, Lo/LoanStatusResponse_BreakDownDetailsJsonAdapter;->onPostMessage:[I

    invoke-virtual {p5}, Lo/LoanStatusResponse_KycDataJsonAdapter;->ordinal()I

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
    iput-boolean p3, p0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->MediaBrowserCompat$ConnectionCallback:Z

    return-void
.end method

.method public static values()[Lo/LoanStatusResponse_CurrentDataJsonAdapter;
    .locals 1

    sget-object v0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->handleMessage:[Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v0}, [Lo/LoanStatusResponse_CurrentDataJsonAdapter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    return-object v0
.end method


# virtual methods
.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->sendCustomAction:I

    return v0
.end method
