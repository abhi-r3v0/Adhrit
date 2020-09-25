.class public Lo/createVoiceWebSearchIntent;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0010\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0014J\u0015\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u001bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0006X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/threading/LazyHandlerThread;",
        "Landroid/os/HandlerThread;",
        "name",
        "",
        "handlerBuilder",
        "Lkotlin/Function1;",
        "Landroid/os/Handler;",
        "Lcom/datadog/android/core/internal/threading/DeferredHandler;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "deferredHandler",
        "getDeferredHandler$dd_sdk_android_release",
        "()Lcom/datadog/android/core/internal/threading/DeferredHandler;",
        "setDeferredHandler$dd_sdk_android_release",
        "(Lcom/datadog/android/core/internal/threading/DeferredHandler;)V",
        "handler",
        "getHandler$dd_sdk_android_release",
        "()Landroid/os/Handler;",
        "setHandler$dd_sdk_android_release",
        "(Landroid/os/Handler;)V",
        "messagesQueue",
        "Ljava/util/LinkedList;",
        "Ljava/lang/Runnable;",
        "consumeQueue",
        "",
        "onLooperPrepared",
        "post",
        "runnable",
        "post$dd_sdk_android_release",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private volatile ICustomTabsCallback:Landroid/os/Handler;

.field private volatile extraCallback:Lo/launchSuggestion;

.field private final onNavigationEvent:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "Landroid/os/Handler;",
            "Lo/launchSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-object v0, Lo/createVoiceWebSearchIntent$3;->onMessageChannelReady:Lo/createVoiceWebSearchIntent$3;

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-direct {p0, p1, v0}, Lo/createVoiceWebSearchIntent;-><init>(Ljava/lang/String;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/os/Handler;",
            "+",
            "Lo/launchSuggestion;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlerBuilder"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/createVoiceWebSearchIntent;->onPostMessage:Lo/onDisconnectSetValue;

    .line 21
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/createVoiceWebSearchIntent;->onNavigationEvent:Ljava/util/LinkedList;

    return-void
.end method

.method private final ICustomTabsCallback()V
    .locals 1

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/createVoiceWebSearchIntent;->onNavigationEvent:Ljava/util/LinkedList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lo/createVoiceWebSearchIntent;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, v0}, Lo/createVoiceWebSearchIntent;->onMessageChannelReady(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .line 29
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/createVoiceWebSearchIntent;->ICustomTabsCallback:Landroid/os/Handler;

    .line 32
    iget-object v0, p0, Lo/createVoiceWebSearchIntent;->onPostMessage:Lo/onDisconnectSetValue;

    iget-object v1, p0, Lo/createVoiceWebSearchIntent;->ICustomTabsCallback:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v2, "handler"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/launchSuggestion;

    iput-object v0, p0, Lo/createVoiceWebSearchIntent;->extraCallback:Lo/launchSuggestion;

    .line 33
    invoke-direct {p0}, Lo/createVoiceWebSearchIntent;->ICustomTabsCallback()V

    .line 34
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Runnable;)V
    .locals 1

    const-string/jumbo v0, "runnable"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lo/createVoiceWebSearchIntent;->extraCallback:Lo/launchSuggestion;

    if-nez v0, :cond_1

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lo/createVoiceWebSearchIntent;->extraCallback:Lo/launchSuggestion;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/launchSuggestion;->onPostMessage(Ljava/lang/Runnable;)V

    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/createVoiceWebSearchIntent;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 53
    :cond_1
    invoke-interface {v0, p1}, Lo/launchSuggestion;->onPostMessage(Ljava/lang/Runnable;)V

    return-void
.end method
