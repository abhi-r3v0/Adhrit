.class public final Lo/pullGlows$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pullGlows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemViewModel$fetchPostSliderSection$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Ljava/lang/Double;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Lo/pullGlows;


# direct methods
.method public constructor <init>(Lo/pullGlows;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 997
    iput-object p1, p0, Lo/pullGlows$onNavigationEvent;->onPostMessage:Lo/pullGlows;

    iput-object p2, p0, Lo/pullGlows$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/pullGlows$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    iput-object p4, p0, Lo/pullGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Double;

    iput-object p5, p0, Lo/pullGlows$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_4

    .line 1000
    iget-object v0, p0, Lo/pullGlows$onNavigationEvent;->onPostMessage:Lo/pullGlows;

    invoke-static {v0}, Lo/pullGlows;->asBinder(Lo/pullGlows;)Lo/setActive;

    move-result-object v0

    new-instance v7, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;

    .line 1001
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1001
    move-object v2, v1

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    .line 1002
    iget-object v3, p0, Lo/pullGlows$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 1003
    iget-object v4, p0, Lo/pullGlows$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 1004
    iget-object v5, p0, Lo/pullGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Double;

    .line 1005
    iget-object v6, p0, Lo/pullGlows$onNavigationEvent;->extraCallback:Ljava/lang/String;

    move-object v1, v7

    .line 1000
    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 3009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1007
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    if-eqz p1, :cond_0

    .line 3015
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;->onMessageChannelReady:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1007
    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_3

    .line 1008
    iget-object p1, p0, Lo/pullGlows$onNavigationEvent;->onPostMessage:Lo/pullGlows;

    iget-object v0, p0, Lo/pullGlows$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p0, Lo/pullGlows$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    iget-object v2, p0, Lo/pullGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Double;

    invoke-static {p1, v0, v1, v2}, Lo/pullGlows;->onNavigationEvent(Lo/pullGlows;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;Ljava/lang/Double;)V

    return-void

    .line 1010
    :cond_3
    iget-object p1, p0, Lo/pullGlows$onNavigationEvent;->onPostMessage:Lo/pullGlows;

    .line 3078
    iget-object p1, p1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    const-string v0, "post_slider_form "

    .line 1010
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 1012
    :cond_4
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_5

    .line 1013
    iget-object v0, p0, Lo/pullGlows$onNavigationEvent;->onPostMessage:Lo/pullGlows;

    invoke-static {v0}, Lo/pullGlows;->asBinder(Lo/pullGlows;)Lo/setActive;

    move-result-object v0

    new-instance v7, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;

    const/4 v2, 0x0

    .line 1015
    iget-object v3, p0, Lo/pullGlows$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 1016
    iget-object v4, p0, Lo/pullGlows$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 1017
    iget-object v5, p0, Lo/pullGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Double;

    .line 1018
    iget-object v6, p0, Lo/pullGlows$onNavigationEvent;->extraCallback:Ljava/lang/String;

    move-object v1, v7

    .line 1013
    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1020
    iget-object v0, p0, Lo/pullGlows$onNavigationEvent;->onPostMessage:Lo/pullGlows;

    .line 3082
    iget-object v0, v0, Lo/pullGlows;->extraCommand:Lo/setActive;

    .line 1020
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 4014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1020
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v1, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
