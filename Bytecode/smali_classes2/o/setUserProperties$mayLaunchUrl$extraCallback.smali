.class public final enum Lo/setUserProperties$mayLaunchUrl$extraCallback;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$mayLaunchUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setUserProperties$mayLaunchUrl$extraCallback;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum ICustomTabsCallback$Stub:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum ICustomTabsService:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final synthetic IPostMessageService$Stub:[Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum asBinder:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum asInterface:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum extraCallback:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum extraCommand:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum getInterfaceDescriptor:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum mayLaunchUrl:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum newSession:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum onMessageChannelReady:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum onNavigationEvent:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum onPostMessage:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum onRelationshipValidationResult:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum onTransact:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final postMessage:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setUserProperties$mayLaunchUrl$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum requestPostMessageChannel:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum updateVisuals:Lo/setUserProperties$mayLaunchUrl$extraCallback;

.field private static final enum warmup:Lo/setUserProperties$mayLaunchUrl$extraCallback;


# instance fields
.field private final ICustomTabsService$Stub:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsCallback:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/4 v2, 0x1

    const-string v3, "MOBILE"

    invoke-direct {v0, v3, v2, v1}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onNavigationEvent:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/4 v3, 0x2

    const-string v4, "WIFI"

    invoke-direct {v0, v4, v3, v2}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onMessageChannelReady:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/4 v4, 0x3

    const-string v5, "MOBILE_MMS"

    invoke-direct {v0, v5, v4, v3}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onPostMessage:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/4 v5, 0x4

    const-string v6, "MOBILE_SUPL"

    invoke-direct {v0, v6, v5, v4}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->extraCallback:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/4 v6, 0x5

    const-string v7, "MOBILE_DUN"

    invoke-direct {v0, v7, v6, v5}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->asInterface:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/4 v7, 0x6

    const-string v8, "MOBILE_HIPRI"

    invoke-direct {v0, v8, v7, v6}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onRelationshipValidationResult:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/4 v8, 0x7

    const-string v9, "WIMAX"

    invoke-direct {v0, v9, v8, v7}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->asBinder:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v9, 0x8

    const-string v10, "BLUETOOTH"

    invoke-direct {v0, v10, v9, v8}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onTransact:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v10, 0x9

    const-string v11, "DUMMY"

    invoke-direct {v0, v11, v10, v9}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsCallback$Stub:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v11, 0xa

    const-string v12, "ETHERNET"

    invoke-direct {v0, v12, v11, v10}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsService:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v12, 0xb

    const-string v13, "MOBILE_FOTA"

    invoke-direct {v0, v13, v12, v11}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->getInterfaceDescriptor:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v13, 0xc

    const-string v14, "MOBILE_IMS"

    invoke-direct {v0, v14, v13, v12}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->warmup:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v14, 0xd

    const-string v15, "MOBILE_CBS"

    invoke-direct {v0, v15, v14, v13}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v15, 0xe

    const-string v13, "WIFI_P2P"

    invoke-direct {v0, v13, v15, v14}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->newSession:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v13, 0xf

    const-string v14, "MOBILE_IA"

    invoke-direct {v0, v14, v13, v15}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->requestPostMessageChannel:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v14, 0x10

    const-string v15, "MOBILE_EMERGENCY"

    invoke-direct {v0, v15, v14, v13}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->extraCommand:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v15, 0x11

    const-string v13, "PROXY"

    invoke-direct {v0, v13, v15, v14}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->updateVisuals:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v13, 0x12

    const-string v14, "VPN"

    invoke-direct {v0, v14, v13, v15}, Lo/setUserProperties$mayLaunchUrl$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->mayLaunchUrl:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v14, 0x13

    new-array v14, v14, [Lo/setUserProperties$mayLaunchUrl$extraCallback;

    sget-object v16, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsCallback:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v16, v14, v1

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onNavigationEvent:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onMessageChannelReady:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v3

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onPostMessage:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v4

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->extraCallback:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v5

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->asInterface:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v6

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onRelationshipValidationResult:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v7

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->asBinder:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v8

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onTransact:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v9

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsCallback$Stub:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v10

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsService:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v11

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->getInterfaceDescriptor:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v12

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->warmup:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->newSession:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->requestPostMessageChannel:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->extraCommand:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$extraCallback;->updateVisuals:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    aput-object v1, v14, v15

    aput-object v0, v14, v13

    sput-object v14, Lo/setUserProperties$mayLaunchUrl$extraCallback;->IPostMessageService$Stub:[Lo/setUserProperties$mayLaunchUrl$extraCallback;

    new-instance v0, Lo/Freshchat$1;

    invoke-direct {v0}, Lo/Freshchat$1;-><init>()V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->postMessage:Lo/setHierarchy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsService$Stub:I

    return-void
.end method

.method public static extraCallback(I)Lo/setUserProperties$mayLaunchUrl$extraCallback;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->mayLaunchUrl:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_1
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->updateVisuals:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_2
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->extraCommand:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_3
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->requestPostMessageChannel:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_4
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->newSession:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_5
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_6
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->warmup:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_7
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->getInterfaceDescriptor:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_8
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsService:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_9
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsCallback$Stub:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_a
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onTransact:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_b
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->asBinder:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_c
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onRelationshipValidationResult:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_d
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->asInterface:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_e
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->extraCallback:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_f
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onPostMessage:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_10
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onMessageChannelReady:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_11
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->onNavigationEvent:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_12
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsCallback:Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onMessageChannelReady()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/setUserProperties$mayLaunchUrl$extraCallback;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->postMessage:Lo/setHierarchy;

    return-object v0
.end method

.method public static values()[Lo/setUserProperties$mayLaunchUrl$extraCallback;
    .locals 1

    sget-object v0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->IPostMessageService$Stub:[Lo/setUserProperties$mayLaunchUrl$extraCallback;

    invoke-virtual {v0}, [Lo/setUserProperties$mayLaunchUrl$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setUserProperties$mayLaunchUrl$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setUserProperties$mayLaunchUrl$extraCallback;->ICustomTabsService$Stub:I

    return v0
.end method
