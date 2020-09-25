.class public final Lo/LinearLayoutManager$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LinearLayoutManager;->onNavigationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedSectionsResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/ClaimedRewardSection$fetchLifeStyleClaimedSection$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedSectionsResponse;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedSectionsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 39
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedSectionsResponse;

    if-eqz p1, :cond_0

    .line 41
    sget-object v0, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    .line 2009
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedSectionsResponse;->extraCallback:Ljava/util/List;

    .line 41
    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "archived_expired"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    .line 2011
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedSectionsResponse;->onNavigationEvent:Ljava/util/List;

    .line 42
    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "mystery"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    .line 2013
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedSectionsResponse;->onMessageChannelReady:Ljava/util/List;

    .line 43
    check-cast p1, Ljava/util/Collection;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo p1, "rewardUsage"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object p1, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->ICustomTabsCallback()Lo/setActive;

    move-result-object p1

    sget-object v0, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
