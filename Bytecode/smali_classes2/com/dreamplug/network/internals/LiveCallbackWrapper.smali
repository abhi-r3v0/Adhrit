.class public Lcom/dreamplug/network/internals/LiveCallbackWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;
.implements Lo/createCallback;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "TR;TE;>;",
        "Lo/createCallback;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Runnable;


# direct methods
.method public static synthetic ICustomTabsCallback(Lcom/dreamplug/network/internals/LiveCallbackWrapper;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    const/4 p0, 0x0

    .line 5073
    invoke-interface {p0, p1, p2}, Lo/getScrapDataForType;->extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic onNavigationEvent(Lcom/dreamplug/network/internals/LiveCallbackWrapper;Ljava/lang/Object;)V
    .locals 0

    const/4 p0, 0x0

    .line 6069
    invoke-interface {p0, p1}, Lo/getScrapDataForType;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 0

    const/4 p1, 0x0

    .line 1063
    iget-object p1, p1, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    invoke-interface {p1}, Lo/clearScrap;->ICustomTabsCallback()V

    .line 45
    invoke-virtual {p0}, Lcom/dreamplug/network/internals/LiveCallbackWrapper;->close()V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {v0, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2073
    invoke-interface {v0, p1, p2}, Lo/getScrapDataForType;->extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 54
    :cond_1
    new-instance v0, Lo/scrapView;

    invoke-direct {v0, p0, p1, p2}, Lo/scrapView;-><init>(Lcom/dreamplug/network/internals/LiveCallbackWrapper;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 3031
    iput-object v0, p0, Lcom/dreamplug/network/internals/LiveCallbackWrapper;->ICustomTabsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 3212
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4069
    invoke-interface {v0, p1}, Lo/getScrapDataForType;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_1
    new-instance v0, Lo/recycleViewHolderInternal;

    invoke-direct {v0, p0, p1}, Lo/recycleViewHolderInternal;-><init>(Lcom/dreamplug/network/internals/LiveCallbackWrapper;Ljava/lang/Object;)V

    .line 5031
    iput-object v0, p0, Lcom/dreamplug/network/internals/LiveCallbackWrapper;->ICustomTabsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/dreamplug/network/internals/LiveCallbackWrapper;->ICustomTabsCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/dreamplug/network/internals/LiveCallbackWrapper;->ICustomTabsCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
