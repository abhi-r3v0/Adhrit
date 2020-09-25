.class public final Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;
.super Landroidx/work/ListenableWorker;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;",
        "Landroidx/work/ListenableWorker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "getParams",
        "()Landroidx/work/WorkerParameters;",
        "onStartJob",
        "",
        "completer",
        "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;",
        "Landroidx/work/ListenableWorker$Result;",
        "startWork",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;->onMessageChannelReady:Landroidx/work/WorkerParameters;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;Lo/writeToParcel$ICustomTabsCallback;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "AuthRefreshJobService:onStartJob"

    .line 1022
    invoke-static {v1, v0}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 1023
    iget-object p0, p0, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;->onMessageChannelReady:Landroidx/work/WorkerParameters;

    .line 1098
    iget-object p0, p0, Landroidx/work/WorkerParameters;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    .line 1303
    iget-object p0, p0, Lo/PlaybackStateCompat$Builder;->extraCallback:Ljava/util/Map;

    const-string v1, "Access token"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1304
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1305
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 2097
    :cond_0
    sget-object p0, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    if-eqz p0, :cond_1

    .line 1025
    invoke-interface {p0}, Lo/checkCompatWrapper;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1026
    sget-object p0, Lo/directExecutor;->onPostMessage:Lo/directExecutor;

    invoke-virtual {p0, v0}, Lo/directExecutor;->onPostMessage(Ljava/lang/String;)V

    .line 1027
    sget-object p0, Lo/getBridge;->onPostMessage:Lo/getBridge;

    new-instance p0, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker$onMessageChannelReady;

    invoke-direct {p0, p1}, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker$onMessageChannelReady;-><init>(Lo/writeToParcel$ICustomTabsCallback;)V

    check-cast p0, Lo/instantiateReceiver;

    invoke-static {p0}, Lo/getBridge;->onNavigationEvent(Lo/instantiateReceiver;)V

    return-void

    .line 2334
    :cond_1
    new-instance p0, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {p0}, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    .line 1038
    invoke-virtual {p1, p0}, Lo/writeToParcel$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getBatteryLevel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getBatteryLevel<",
            "Landroidx/work/ListenableWorker$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker$extraCallback;

    invoke-direct {v0, p0}, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker$extraCallback;-><init>(Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;)V

    check-cast v0, Lo/writeToParcel$extraCallback;

    invoke-static {v0}, Lo/writeToParcel;->onPostMessage(Lo/writeToParcel$extraCallback;)Lo/getBatteryLevel;

    move-result-object v0

    const-string v1, "CallbackToFutureAdapter.\u2026tJob(completer)\n        }"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
