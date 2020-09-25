.class public final Lo/onPanelClosed;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nR\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R#\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0008\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R!\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00168FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0008\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u001a\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0014R!\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00168FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0008\u001a\u0004\u0008\u001d\u0010\u0018\u00a8\u0006\""
    }
    d2 = {
        "Lclub/cred/credcurrency/CredPointsCount;",
        "",
        "()V",
        "credPointService",
        "Lclub/cred/credcurrency/CredPointsService;",
        "getCredPointService",
        "()Lclub/cred/credcurrency/CredPointsService;",
        "credPointService$delegate",
        "Lkotlin/Lazy;",
        "pointLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lclub/cred/credcurrency/CredPointCountModel;",
        "getPointLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "pointLiveData$delegate",
        "pointLiveDataWithoutRefreshInvoke",
        "getPointLiveDataWithoutRefreshInvoke",
        "userCoin",
        "",
        "getUserCoin",
        "()J",
        "userCoinsData",
        "Landroidx/lifecycle/LiveData;",
        "getUserCoinsData",
        "()Landroidx/lifecycle/LiveData;",
        "userCoinsData$delegate",
        "userGem",
        "getUserGem",
        "userGemsData",
        "getUserGemsData",
        "userGemsData$delegate",
        "clear",
        "",
        "refresh",
        "credCurrency_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lclub/cred/credcurrency/CredPointCountModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final asBinder:Lo/isSameListener;

.field public static final extraCallback:Lo/isSameListener;

.field public static final onMessageChannelReady:Lo/isSameListener;

.field public static final onNavigationEvent:Lo/isSameListener;

.field public static final onPostMessage:Lo/onPanelClosed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lo/onPanelClosed;

    invoke-direct {v0}, Lo/onPanelClosed;-><init>()V

    sput-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    .line 12
    sget-object v0, Lo/onPanelClosed$onPostMessage;->ICustomTabsCallback:Lo/onPanelClosed$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 12
    sput-object v2, Lo/onPanelClosed;->asBinder:Lo/isSameListener;

    .line 16
    sget-object v0, Lo/onPanelClosed$ICustomTabsCallback;->onNavigationEvent:Lo/onPanelClosed$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 16
    sput-object v2, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    .line 30
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/onPanelClosed;->ICustomTabsCallback:Lo/setActive;

    .line 32
    sget-object v0, Lo/onPanelClosed$extraCallback;->onPostMessage:Lo/onPanelClosed$extraCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 32
    sput-object v2, Lo/onPanelClosed;->onMessageChannelReady:Lo/isSameListener;

    .line 39
    sget-object v0, Lo/onPanelClosed$onNavigationEvent;->extraCallback:Lo/onPanelClosed$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 39
    sput-object v1, Lo/onPanelClosed;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Lclub/cred/credcurrency/CredPointCountModel;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lo/onPanelClosed;->ICustomTabsCallback:Lo/setActive;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 1000
    sget-object v0, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    check-cast v0, Lclub/cred/credcurrency/CredPointCountModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lclub/cred/credcurrency/CredPointCountModel;->ICustomTabsCallback()Lclub/cred/credcurrency/CredPointModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2012
    iget-wide v0, v0, Lclub/cred/credcurrency/CredPointModel;->ICustomTabsCallback:J

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onNavigationEvent()Lo/setActive;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Lclub/cred/credcurrency/CredPointCountModel;",
            ">;"
        }
    .end annotation

    .line 5000
    sget-object v0, Lo/onPanelClosed;->asBinder:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/performMenuItemShortcut;

    .line 58
    invoke-interface {v0}, Lo/performMenuItemShortcut;->ICustomTabsCallback()Lo/tryBindViewHolderByDeadline;

    move-result-object v0

    new-instance v1, Lo/onPanelClosed$onMessageChannelReady;

    invoke-direct {v1}, Lo/onPanelClosed$onMessageChannelReady;-><init>()V

    check-cast v1, Lo/RecyclerView$Recycler;

    const-string v2, "credPointsLastSeen"

    const-string/jumbo v3, "tag"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7044
    iget-object v0, v0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v2, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v2, v1}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 8000
    sget-object v0, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    return-object v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 3000
    sget-object v0, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 3320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    check-cast v0, Lclub/cred/credcurrency/CredPointCountModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lclub/cred/credcurrency/CredPointCountModel;->onPostMessage()Lclub/cred/credcurrency/CredPointModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4012
    iget-wide v0, v0, Lclub/cred/credcurrency/CredPointModel;->ICustomTabsCallback:J

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method
