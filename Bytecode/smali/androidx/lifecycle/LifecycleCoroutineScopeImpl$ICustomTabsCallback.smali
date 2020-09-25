.class public final Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LifecycleCoroutineScopeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/postEvents;",
        "Lo/nextTransactionOrder<",
        "Lo/isFromUser;",
        "Lo/setSessionPersistenceKey<",
        "-",
        "Lo/addWrites;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private onMessageChannelReady:Lo/isFromUser;

.field final synthetic onNavigationEvent:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;->onNavigationEvent:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    invoke-direct {p0, p2}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 1126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_2

    .line 117
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;->onMessageChannelReady:Lo/isFromUser;

    .line 118
    iget-object v0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;->onNavigationEvent:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 2104
    iget-object v0, v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    .line 118
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 119
    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;->onNavigationEvent:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 3104
    iget-object p1, p1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    .line 119
    iget-object v0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;->onNavigationEvent:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {p1}, Lo/isFromUser;->onPostMessage()Lo/isZombied;

    move-result-object p1

    .line 5563
    sget-object v0, Lo/assertValidTrackedQuery;->onNavigationEvent:Lo/assertValidTrackedQuery$onNavigationEvent;

    check-cast v0, Lo/isZombied$extraCallback;

    invoke-interface {p1, v0}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/assertValidTrackedQuery;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/assertValidTrackedQuery;->onNavigationEvent(Ljava/util/concurrent/CancellationException;)V

    .line 123
    :cond_1
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_2
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lo/setSessionPersistenceKey;

    const-string v0, "completion"

    .line 6000
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;

    iget-object v1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;->onNavigationEvent:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    invoke-direct {v0, v1, p2}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;-><init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;->onMessageChannelReady:Lo/isFromUser;

    check-cast v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;

    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setSessionPersistenceKey<",
            "*>;)",
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;

    iget-object v1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;->onNavigationEvent:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    invoke-direct {v0, v1, p2}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;-><init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$ICustomTabsCallback;->onMessageChannelReady:Lo/isFromUser;

    return-object v0
.end method
