.class public final Lo/superGetDrawable;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0012\u0010\u0012\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/gem/referral/referee/RefereeLinker;",
        "",
        "()V",
        "campaignService",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignService;",
        "getCampaignService",
        "()Lcom/dreamplug/androidapp/data/repository/campaign/CampaignService;",
        "campaignService$delegate",
        "Lkotlin/Lazy;",
        "failCount",
        "",
        "isCalling",
        "",
        "link",
        "",
        "code",
        "",
        "referralCampaignId",
        "shouldRetry",
        "errorResponse",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field public static final ICustomTabsCallback:Lo/superGetDrawable;

.field private static final extraCallback:Lo/isSameListener;

.field private static onNavigationEvent:I

.field private static onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lo/superGetDrawable;

    invoke-direct {v0}, Lo/superGetDrawable;-><init>()V

    sput-object v0, Lo/superGetDrawable;->ICustomTabsCallback:Lo/superGetDrawable;

    .line 14
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 59
    sget-object v0, Lo/superGetDrawable$extraCallback;->onPostMessage:Lo/superGetDrawable$extraCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 59
    sput-object v1, Lo/superGetDrawable;->extraCallback:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(I)V
    .locals 0

    .line 12
    sput p0, Lo/superGetDrawable;->onNavigationEvent:I

    return-void
.end method

.method public static final synthetic extraCallback()I
    .locals 1

    .line 12
    sget v0, Lo/superGetDrawable;->onNavigationEvent:I

    return v0
.end method

.method public static final synthetic extraCallback(Lcom/dreamplug/utils/model/BaseResponse;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 7054
    invoke-static {}, Lo/TooltipCompat;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final synthetic onPostMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lo/superGetDrawable;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "code"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 1000
    sget-object v0, Lo/setTrackTintMode;->setDefaultImpl:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    sget v0, Lo/superGetDrawable;->onNavigationEvent:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-boolean v0, Lo/superGetDrawable;->onPostMessage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lo/superGetDrawable;->onPostMessage:Z

    .line 2000
    sget-object v1, Lo/superGetDrawable;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setShowText;

    const/4 v2, 0x2

    new-array v2, v2, [Lo/addWrite;

    const/4 v3, 0x0

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string v5, "referral_code"

    invoke-direct {v4, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string v4, "campaign_id"

    invoke-direct {v3, v4, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    .line 22
    invoke-static {v2}, Lo/lambda$onError$1;->onMessageChannelReady([Lo/addWrite;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/setShowText;->extraCallback(Ljava/util/Map;)Lo/tryBindViewHolderByDeadline;

    move-result-object v0

    .line 26
    new-instance v1, Lo/superGetDrawable$onMessageChannelReady;

    invoke-direct {v1, p1, p2}, Lo/superGetDrawable$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lo/RecyclerView$Recycler;

    const-string p1, "linkReferral"

    const-string/jumbo p2, "tag"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6044
    iget-object p1, v0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance p2, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {p2, v1}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast p2, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, p2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_0
    return-void
.end method
