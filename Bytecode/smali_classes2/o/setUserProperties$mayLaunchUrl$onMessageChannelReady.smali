.class public final enum Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$mayLaunchUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum ICustomTabsCallback$Stub:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum ICustomTabsService:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum ICustomTabsService$Stub:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final synthetic ICustomTabsService$Stub$Proxy:[Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final IPostMessageService:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum asBinder:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum asInterface:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum extraCallback:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum extraCommand:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum getInterfaceDescriptor:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum mayLaunchUrl:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum newSession:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum onMessageChannelReady:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum onNavigationEvent:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum onPostMessage:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum onRelationshipValidationResult:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum onTransact:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum postMessage:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum requestPostMessageChannel:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum updateVisuals:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

.field private static final enum warmup:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;


# instance fields
.field private final validateRelationship:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_MOBILE_SUBTYPE"

    invoke-direct {v0, v2, v1, v1}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsCallback:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "GPRS"

    invoke-direct {v0, v3, v2, v2}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onMessageChannelReady:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "EDGE"

    invoke-direct {v0, v4, v3, v3}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onNavigationEvent:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "UMTS"

    invoke-direct {v0, v5, v4, v4}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onPostMessage:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "CDMA"

    invoke-direct {v0, v6, v5, v5}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->extraCallback:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "EVDO_0"

    invoke-direct {v0, v7, v6, v6}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onTransact:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/4 v7, 0x6

    const-string v8, "EVDO_A"

    invoke-direct {v0, v8, v7, v7}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->asInterface:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/4 v8, 0x7

    const-string v9, "RTT"

    invoke-direct {v0, v9, v8, v8}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onRelationshipValidationResult:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v9, 0x8

    const-string v10, "HSDPA"

    invoke-direct {v0, v10, v9, v9}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v10, 0x9

    const-string v11, "HSUPA"

    invoke-direct {v0, v11, v10, v10}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->asBinder:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v11, 0xa

    const-string v12, "HSPA"

    invoke-direct {v0, v12, v11, v11}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->getInterfaceDescriptor:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v12, 0xb

    const-string v13, "IDEN"

    invoke-direct {v0, v13, v12, v12}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsService:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v13, 0xc

    const-string v14, "EVDO_B"

    invoke-direct {v0, v14, v13, v13}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->newSession:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v14, 0xd

    const-string v15, "LTE"

    invoke-direct {v0, v15, v14, v14}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v15, 0xe

    const-string v14, "EHRPD"

    invoke-direct {v0, v14, v15, v15}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->warmup:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v14, 0xf

    const-string v15, "HSPAP"

    invoke-direct {v0, v15, v14, v14}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->extraCommand:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v15, 0x10

    const-string v14, "GSM"

    invoke-direct {v0, v14, v15, v15}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->updateVisuals:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v14, 0x11

    const-string v15, "TD_SCDMA"

    invoke-direct {v0, v15, v14, v14}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->postMessage:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v15, 0x12

    const-string v14, "IWLAN"

    invoke-direct {v0, v14, v15, v15}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->mayLaunchUrl:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v14, 0x13

    const-string v15, "LTE_CA"

    invoke-direct {v0, v15, v14, v14}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->requestPostMessageChannel:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v15, 0x14

    const-string v14, "COMBINED"

    const/16 v13, 0x64

    invoke-direct {v0, v14, v15, v13}, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsService$Stub:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v13, 0x15

    new-array v13, v13, [Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    sget-object v14, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsCallback:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v14, v13, v1

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onMessageChannelReady:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onNavigationEvent:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v3

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onPostMessage:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v4

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->extraCallback:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v5

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onTransact:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v6

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->asInterface:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v7

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onRelationshipValidationResult:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v8

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v9

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->asBinder:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v10

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->getInterfaceDescriptor:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v11

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsService:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    aput-object v1, v13, v12

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->newSession:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->warmup:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->extraCommand:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->updateVisuals:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->postMessage:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->mayLaunchUrl:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->requestPostMessageChannel:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    aput-object v0, v13, v15

    sput-object v13, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:[Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    new-instance v0, Lo/setFreshchatUserInteractionListener;

    invoke-direct {v0}, Lo/setFreshchatUserInteractionListener;-><init>()V

    sput-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->IPostMessageService:Lo/setHierarchy;

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

    iput p3, p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->validateRelationship:I

    return-void
.end method

.method public static extraCallback()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->IPostMessageService:Lo/setHierarchy;

    return-object v0
.end method

.method public static onMessageChannelReady(I)Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->requestPostMessageChannel:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_1
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->mayLaunchUrl:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_2
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->postMessage:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_3
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->updateVisuals:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_4
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->extraCommand:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_5
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->warmup:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_6
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_7
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->newSession:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_8
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsService:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_9
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->getInterfaceDescriptor:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_a
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->asBinder:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_b
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_c
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onRelationshipValidationResult:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_d
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->asInterface:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_e
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onTransact:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_f
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->extraCallback:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_10
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onPostMessage:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_11
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onNavigationEvent:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_12
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->onMessageChannelReady:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_13
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsCallback:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :cond_0
    sget-object p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsService$Stub:Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
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

.method public static values()[Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;
    .locals 1

    sget-object v0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->ICustomTabsService$Stub$Proxy:[Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setUserProperties$mayLaunchUrl$onMessageChannelReady;->validateRelationship:I

    return v0
.end method
