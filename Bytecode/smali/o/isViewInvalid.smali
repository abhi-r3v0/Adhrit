.class public final Lo/isViewInvalid;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/tabholder/TabHolderViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "connectionLiveData",
        "Landroidx/lifecycle/MediatorLiveData;",
        "",
        "getConnectionLiveData",
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 12
    new-instance v0, Lo/MediaControllerCompatApi24$TransportControls;

    invoke-direct {v0}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    iput-object v0, p0, Lo/isViewInvalid;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    .line 15
    new-instance v0, Lo/isViewInvalid$onPostMessage;

    invoke-direct {v0, p0}, Lo/isViewInvalid$onPostMessage;-><init>(Lo/isViewInvalid;)V

    check-cast v0, Lo/setPlaybackToRemote;

    .line 20
    iget-object v1, p0, Lo/isViewInvalid;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object v2, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    check-cast v2, Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, v2, v0}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 21
    iget-object v1, p0, Lo/isViewInvalid;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object v2, Lo/getParentFragmentManager;->onTransact:Lo/getParentFragmentManager;

    check-cast v2, Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, v2, v0}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    return-void
.end method
