.class public final Lo/setOnInflateListener;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0006\u0010\u0010\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001f\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/rating/GetRatingUseCase;",
        "",
        "ratingId",
        "",
        "campaignId",
        "eventAttributes",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V",
        "getCampaignId",
        "()Ljava/lang/String;",
        "getEventAttributes",
        "()Ljava/util/Map;",
        "getRatingResponse",
        "Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;",
        "ratingService",
        "Lcom/dreamplug/androidapp/ui/rating/RatingService;",
        "show",
        "",
        "fetch",
        "",
        "showDialog",
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
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:Z

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/getLayoutResource;

.field onPostMessage:Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ratingId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignId"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventAttributes"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setOnInflateListener;->onMessageChannelReady:Ljava/lang/String;

    iput-object p2, p0, Lo/setOnInflateListener;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/setOnInflateListener;->asBinder:Ljava/util/Map;

    .line 14
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 48
    sget-object p1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    const-class p1, Lo/getLayoutResource;

    const-string p2, "cls"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    sget-object p2, Lo/getScrapCount;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/NodeFromJSON;

    .line 1083
    invoke-virtual {p2, p1}, Lo/NodeFromJSON;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 48
    check-cast p1, Lo/getLayoutResource;

    iput-object p1, p0, Lo/setOnInflateListener;->onNavigationEvent:Lo/getLayoutResource;

    .line 2023
    iget-object p2, p0, Lo/setOnInflateListener;->onMessageChannelReady:Ljava/lang/String;

    invoke-interface {p1, p2}, Lo/getLayoutResource;->onNavigationEvent(Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 2024
    sget-object p2, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0xe

    invoke-static/range {v0 .. v6}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 2025
    new-instance p2, Lo/setOnInflateListener$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/setOnInflateListener$onMessageChannelReady;-><init>(Lo/setOnInflateListener;)V

    check-cast p2, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, p2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 37
    iget-boolean v0, p0, Lo/setOnInflateListener;->extraCallback:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setOnInflateListener;->onPostMessage:Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    iget-object v0, p0, Lo/setOnInflateListener;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0}, Lo/openOptionsMenu;->extraCallback(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lo/hitThumb;->asBinder:Lo/hitThumb;

    new-instance v1, Lo/onDismiss$onMessageChannelReady;

    iget-object v2, p0, Lo/setOnInflateListener;->onPostMessage:Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;

    if-nez v2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iget-object v3, p0, Lo/setOnInflateListener;->asBinder:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lo/onDismiss$onMessageChannelReady;-><init>(Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;Ljava/util/Map;)V

    check-cast v1, Lo/cancelPositionAnimator;

    const-string v2, "inAppData"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    new-instance v2, Lo/getThumbTintList;

    invoke-direct {v2, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
