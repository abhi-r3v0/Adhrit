.class public final Lo/getTargetCheckedState;
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
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000*\u0001\u0017\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010#\u001a\u00020$R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\t0 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/repository/rewardcity/RewardCities;",
        "",
        "()V",
        "DEFAULT_VALUE",
        "",
        "INCREMENTAL_VALUE",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "delay",
        "getDelay",
        "()J",
        "setDelay",
        "(J)V",
        "isLoading",
        "",
        "()Z",
        "setLoading",
        "(Z)V",
        "privateData",
        "com/dreamplug/androidapp/data/repository/rewardcity/RewardCities$privateData$1",
        "Lcom/dreamplug/androidapp/data/repository/rewardcity/RewardCities$privateData$1;",
        "rewardService",
        "Lcom/dreamplug/androidapp/ui/main/rewards/RewardService;",
        "getRewardService",
        "()Lcom/dreamplug/androidapp/ui/main/rewards/RewardService;",
        "rewardService$delegate",
        "Lkotlin/Lazy;",
        "selectedCityData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getSelectedCityData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "getCities",
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


# static fields
.field private static ICustomTabsCallback:J

.field private static final asBinder:Lo/getTargetCheckedState$onPostMessage;

.field private static extraCallback:Z

.field private static final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/getTargetCheckedState;

.field private static final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lo/getTargetCheckedState;

    invoke-direct {v0}, Lo/getTargetCheckedState;-><init>()V

    sput-object v0, Lo/getTargetCheckedState;->onNavigationEvent:Lo/getTargetCheckedState;

    .line 16
    sget-object v0, Lo/getTargetCheckedState$onNavigationEvent;->ICustomTabsCallback:Lo/getTargetCheckedState$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 16
    sput-object v1, Lo/getTargetCheckedState;->onPostMessage:Lo/isSameListener;

    .line 24
    new-instance v0, Lo/getTargetCheckedState$onMessageChannelReady;

    invoke-direct {v0}, Lo/getTargetCheckedState$onMessageChannelReady;-><init>()V

    check-cast v0, Lo/setActive;

    sput-object v0, Lo/getTargetCheckedState;->onMessageChannelReady:Lo/setActive;

    const-wide/16 v0, 0x7d0

    .line 34
    sput-wide v0, Lo/getTargetCheckedState;->ICustomTabsCallback:J

    .line 36
    new-instance v0, Lo/getTargetCheckedState$onPostMessage;

    invoke-direct {v0}, Lo/getTargetCheckedState$onPostMessage;-><init>()V

    sput-object v0, Lo/getTargetCheckedState;->asBinder:Lo/getTargetCheckedState$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()J
    .locals 2

    .line 34
    sget-wide v0, Lo/getTargetCheckedState;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public static extraCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lo/getTargetCheckedState;->extraCallback:Z

    return-void
.end method

.method public static onMessageChannelReady()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lo/getTargetCheckedState;->asBinder:Lo/getTargetCheckedState$onPostMessage;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public static onNavigationEvent(J)V
    .locals 0

    .line 34
    sput-wide p0, Lo/getTargetCheckedState;->ICustomTabsCallback:J

    return-void
.end method

.method public static onPostMessage()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lo/getTargetCheckedState;->onMessageChannelReady:Lo/setActive;

    return-object v0
.end method

.method public static final synthetic onTransact()Lo/getTargetCheckedState$onPostMessage;
    .locals 1

    .line 12
    sget-object v0, Lo/getTargetCheckedState;->asBinder:Lo/getTargetCheckedState$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 4

    .line 44
    sget-boolean v0, Lo/getTargetCheckedState;->extraCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 45
    sput-boolean v0, Lo/getTargetCheckedState;->extraCallback:Z

    .line 1000
    sget-object v0, Lo/getTargetCheckedState;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getInflatedId;

    .line 46
    invoke-interface {v0}, Lo/getInflatedId;->onMessageChannelReady()Lo/tryBindViewHolderByDeadline;

    move-result-object v0

    new-instance v1, Lo/getTargetCheckedState$ICustomTabsCallback;

    invoke-direct {v1}, Lo/getTargetCheckedState$ICustomTabsCallback;-><init>()V

    check-cast v1, Lo/RecyclerView$Recycler;

    const-string/jumbo v2, "reward city"

    const-string/jumbo v3, "tag"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3044
    iget-object v0, v0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v2, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v2, v1}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_0
    return-void
.end method
