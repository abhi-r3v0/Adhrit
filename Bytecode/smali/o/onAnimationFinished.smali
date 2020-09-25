.class public final Lo/onAnimationFinished;
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004J%\u0010\u0019\u001a\u00020\u00152\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00150\u001bH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJ\u001c\u0010\u001d\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u00110\u001eJ\u0006\u0010\u001f\u001a\u00020\u0015J\u0006\u0010 \u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\'\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u00110\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/NewRemoteControlViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "REMOTE_CONTROL_CACHE",
        "",
        "cacheExists",
        "",
        "rcService",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "getRcService",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "rcService$delegate",
        "Lkotlin/Lazy;",
        "remoteControlList",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lkotlin/collections/ArrayList;",
        "getRemoteControlList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "ack",
        "",
        "externalId",
        "section",
        "tag",
        "doesCacheExists",
        "result",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRemoteList",
        "Landroidx/lifecycle/LiveData;",
        "refresh",
        "showLoader",
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
.field final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/util/ArrayList<",
            "Lo/StaggeredGridLayoutManager;",
            ">;>;"
        }
    .end annotation
.end field

.field final extraCallback:Lo/isSameListener;

.field final onMessageChannelReady:Ljava/lang/String;

.field onNavigationEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    const-string v0, "remote_control_v2"

    .line 32
    iput-object v0, p0, Lo/onAnimationFinished;->onMessageChannelReady:Ljava/lang/String;

    .line 36
    invoke-static {}, Lo/setTrackedQueryKeys;->onPostMessage()Lo/zombifyForRemove;

    move-result-object v0

    check-cast v0, Lo/isZombied;

    invoke-static {v0}, Lo/extraCallback;->onNavigationEvent(Lo/isZombied;)Lo/isFromUser;

    move-result-object v0

    new-instance v1, Lo/onAnimationFinished$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/onAnimationFinished$5;-><init>(Lo/onAnimationFinished;Lo/setSessionPersistenceKey;)V

    check-cast v1, Lo/nextTransactionOrder;

    const/4 v3, 0x3

    .line 1001
    invoke-static {v0, v2, v2, v1, v3}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    .line 43
    sget-object v0, Lo/onAnimationFinished$extraCallback;->onMessageChannelReady:Lo/onAnimationFinished$extraCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 43
    iput-object v1, p0, Lo/onAnimationFinished;->extraCallback:Lo/isSameListener;

    .line 47
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/onAnimationFinished;->ICustomTabsCallback:Lo/setActive;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/onAnimationFinished;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lo/onAnimationFinished;->onNavigationEvent:Z

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/onAnimationFinished;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lo/onAnimationFinished;->onNavigationEvent:Z

    return p0
.end method
