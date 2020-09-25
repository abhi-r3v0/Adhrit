.class public final Lo/onOptionsMenuClosed$onMessageChannelReady;
.super Lo/MediaControllerCompatApi24$TransportControls;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onOptionsMenuClosed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaControllerCompatApi24$TransportControls<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/fabrik/ui/address/Address;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/address/AddressDataStore$addressData$1",
        "Landroidx/lifecycle/MediatorLiveData;",
        "",
        "Lcom/dreamplug/fabrik/ui/address/Address;",
        "onActive",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 2

    .line 16
    invoke-super {p0}, Lo/MediaControllerCompatApi24$TransportControls;->onPostMessage()V

    .line 1320
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 18
    sget-object v0, Lo/onOptionsMenuClosed;->onPostMessage:Lo/onOptionsMenuClosed;

    .line 3000
    sget-object v0, Lo/onOptionsMenuClosed;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeHorizontalScrollExtent;

    .line 2038
    invoke-interface {v0}, Lo/computeHorizontalScrollExtent;->onNavigationEvent()Lo/clearScrap;

    move-result-object v0

    .line 2039
    new-instance v1, Lo/onOptionsMenuClosed$extraCallback;

    invoke-direct {v1}, Lo/onOptionsMenuClosed$extraCallback;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_1
    return-void
.end method
