.class public final Lo/getShowText;
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
        "\u0000E\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0019J\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0012J\u0006\u0010\u001e\u001a\u00020\u0019R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u000b\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignDataRepository;",
        "",
        "()V",
        "_data",
        "com/dreamplug/androidapp/data/repository/campaign/CampaignDataRepository$_data$1",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignDataRepository$_data$1;",
        "campaignService",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignService;",
        "getCampaignService",
        "()Lcom/dreamplug/androidapp/data/repository/campaign/CampaignService;",
        "campaignService$delegate",
        "Lkotlin/Lazy;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "isRefreshing",
        "",
        "rewardService",
        "Lcom/dreamplug/androidapp/ui/main/rewards/RewardService;",
        "getRewardService",
        "()Lcom/dreamplug/androidapp/ui/main/rewards/RewardService;",
        "rewardService$delegate",
        "clear",
        "",
        "fetchIfNeeded",
        "getIntroData",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignIntroDetails;",
        "haveValidCampaign",
        "refresh",
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
.field public static final ICustomTabsCallback:Lo/getShowText;

.field private static final onMessageChannelReady:Lo/isSameListener;

.field private static onNavigationEvent:Z

.field public static final onPostMessage:Lo/getShowText$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lo/getShowText;

    invoke-direct {v0}, Lo/getShowText;-><init>()V

    sput-object v0, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    .line 18
    new-instance v0, Lo/getShowText$extraCallback;

    invoke-direct {v0}, Lo/getShowText$extraCallback;-><init>()V

    sput-object v0, Lo/getShowText;->onPostMessage:Lo/getShowText$extraCallback;

    .line 27
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 68
    sget-object v0, Lo/getShowText$ICustomTabsCallback;->onPostMessage:Lo/getShowText$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 68
    sput-object v2, Lo/getShowText;->onMessageChannelReady:Lo/isSameListener;

    .line 28
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 69
    sget-object v0, Lo/getShowText$onMessageChannelReady;->onPostMessage:Lo/getShowText$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lo/getShowText;->onPostMessage:Lo/getShowText$extraCallback;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public static final synthetic ICustomTabsCallback$Stub()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lo/getShowText;->onNavigationEvent:Z

    return-void
.end method

.method public static final synthetic asInterface()Z
    .locals 1

    .line 14
    sget-boolean v0, Lo/getShowText;->onNavigationEvent:Z

    return v0
.end method

.method public static final synthetic extraCallback()Lo/getShowText$extraCallback;
    .locals 1

    .line 14
    sget-object v0, Lo/getShowText;->onPostMessage:Lo/getShowText$extraCallback;

    return-object v0
.end method

.method public static onMessageChannelReady()V
    .locals 2

    .line 65
    sget-object v0, Lo/getShowText;->onPostMessage:Lo/getShowText$extraCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onPostMessage()Z
    .locals 6

    .line 4017
    sget-object v0, Lo/getShowText;->onPostMessage:Lo/getShowText$extraCallback;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 4320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    check-cast v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "Calendar.getInstance()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    if-eqz v0, :cond_1

    .line 5018
    iget-wide v3, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->ICustomTabsCallback:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_1

    .line 5021
    iget-wide v3, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->asInterface:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 4

    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lo/getShowText;->onNavigationEvent:Z

    .line 1000
    sget-object v0, Lo/getShowText;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setShowText;

    .line 33
    invoke-interface {v0}, Lo/setShowText;->onPostMessage()Lo/tryBindViewHolderByDeadline;

    move-result-object v0

    new-instance v1, Lo/getShowText$onPostMessage;

    invoke-direct {v1}, Lo/getShowText$onPostMessage;-><init>()V

    check-cast v1, Lo/RecyclerView$Recycler;

    const-string v2, "campaignService"

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

    return-void
.end method
