.class public final Lo/isCompatVectorFromResourcesEnabled;
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0011R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/rewards/gempulldown/ReferredPeopleManager;",
        "",
        "()V",
        "errorData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/androidapp/core/Event;",
        "",
        "getErrorData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "hasMore",
        "isLoading",
        "list",
        "",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
        "getList",
        "()Ljava/util/List;",
        "pageNumber",
        "",
        "referredPersonLiveData",
        "Landroidx/lifecycle/MediatorLiveData;",
        "",
        "getReferredPersonLiveData",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "rewardService",
        "Lcom/dreamplug/androidapp/ui/main/rewards/RewardService;",
        "getRewardService",
        "()Lcom/dreamplug/androidapp/ui/main/rewards/RewardService;",
        "rewardService$delegate",
        "Lkotlin/Lazy;",
        "fetchList",
        "",
        "perPage",
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
.field ICustomTabsCallback:Z

.field private final asBinder:Lo/isSameListener;

.field asInterface:Z

.field extraCallback:I

.field public final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/getThumbTintList<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaControllerCompatApi24$TransportControls<",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
            ">;>;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lo/isCompatVectorFromResourcesEnabled$onNavigationEvent;->onNavigationEvent:Lo/isCompatVectorFromResourcesEnabled$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 16
    iput-object v1, p0, Lo/isCompatVectorFromResourcesEnabled;->asBinder:Lo/isSameListener;

    .line 20
    new-instance v0, Lo/MediaControllerCompatApi24$TransportControls;

    invoke-direct {v0}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    iput-object v0, p0, Lo/isCompatVectorFromResourcesEnabled;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    .line 21
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/isCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/isCompatVectorFromResourcesEnabled;->onPostMessage:Ljava/util/List;

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lo/isCompatVectorFromResourcesEnabled;->extraCallback:I

    .line 25
    iput-boolean v0, p0, Lo/isCompatVectorFromResourcesEnabled;->asInterface:Z

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 3

    .line 28
    iget-boolean v0, p0, Lo/isCompatVectorFromResourcesEnabled;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/isCompatVectorFromResourcesEnabled;->asInterface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lo/isCompatVectorFromResourcesEnabled;->ICustomTabsCallback:Z

    .line 30
    iget-object v0, p0, Lo/isCompatVectorFromResourcesEnabled;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    .line 1000
    iget-object v1, p0, Lo/isCompatVectorFromResourcesEnabled;->asBinder:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getInflatedId;

    .line 31
    iget v2, p0, Lo/isCompatVectorFromResourcesEnabled;->extraCallback:I

    .line 30
    invoke-interface {v1, p1, v2}, Lo/getInflatedId;->onNavigationEvent(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 31
    new-instance v1, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;

    invoke-direct {v1, p0}, Lo/isCompatVectorFromResourcesEnabled$onMessageChannelReady;-><init>(Lo/isCompatVectorFromResourcesEnabled;)V

    check-cast v1, Lo/setPlaybackToRemote;

    .line 30
    invoke-virtual {v0, p1, v1}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    :cond_0
    return-void
.end method
