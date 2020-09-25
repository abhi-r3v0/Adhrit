.class public final Lo/LinearSmoothScroller$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LinearSmoothScroller;->ICustomTabsCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedRewardsResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/compass/wishlist/RewardWishlistViewModel$loadWishlistedRewards$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedRewardsResponse;",
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
.field private synthetic ICustomTabsCallback:Lo/LinearSmoothScroller;

.field private synthetic onNavigationEvent:Z


# direct methods
.method constructor <init>(Lo/LinearSmoothScroller;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lo/LinearSmoothScroller$extraCallback;->ICustomTabsCallback:Lo/LinearSmoothScroller;

    iput-boolean p2, p0, Lo/LinearSmoothScroller$extraCallback;->onNavigationEvent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedRewardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lo/LinearSmoothScroller$extraCallback;->ICustomTabsCallback:Lo/LinearSmoothScroller;

    .line 1030
    iget-object v0, v0, Lo/LinearSmoothScroller;->extraCallback:Ljava/util/ArrayList;

    .line 108
    check-cast v0, Ljava/util/List;

    sget-object v1, Lo/LinearSmoothScroller$extraCallback$onMessageChannelReady;->extraCallback:Lo/LinearSmoothScroller$extraCallback$onMessageChannelReady;

    check-cast v1, Lo/onDisconnectSetValue;

    const-string v2, "$this$removeAll"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "predicate"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1277
    invoke-static {v0, v1}, Lo/getPersistenceManager;->onPostMessage(Ljava/util/List;Lo/onDisconnectSetValue;)Z

    .line 109
    iget-object v0, p0, Lo/LinearSmoothScroller$extraCallback;->ICustomTabsCallback:Lo/LinearSmoothScroller;

    .line 2028
    iget-object v0, v0, Lo/LinearSmoothScroller;->onNavigationEvent:Lo/setActive;

    if-eqz v0, :cond_0

    .line 109
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 111
    :cond_0
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lo/LinearSmoothScroller$extraCallback;->ICustomTabsCallback:Lo/LinearSmoothScroller;

    .line 2034
    iget v2, v0, Lo/LinearSmoothScroller;->onMessageChannelReady:I

    add-int/lit8 v2, v2, 0x1

    .line 3034
    iput v2, v0, Lo/LinearSmoothScroller;->onMessageChannelReady:I

    .line 113
    iget-object v0, p0, Lo/LinearSmoothScroller$extraCallback;->ICustomTabsCallback:Lo/LinearSmoothScroller;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 4009
    iget-object v2, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 113
    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedRewardsResponse;

    if-eqz v2, :cond_1

    .line 4017
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedRewardsResponse;->ICustomTabsCallback:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4033
    :goto_0
    iput-boolean v2, v0, Lo/LinearSmoothScroller;->onPostMessage:Z

    .line 114
    iget-object v0, p0, Lo/LinearSmoothScroller$extraCallback;->ICustomTabsCallback:Lo/LinearSmoothScroller;

    .line 5030
    iget-object v0, v0, Lo/LinearSmoothScroller;->extraCallback:Ljava/util/ArrayList;

    .line 6009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 114
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedRewardsResponse;

    if-eqz p1, :cond_2

    .line 6013
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedRewardsResponse;->extraCallback:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 114
    check-cast p1, Ljava/util/Collection;

    goto :goto_1

    .line 115
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 114
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 116
    :cond_3
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_8

    .line 117
    iget-object v0, p0, Lo/LinearSmoothScroller$extraCallback;->ICustomTabsCallback:Lo/LinearSmoothScroller;

    invoke-static {v0}, Lo/LinearSmoothScroller;->extraCallback(Lo/LinearSmoothScroller;)Lo/setActive;

    move-result-object v0

    new-instance v2, Lo/onViewStateRestored$onNavigationEvent;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 6014
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 117
    check-cast v3, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 118
    :cond_4
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f130326

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    .line 7014
    :cond_5
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 118
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    .line 119
    :cond_6
    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p1, 0x7f130325

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    :cond_7
    const v4, 0x7f080473

    .line 117
    invoke-direct {v2, v3, p1, v4}, Lo/onViewStateRestored$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 121
    :cond_8
    :goto_2
    iget-object p1, p0, Lo/LinearSmoothScroller$extraCallback;->ICustomTabsCallback:Lo/LinearSmoothScroller;

    iget-boolean v0, p0, Lo/LinearSmoothScroller$extraCallback;->onNavigationEvent:Z

    invoke-static {p1, v0}, Lo/LinearSmoothScroller;->onNavigationEvent(Lo/LinearSmoothScroller;Z)V

    .line 122
    iget-object p1, p0, Lo/LinearSmoothScroller$extraCallback;->ICustomTabsCallback:Lo/LinearSmoothScroller;

    .line 7035
    iput-boolean v1, p1, Lo/LinearSmoothScroller;->ICustomTabsCallback:Z

    return-void
.end method
