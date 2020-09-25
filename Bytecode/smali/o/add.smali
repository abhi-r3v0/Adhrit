.class public final Lo/add;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/add$ICustomTabsCallback;,
        Lo/add$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000e\u001a\u00020\u000fJ4\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017J \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000bJ\u0010\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000bH\u0002J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000bJ(\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0005H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/upi/commandmanager/UpiCommandManager;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callbacks",
        "Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;",
        "(Landroid/app/Activity;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V",
        "axisUpi",
        "Lcom/axis/axismerchantsdk/AxisUpi;",
        "timeoutMap",
        "",
        "",
        "",
        "upiSdkCallback",
        "destroySdk",
        "",
        "executeCommand",
        "command",
        "requestPayload",
        "Lorg/json/JSONObject;",
        "localCallback",
        "requestId",
        "retryStrategy",
        "Lcom/dreamplug/upi/commandmanager/UpiCommandManager$RetryStrategy;",
        "getCommandTimeout",
        "getLastSessionTokenSuccessResponse",
        "returnResponse",
        "response",
        "Companion",
        "RetryStrategy",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final asInterface:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

.field public static final extraCallback:Lo/add$onPostMessage;

.field public static onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# instance fields
.field private ICustomTabsCallback:Lcom/axis/axismerchantsdk/AxisUpi;

.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

.field private final onRelationshipValidationResult:Landroid/app/Activity;

.field private final onTransact:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/add$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/add$onPostMessage;-><init>(B)V

    sput-object v0, Lo/add;->extraCallback:Lo/add$onPostMessage;

    .line 136
    sget-object v0, Lo/add$onMessageChannelReady;->onPostMessage:Lo/add$onMessageChannelReady;

    check-cast v0, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    sput-object v0, Lo/add;->asInterface:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/add;->onRelationshipValidationResult:Landroid/app/Activity;

    iput-object p2, p0, Lo/add;->onTransact:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    .line 20
    sget-object p1, Lo/SnapHelper;->extraCallback:Lo/SnapHelper;

    invoke-static {}, Lo/SnapHelper;->onNavigationEvent()Lo/onChangeFinished;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/onChangeFinished;->onNavigationEvent()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lo/add;->onNavigationEvent:Ljava/util/Map;

    const-string p1, "SDK_INIT"

    .line 23
    invoke-direct {p0, p1}, Lo/add;->onMessageChannelReady(Ljava/lang/String;)D

    move-result-wide v0

    .line 24
    new-instance p1, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p1}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object p2, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_1

    .line 27
    new-instance p2, Lo/add$2;

    invoke-direct {p2, p0}, Lo/add$2;-><init>(Lo/add;)V

    check-cast p2, Ljava/lang/Runnable;

    iput-object p2, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 34
    sget-object p2, Lo/addAll;->ICustomTabsCallback:Lo/addAll;

    iget-object v2, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v3

    double-to-long v0, v0

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :cond_1
    new-instance p2, Lo/add$4;

    invoke-direct {p2, p0, p1}, Lo/add$4;-><init>(Lo/add;Lo/toDebugString$ICustomTabsCallback;)V

    check-cast p2, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    iput-object p2, p0, Lo/add;->onPostMessage:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    .line 42
    sput-object p2, Lo/add;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    .line 43
    new-instance p1, Lcom/axis/axismerchantsdk/AxisUpi;

    iget-object p2, p0, Lo/add;->onRelationshipValidationResult:Landroid/app/Activity;

    check-cast p2, Landroid/content/Context;

    sget-object v0, Lo/add;->asInterface:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    invoke-direct {p1, p2, v0}, Lcom/axis/axismerchantsdk/AxisUpi;-><init>(Landroid/content/Context;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V

    iput-object p1, p0, Lo/add;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/AxisUpi;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/add;)Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/add;->onTransact:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V
    .locals 0

    .line 2101
    invoke-interface {p3, p0, p2, p1}, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;->onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GET_SESSION_TOKEN"

    .line 2103
    invoke-static {p2, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "status"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "SUCCESS"

    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2104
    sget-object p1, Lo/addAll;->ICustomTabsCallback:Lo/addAll;

    new-instance p3, Lo/add$onTransact;

    invoke-direct {p3, p0}, Lo/add$onTransact;-><init>(Lorg/json/JSONObject;)V

    check-cast p3, Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2108
    :cond_0
    sget-object p1, Lo/snapToTargetExistingView;->onNavigationEvent:Lo/snapToTargetExistingView;

    invoke-static {p2, p0}, Lo/snapToTargetExistingView;->onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic extraCallback(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "UUID.randomUUID().toString()"

    invoke-static {v5, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPayload"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {v5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    iget-object v4, p0, Lo/add;->onTransact:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lo/add;->onMessageChannelReady(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;Ljava/lang/String;Lo/add$ICustomTabsCallback;I)V

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)D
    .locals 4

    .line 117
    sget-object v0, Lo/SortedList;->ICustomTabsCallback:Lo/SortedList;

    invoke-static {}, Lo/SortedList;->onPostMessage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 118
    :cond_0
    iget-object v0, p0, Lo/add;->onNavigationEvent:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 119
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v3, 0x4081d615

    if-eq v0, v3, :cond_3

    const v3, 0x75141187

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "GET_SESSION_TOKEN"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    return-wide v0

    :cond_3
    const-string v0, "SDK_INIT"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    return-wide v0

    :cond_4
    :goto_0
    return-wide v1
.end method

.method public static final synthetic onMessageChannelReady(Lo/add;)Lcom/axis/axismerchantsdk/AxisUpi;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/add;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/AxisUpi;

    return-object p0
.end method

.method public static onMessageChannelReady()Ljava/lang/String;
    .locals 3

    .line 112
    sget-object v0, Lo/onRemoveFinished;->onPostMessage:Lo/onRemoveFinished;

    .line 2000
    sget-object v0, Lo/onRemoveFinished;->extraCallback:Lo/SortedList$BatchedCallback;

    sget-object v1, Lo/onRemoveFinished;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/SortedListAdapterCallback;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static synthetic onMessageChannelReady(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;Ljava/lang/String;Lo/add$ICustomTabsCallback;I)V
    .locals 7

    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "UUID.randomUUID().toString()"

    invoke-static {p4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v5, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 62
    invoke-virtual/range {v1 .. v6}, Lo/add;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;Ljava/lang/String;Lo/add$ICustomTabsCallback;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/add;)Landroid/app/Activity;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/add;->onRelationshipValidationResult:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic onPostMessage()Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;
    .locals 1

    .line 14
    sget-object v0, Lo/add;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;Ljava/lang/String;Lo/add$ICustomTabsCallback;)V
    .locals 10

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPayload"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localCallback"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lo/snapToTargetExistingView;->onNavigationEvent:Lo/snapToTargetExistingView;

    invoke-static {p1, p2}, Lo/snapToTargetExistingView;->onPostMessage(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "command :- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  payload :- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "upi_command_request"

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1}, Lo/add;->onMessageChannelReady(Ljava/lang/String;)D

    move-result-wide v0

    .line 66
    new-instance v8, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v8}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 69
    new-instance v2, Lo/add$onNavigationEvent;

    invoke-direct {v2, p0, p4, p1, p3}, Lo/add$onNavigationEvent;-><init>(Lo/add;Ljava/lang/String;Ljava/lang/String;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V

    check-cast v2, Ljava/lang/Runnable;

    iput-object v2, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 76
    sget-object v2, Lo/addAll;->ICustomTabsCallback:Lo/addAll;

    iget-object v3, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Runnable;

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v4

    double-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    :cond_0
    iget-object v0, p0, Lo/add;->onRelationshipValidationResult:Landroid/app/Activity;

    new-instance v1, Lo/add$extraCallback;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lo/add$extraCallback;-><init>(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lo/add$ICustomTabsCallback;Lo/toDebugString$ICustomTabsCallback;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
