.class public final enum Lo/setUserProperties$postMessage$onPostMessage;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUserProperties$postMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setUserProperties$postMessage$onPostMessage;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/setUserProperties$postMessage$onPostMessage;

.field private static final ICustomTabsCallback$Stub:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/setUserProperties$postMessage$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic asBinder:[Lo/setUserProperties$postMessage$onPostMessage;

.field private static final enum extraCallback:Lo/setUserProperties$postMessage$onPostMessage;

.field private static final enum onMessageChannelReady:Lo/setUserProperties$postMessage$onPostMessage;

.field private static final enum onNavigationEvent:Lo/setUserProperties$postMessage$onPostMessage;

.field private static final enum onPostMessage:Lo/setUserProperties$postMessage$onPostMessage;

.field private static final enum onRelationshipValidationResult:Lo/setUserProperties$postMessage$onPostMessage;

.field private static final enum onTransact:Lo/setUserProperties$postMessage$onPostMessage;


# instance fields
.field private final asInterface:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lo/setUserProperties$postMessage$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "OS_TYPE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/setUserProperties$postMessage$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$postMessage$onPostMessage;->onNavigationEvent:Lo/setUserProperties$postMessage$onPostMessage;

    new-instance v0, Lo/setUserProperties$postMessage$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "OS_TYPE_MAC"

    invoke-direct {v0, v3, v2, v2}, Lo/setUserProperties$postMessage$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$postMessage$onPostMessage;->ICustomTabsCallback:Lo/setUserProperties$postMessage$onPostMessage;

    new-instance v0, Lo/setUserProperties$postMessage$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "OS_TYPE_WINDOWS"

    invoke-direct {v0, v4, v3, v3}, Lo/setUserProperties$postMessage$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$postMessage$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$postMessage$onPostMessage;

    new-instance v0, Lo/setUserProperties$postMessage$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "OS_TYPE_ANDROID"

    invoke-direct {v0, v5, v4, v4}, Lo/setUserProperties$postMessage$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$postMessage$onPostMessage;->extraCallback:Lo/setUserProperties$postMessage$onPostMessage;

    new-instance v0, Lo/setUserProperties$postMessage$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "OS_TYPE_CROS"

    invoke-direct {v0, v6, v5, v5}, Lo/setUserProperties$postMessage$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$postMessage$onPostMessage;->onPostMessage:Lo/setUserProperties$postMessage$onPostMessage;

    new-instance v0, Lo/setUserProperties$postMessage$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "OS_TYPE_LINUX"

    invoke-direct {v0, v7, v6, v6}, Lo/setUserProperties$postMessage$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$postMessage$onPostMessage;->onTransact:Lo/setUserProperties$postMessage$onPostMessage;

    new-instance v0, Lo/setUserProperties$postMessage$onPostMessage;

    const/4 v7, 0x6

    const-string v8, "OS_TYPE_OPENBSD"

    invoke-direct {v0, v8, v7, v7}, Lo/setUserProperties$postMessage$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/setUserProperties$postMessage$onPostMessage;->onRelationshipValidationResult:Lo/setUserProperties$postMessage$onPostMessage;

    const/4 v8, 0x7

    new-array v8, v8, [Lo/setUserProperties$postMessage$onPostMessage;

    sget-object v9, Lo/setUserProperties$postMessage$onPostMessage;->onNavigationEvent:Lo/setUserProperties$postMessage$onPostMessage;

    aput-object v9, v8, v1

    sget-object v1, Lo/setUserProperties$postMessage$onPostMessage;->ICustomTabsCallback:Lo/setUserProperties$postMessage$onPostMessage;

    aput-object v1, v8, v2

    sget-object v1, Lo/setUserProperties$postMessage$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$postMessage$onPostMessage;

    aput-object v1, v8, v3

    sget-object v1, Lo/setUserProperties$postMessage$onPostMessage;->extraCallback:Lo/setUserProperties$postMessage$onPostMessage;

    aput-object v1, v8, v4

    sget-object v1, Lo/setUserProperties$postMessage$onPostMessage;->onPostMessage:Lo/setUserProperties$postMessage$onPostMessage;

    aput-object v1, v8, v5

    sget-object v1, Lo/setUserProperties$postMessage$onPostMessage;->onTransact:Lo/setUserProperties$postMessage$onPostMessage;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lo/setUserProperties$postMessage$onPostMessage;->asBinder:[Lo/setUserProperties$postMessage$onPostMessage;

    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    sput-object v0, Lo/setUserProperties$postMessage$onPostMessage;->ICustomTabsCallback$Stub:Lo/setHierarchy;

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

    iput p3, p0, Lo/setUserProperties$postMessage$onPostMessage;->asInterface:I

    return-void
.end method

.method public static extraCallback(I)Lo/setUserProperties$postMessage$onPostMessage;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lo/setUserProperties$postMessage$onPostMessage;->onRelationshipValidationResult:Lo/setUserProperties$postMessage$onPostMessage;

    return-object p0

    :pswitch_1
    sget-object p0, Lo/setUserProperties$postMessage$onPostMessage;->onTransact:Lo/setUserProperties$postMessage$onPostMessage;

    return-object p0

    :pswitch_2
    sget-object p0, Lo/setUserProperties$postMessage$onPostMessage;->onPostMessage:Lo/setUserProperties$postMessage$onPostMessage;

    return-object p0

    :pswitch_3
    sget-object p0, Lo/setUserProperties$postMessage$onPostMessage;->extraCallback:Lo/setUserProperties$postMessage$onPostMessage;

    return-object p0

    :pswitch_4
    sget-object p0, Lo/setUserProperties$postMessage$onPostMessage;->onMessageChannelReady:Lo/setUserProperties$postMessage$onPostMessage;

    return-object p0

    :pswitch_5
    sget-object p0, Lo/setUserProperties$postMessage$onPostMessage;->ICustomTabsCallback:Lo/setUserProperties$postMessage$onPostMessage;

    return-object p0

    :pswitch_6
    sget-object p0, Lo/setUserProperties$postMessage$onPostMessage;->onNavigationEvent:Lo/setUserProperties$postMessage$onPostMessage;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lo/setUserProperties$postMessage$onPostMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/setUserProperties$postMessage$onPostMessage;->ICustomTabsCallback$Stub:Lo/setHierarchy;

    return-object v0
.end method

.method public static values()[Lo/setUserProperties$postMessage$onPostMessage;
    .locals 1

    sget-object v0, Lo/setUserProperties$postMessage$onPostMessage;->asBinder:[Lo/setUserProperties$postMessage$onPostMessage;

    invoke-virtual {v0}, [Lo/setUserProperties$postMessage$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setUserProperties$postMessage$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/setUserProperties$postMessage$onPostMessage;->asInterface:I

    return v0
.end method
