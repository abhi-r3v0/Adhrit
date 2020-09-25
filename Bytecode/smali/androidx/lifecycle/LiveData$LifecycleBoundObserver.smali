.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$extraCallback;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.extraCallback;",
        "Lo/MediaControllerCompatApi23;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/toLegacyStreamType;

.field final synthetic onPostMessage:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/toLegacyStreamType;",
            "Lo/setPlaybackToRemote<",
            "-TT;>;)V"
        }
    .end annotation

    .line 378
    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->onPostMessage:Landroidx/lifecycle/LiveData;

    .line 379
    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/LiveData$extraCallback;-><init>(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 380
    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Lo/toLegacyStreamType;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/toLegacyStreamType;)Z
    .locals 1

    .line 400
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Lo/toLegacyStreamType;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 0

    .line 391
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Lo/toLegacyStreamType;

    invoke-interface {p1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    sget-object p2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-ne p1, p2, :cond_0

    .line 392
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->onPostMessage:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$extraCallback;->onNavigationEvent:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    return-void

    .line 1385
    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Lo/toLegacyStreamType;

    invoke-interface {p1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    sget-object p2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 395
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->onNavigationEvent(Z)V

    return-void
.end method

.method final onMessageChannelReady()Z
    .locals 2

    .line 385
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Lo/toLegacyStreamType;

    invoke-interface {v0}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final onNavigationEvent()V
    .locals 1

    .line 405
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->ICustomTabsCallback:Lo/toLegacyStreamType;

    invoke-interface {v0}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void
.end method
