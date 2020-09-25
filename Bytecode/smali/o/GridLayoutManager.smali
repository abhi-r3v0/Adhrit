.class public final Lo/GridLayoutManager;
.super Lo/setQueue;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001f\u0010\u0003\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/interstitial/InterstitialViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "interstitialLiveData",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/interstitial/InterstitialManager$InterstitialData;",
        "getInterstitialLiveData",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaControllerCompatApi24$TransportControls<",
            "Lo/throwIfInMutationOperation<",
            "Lo/getRowCountForAccessibility$ICustomTabsCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 9
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 11
    new-instance v0, Lo/MediaControllerCompatApi24$TransportControls;

    invoke-direct {v0}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    iput-object v0, p0, Lo/GridLayoutManager;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    .line 14
    new-instance v0, Lo/GridLayoutManager$1;

    invoke-direct {v0, p0}, Lo/GridLayoutManager$1;-><init>(Lo/GridLayoutManager;)V

    .line 22
    iget-object v1, p0, Lo/GridLayoutManager;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object v2, Lo/onLayoutCompleted;->onTransact:Lo/onLayoutCompleted;

    check-cast v2, Landroidx/lifecycle/LiveData;

    new-instance v3, Lo/GridLayoutManager$5;

    invoke-direct {v3, v0}, Lo/GridLayoutManager$5;-><init>(Lo/GridLayoutManager$1;)V

    check-cast v3, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2, v3}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 23
    iget-object v1, p0, Lo/GridLayoutManager;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object v2, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    check-cast v2, Landroidx/lifecycle/LiveData;

    new-instance v3, Lo/GridLayoutManager$3;

    invoke-direct {v3, v0}, Lo/GridLayoutManager$3;-><init>(Lo/GridLayoutManager$1;)V

    check-cast v3, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2, v3}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    return-void
.end method
