.class public final Lo/getBottomDecorationHeight;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020 J\u0016\u0010\"\u001a\u00020 2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00080$H\u0002R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_unverifiedCardsListItemData",
        "Landroidx/lifecycle/MediatorLiveData;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "controlService",
        "Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "getControlService",
        "()Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "controlService$delegate",
        "Lkotlin/Lazy;",
        "paymentModeListResponse",
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;",
        "getPaymentModeListResponse",
        "()Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;",
        "setPaymentModeListResponse",
        "(Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;)V",
        "unverifiedCardCount",
        "",
        "getUnverifiedCardCount",
        "()I",
        "setUnverifiedCardCount",
        "(I)V",
        "unverifiedCardsListItemData",
        "Landroidx/lifecycle/LiveData;",
        "getUnverifiedCardsListItemData",
        "()Landroidx/lifecycle/LiveData;",
        "fetchCardList",
        "",
        "refreshList",
        "updateList",
        "unverifiedCards",
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


# instance fields
.field private final ICustomTabsCallback:Lo/isSameListener;

.field public final extraCallback:Lo/MediaControllerCompatApi24$TransportControls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaControllerCompatApi24$TransportControls<",
            "Ljava/util/List<",
            "Lo/StaggeredGridLayoutManager;",
            ">;>;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;

.field public onNavigationEvent:I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 24
    new-instance p1, Lo/MediaControllerCompatApi24$TransportControls;

    invoke-direct {p1}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    iput-object p1, p0, Lo/getBottomDecorationHeight;->extraCallback:Lo/MediaControllerCompatApi24$TransportControls;

    .line 26
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 71
    sget-object p1, Lo/getBottomDecorationHeight$onMessageChannelReady;->ICustomTabsCallback:Lo/getBottomDecorationHeight$onMessageChannelReady;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 71
    iput-object v0, p0, Lo/getBottomDecorationHeight;->ICustomTabsCallback:Lo/isSameListener;

    .line 30
    iget-object p1, p0, Lo/getBottomDecorationHeight;->extraCallback:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    .line 5000
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 30
    check-cast v0, Landroidx/lifecycle/LiveData;

    new-instance v1, Lo/getBottomDecorationHeight$1;

    invoke-direct {v1, p0}, Lo/getBottomDecorationHeight$1;-><init>(Lo/getBottomDecorationHeight;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 9

    .line 1000
    iget-object v0, p0, Lo/getBottomDecorationHeight;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMainThreadExecutor;

    .line 44
    invoke-interface {v0}, Lo/getMainThreadExecutor;->ICustomTabsCallback$Stub()Lo/clearScrap;

    move-result-object v0

    .line 45
    sget-object v1, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xf

    invoke-static/range {v2 .. v8}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 46
    new-instance v1, Lo/getBottomDecorationHeight$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/getBottomDecorationHeight$ICustomTabsCallback;-><init>(Lo/getBottomDecorationHeight;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 7

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 61
    iget-object v1, p0, Lo/getBottomDecorationHeight;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;->onPostMessage:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lo/getBottomDecorationHeight;->onNavigationEvent:I

    .line 62
    iget-object v1, p0, Lo/getBottomDecorationHeight;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;

    if-eqz v1, :cond_2

    .line 2009
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;->onPostMessage:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 62
    check-cast v1, Ljava/lang/Iterable;

    .line 69
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 63
    new-instance v5, Lo/getDecoratedRight;

    iget v6, p0, Lo/getBottomDecorationHeight;->onNavigationEvent:I

    invoke-direct {v5, v3, v2, v6}, Lo/getDecoratedRight;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_1

    .line 2441
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 3038
    :cond_2
    iget-object v1, p0, Lo/getBottomDecorationHeight;->extraCallback:Lo/MediaControllerCompatApi24$TransportControls;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
