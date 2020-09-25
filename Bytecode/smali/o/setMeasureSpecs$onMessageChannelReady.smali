.class public final Lo/setMeasureSpecs$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setMeasureSpecs;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;",
        "Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/max/MaxLandingViewModel$response$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field private synthetic onMessageChannelReady:Lo/setMeasureSpecs;


# direct methods
.method constructor <init>(Lo/setMeasureSpecs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lo/setMeasureSpecs$onMessageChannelReady;->onMessageChannelReady:Lo/setMeasureSpecs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;",
            "Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lo/setMeasureSpecs$onMessageChannelReady;->onMessageChannelReady:Lo/setMeasureSpecs;

    invoke-static {v0}, Lo/setMeasureSpecs;->onNavigationEvent(Lo/setMeasureSpecs;)Lo/setActive;

    move-result-object v0

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v2, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 26
    check-cast v2, Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;

    if-eqz v2, :cond_0

    .line 1014
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;->onNavigationEvent:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 1070
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v2, Ljava/util/List;

    .line 2009
    :cond_1
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 26
    check-cast p1, Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;

    if-eqz p1, :cond_2

    .line 2016
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;

    .line 26
    :cond_2
    check-cast v1, Lo/StaggeredGridLayoutManager;

    new-instance p1, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;

    invoke-direct {p1, v2, v1}, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;-><init>(Ljava/util/List;Lo/StaggeredGridLayoutManager;)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 28
    :cond_3
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_6

    .line 29
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 3014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 29
    check-cast v0, Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;

    if-eqz v0, :cond_5

    .line 4014
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 30
    iget-object v2, p0, Lo/setMeasureSpecs$onMessageChannelReady;->onMessageChannelReady:Lo/setMeasureSpecs;

    invoke-static {v2}, Lo/setMeasureSpecs;->onNavigationEvent(Lo/setMeasureSpecs;)Lo/setActive;

    move-result-object v2

    new-instance v3, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 30
    check-cast p1, Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;

    if-eqz p1, :cond_4

    .line 5016
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/max/MaxLandingResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;

    .line 30
    :cond_4
    check-cast v1, Lo/StaggeredGridLayoutManager;

    invoke-direct {v3, v0, v1}, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;-><init>(Ljava/util/List;Lo/StaggeredGridLayoutManager;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_5
    iget-object p1, p0, Lo/setMeasureSpecs$onMessageChannelReady;->onMessageChannelReady:Lo/setMeasureSpecs;

    invoke-static {p1}, Lo/setMeasureSpecs;->onNavigationEvent(Lo/setMeasureSpecs;)Lo/setActive;

    move-result-object p1

    sget-object v0, Lo/setMeasureSpecs$onNavigationEvent$onPostMessage;->onPostMessage:Lo/setMeasureSpecs$onNavigationEvent$onPostMessage;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
