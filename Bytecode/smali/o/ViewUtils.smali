.class public final Lo/ViewUtils;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/rating/RatingUpdater;",
        "",
        "()V",
        "ratingService",
        "Lcom/dreamplug/androidapp/ui/rating/RatingService;",
        "updateRating",
        "",
        "setRatingBody",
        "Lcom/dreamplug/androidapp/ui/rating/SetRatingBody;",
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
.field private final onPostMessage:Lo/getLayoutResource;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 22
    sget-object v0, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    const-class v0, Lo/getLayoutResource;

    const-string v1, "cls"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    sget-object v1, Lo/getScrapCount;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/NodeFromJSON;

    .line 1083
    invoke-virtual {v1, v0}, Lo/NodeFromJSON;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lo/getLayoutResource;

    iput-object v0, p0, Lo/ViewUtils;->onPostMessage:Lo/getLayoutResource;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/dreamplug/androidapp/ui/rating/SetRatingBody;)V
    .locals 8

    const-string/jumbo v0, "setRatingBody"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lo/ViewUtils;->onPostMessage:Lo/getLayoutResource;

    invoke-interface {v0, p1}, Lo/getLayoutResource;->extraCallback(Lcom/dreamplug/androidapp/ui/rating/SetRatingBody;)Lo/clearScrap;

    move-result-object p1

    sget-object v0, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xe

    invoke-static/range {v1 .. v7}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    new-instance v0, Lo/ViewUtils$onPostMessage;

    invoke-direct {v0}, Lo/ViewUtils$onPostMessage;-><init>()V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
