.class public final Lo/endAnimation$extraCallback$1;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/endAnimation$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/digest/DigestRepository$stories$2$1",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "onActive",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 9

    .line 21
    invoke-super {p0}, Lo/setActive;->onPostMessage()V

    .line 1320
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 23
    sget-object v0, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 3000
    sget-object v0, Lo/endAnimation;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/removeAndRecycleView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const-string v3, "digest"

    .line 2035
    invoke-static/range {v1 .. v6}, Lo/removeAndRecycleView$onNavigationEvent;->onPostMessage(Lo/removeAndRecycleView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lo/clearScrap;

    move-result-object v0

    .line 2036
    sget-object v1, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xf

    invoke-static/range {v2 .. v8}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 2037
    new-instance v1, Lo/endAnimation$onNavigationEvent;

    invoke-direct {v1}, Lo/endAnimation$onNavigationEvent;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_1
    return-void
.end method
