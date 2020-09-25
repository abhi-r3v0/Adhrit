.class public Lo/MediaControllerCompatApi24$TransportControls;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaControllerCompatApi24$TransportControls$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setActive<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21<",
            "Landroidx/lifecycle/LiveData<",
            "*>;",
            "Lo/MediaControllerCompatApi24$TransportControls$extraCallback<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lo/setActive;-><init>()V

    .line 70
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompatApi24$TransportControls;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;",
            "Lo/setPlaybackToRemote<",
            "-TS;>;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;

    invoke-direct {v0, p1, p2}, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;-><init>(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 87
    iget-object v1, p0, Lo/MediaControllerCompatApi24$TransportControls;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v1, p1, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;

    if-eqz p1, :cond_1

    .line 88
    iget-object v1, p1, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onNavigationEvent:Lo/setPlaybackToRemote;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This source was already added with the different observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-void

    .line 1371
    :cond_2
    iget p1, p0, Landroidx/lifecycle/LiveData;->onNavigationEvent:I

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 2141
    iget-object p1, v0, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onPostMessage:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    :cond_4
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 125
    iget-object v0, p0, Lo/MediaControllerCompatApi24$TransportControls;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;

    .line 3145
    iget-object v2, v1, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onPostMessage:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostMessage()V
    .locals 3

    .line 117
    iget-object v0, p0, Lo/MediaControllerCompatApi24$TransportControls;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;

    .line 3141
    iget-object v2, v1, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onPostMessage:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    goto :goto_0

    :cond_0
    return-void
.end method
