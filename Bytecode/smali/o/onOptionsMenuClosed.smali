.class public final Lo/onOptionsMenuClosed;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001aR&\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR(\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/address/AddressDataStore;",
        "",
        "()V",
        "addressData",
        "Landroidx/lifecycle/MediatorLiveData;",
        "",
        "Lcom/dreamplug/fabrik/ui/address/Address;",
        "getAddressData",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "setAddressData",
        "(Landroidx/lifecycle/MediatorLiveData;)V",
        "lifeStyleService",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "getLifeStyleService",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "lifeStyleService$delegate",
        "Lkotlin/Lazy;",
        "networkCall",
        "Lcom/dreamplug/network/helper/NetworkCall;",
        "Lcom/dreamplug/fabrik/ui/address/AddressListResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "getNetworkCall",
        "()Lcom/dreamplug/network/helper/NetworkCall;",
        "setNetworkCall",
        "(Lcom/dreamplug/network/helper/NetworkCall;)V",
        "fetchAddress",
        "",
        "logout",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Lo/isSameListener;

.field private static onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaControllerCompatApi24$TransportControls<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/address/Address;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/onOptionsMenuClosed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lo/onOptionsMenuClosed;

    invoke-direct {v0}, Lo/onOptionsMenuClosed;-><init>()V

    sput-object v0, Lo/onOptionsMenuClosed;->onPostMessage:Lo/onOptionsMenuClosed;

    .line 14
    new-instance v0, Lo/onOptionsMenuClosed$onMessageChannelReady;

    invoke-direct {v0}, Lo/onOptionsMenuClosed$onMessageChannelReady;-><init>()V

    check-cast v0, Lo/MediaControllerCompatApi24$TransportControls;

    .line 24
    sput-object v0, Lo/onOptionsMenuClosed;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object v1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 1000
    sget-object v1, Lo/setSplitTrack;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 24
    check-cast v1, Landroidx/lifecycle/LiveData;

    sget-object v2, Lo/onOptionsMenuClosed$2;->onNavigationEvent:Lo/onOptionsMenuClosed$2;

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 31
    sget-object v0, Lo/onOptionsMenuClosed$onPostMessage;->extraCallback:Lo/onOptionsMenuClosed$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 31
    sput-object v1, Lo/onOptionsMenuClosed;->ICustomTabsCallback:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()V
    .locals 2

    .line 49
    sget-object v0, Lo/onOptionsMenuClosed;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onNavigationEvent()Lo/MediaControllerCompatApi24$TransportControls;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/MediaControllerCompatApi24$TransportControls<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/address/Address;",
            ">;>;"
        }
    .end annotation

    .line 14
    sget-object v0, Lo/onOptionsMenuClosed;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    return-object v0
.end method
