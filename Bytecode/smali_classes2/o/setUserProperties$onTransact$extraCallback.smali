.class public final enum Lo/setUserProperties$onTransact$extraCallback;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setUserProperties$onTransact$extraCallback;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum ICustomTabsCallback$Stub:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum ICustomTabsService:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum asBinder:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum asInterface:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum extraCallback:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum extraCommand:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum getInterfaceDescriptor:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum mayLaunchUrl:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum newSession:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum onMessageChannelReady:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum onNavigationEvent:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum onPostMessage:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum onRelationshipValidationResult:Lo/setUserProperties$onTransact$extraCallback;

.field private static final enum onTransact:Lo/setUserProperties$onTransact$extraCallback;

.field private static final synthetic postMessage:[Lo/setUserProperties$onTransact$extraCallback;

.field private static final updateVisuals:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setUserProperties$onTransact$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum warmup:Lo/setUserProperties$onTransact$extraCallback;


# instance fields
.field private final requestPostMessageChannel:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->onMessageChannelReady:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/4 v2, 0x1

    const-string v3, "JS"

    invoke-direct {v0, v3, v2, v2}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->onPostMessage:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/4 v3, 0x2

    const-string v4, "DESKTOP"

    invoke-direct {v0, v4, v3, v3}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->extraCallback:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/4 v4, 0x3

    const-string v5, "IOS"

    invoke-direct {v0, v5, v4, v4}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsCallback:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/16 v5, 0xa

    const/4 v6, 0x4

    const-string v7, "IOS_V2"

    invoke-direct {v0, v7, v6, v5}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->onNavigationEvent:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/4 v7, 0x5

    const-string v8, "ANDROID"

    invoke-direct {v0, v8, v7, v6}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsCallback$Stub:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/4 v8, 0x6

    const-string v9, "PLAY_CE"

    invoke-direct {v0, v9, v8, v7}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->asInterface:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/4 v9, 0x7

    const-string v10, "PYTHON"

    invoke-direct {v0, v10, v9, v8}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->onRelationshipValidationResult:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/16 v10, 0x8

    const-string v11, "VR"

    invoke-direct {v0, v11, v10, v9}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->asBinder:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/16 v11, 0x9

    const-string v12, "PANCETTA"

    invoke-direct {v0, v12, v11, v10}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->onTransact:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const-string v12, "DRIVE_FS"

    invoke-direct {v0, v12, v5, v11}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->getInterfaceDescriptor:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/16 v12, 0xb

    const-string v13, "YETI"

    invoke-direct {v0, v13, v12, v12}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->newSession:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/16 v13, 0xc

    const-string v14, "MAC"

    invoke-direct {v0, v14, v13, v13}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsService:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/16 v14, 0xd

    const-string v15, "PLAY_GOOGLE_HOME"

    invoke-direct {v0, v15, v14, v14}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->warmup:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/16 v15, 0xe

    const-string v14, "BIRDSONG"

    invoke-direct {v0, v14, v15, v15}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/16 v14, 0xf

    const-string v15, "IOS_FIREBASE"

    invoke-direct {v0, v15, v14, v14}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->extraCommand:Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/setUserProperties$onTransact$extraCallback;

    const/16 v15, 0x10

    const-string v14, "GO"

    invoke-direct {v0, v14, v15, v15}, Lo/setUserProperties$onTransact$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->mayLaunchUrl:Lo/setUserProperties$onTransact$extraCallback;

    const/16 v14, 0x11

    new-array v14, v14, [Lo/setUserProperties$onTransact$extraCallback;

    sget-object v16, Lo/setUserProperties$onTransact$extraCallback;->onMessageChannelReady:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v16, v14, v1

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->onPostMessage:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v2

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->extraCallback:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v3

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsCallback:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v4

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->onNavigationEvent:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v6

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsCallback$Stub:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v7

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->asInterface:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v8

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->onRelationshipValidationResult:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v9

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->asBinder:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v10

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->onTransact:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v11

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->getInterfaceDescriptor:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v5

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->newSession:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v12

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsService:Lo/setUserProperties$onTransact$extraCallback;

    aput-object v1, v14, v13

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->warmup:Lo/setUserProperties$onTransact$extraCallback;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$onTransact$extraCallback;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lo/setUserProperties$onTransact$extraCallback;->extraCommand:Lo/setUserProperties$onTransact$extraCallback;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lo/setUserProperties$onTransact$extraCallback;->postMessage:[Lo/setUserProperties$onTransact$extraCallback;

    new-instance v0, Lo/resetUser;

    invoke-direct {v0}, Lo/resetUser;-><init>()V

    sput-object v0, Lo/setUserProperties$onTransact$extraCallback;->updateVisuals:Lo/setHierarchy;

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

    iput p3, p0, Lo/setUserProperties$onTransact$extraCallback;->requestPostMessageChannel:I

    return-void
.end method

.method public static extraCallback(I)Lo/setUserProperties$onTransact$extraCallback;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->mayLaunchUrl:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_1
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->extraCommand:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_2
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_3
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->warmup:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_4
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsService:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_5
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->newSession:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_6
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->onNavigationEvent:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_7
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->getInterfaceDescriptor:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_8
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->onTransact:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_9
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->asBinder:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_a
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->onRelationshipValidationResult:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_b
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->asInterface:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_c
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsCallback$Stub:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_d
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->ICustomTabsCallback:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_e
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->extraCallback:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_f
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->onPostMessage:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_10
    sget-object p0, Lo/setUserProperties$onTransact$extraCallback;->onMessageChannelReady:Lo/setUserProperties$onTransact$extraCallback;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lo/setUserProperties$onTransact$extraCallback;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setUserProperties$onTransact$extraCallback;->updateVisuals:Lo/setHierarchy;

    return-object v0
.end method

.method public static values()[Lo/setUserProperties$onTransact$extraCallback;
    .locals 1

    sget-object v0, Lo/setUserProperties$onTransact$extraCallback;->postMessage:[Lo/setUserProperties$onTransact$extraCallback;

    invoke-virtual {v0}, [Lo/setUserProperties$onTransact$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setUserProperties$onTransact$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setUserProperties$onTransact$extraCallback;->requestPostMessageChannel:I

    return v0
.end method
