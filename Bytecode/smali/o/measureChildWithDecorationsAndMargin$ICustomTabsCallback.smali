.class public final Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/measureChildWithDecorationsAndMargin;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;",
        "Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;",
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
        "com/dreamplug/fabrik/ui/lending/StashLandingViewModel$response$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;",
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
.field private synthetic onNavigationEvent:Lo/measureChildWithDecorationsAndMargin;


# direct methods
.method constructor <init>(Lo/measureChildWithDecorationsAndMargin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;->onNavigationEvent:Lo/measureChildWithDecorationsAndMargin;

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
            "Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_b

    .line 33
    iget-object v0, p0, Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;->onNavigationEvent:Lo/measureChildWithDecorationsAndMargin;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 33
    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenData;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1026
    :goto_0
    iput-object v1, v0, Lo/measureChildWithDecorationsAndMargin;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;

    .line 2009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 34
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;

    const/16 v1, 0xa

    const-string v3, "$this$collectionSizeOrDefault"

    const/16 v4, 0x10

    if-eqz v0, :cond_4

    .line 2014
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenData;

    if-eqz v0, :cond_4

    .line 2022
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;

    if-eqz v0, :cond_4

    .line 2040
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;->onMessageChannelReady:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 34
    check-cast v0, Ljava/lang/Iterable;

    .line 74
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3039
    instance-of v5, v0, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    .line 74
    :goto_1
    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    if-ge v5, v4, :cond_2

    const/16 v5, 0x10

    .line 75
    :cond_2
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    .line 76
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 77
    check-cast v5, Lcom/dreamplug/fabrik/ui/lending/model/Experiments;

    .line 4013
    iget-object v7, v5, Lcom/dreamplug/fabrik/ui/lending/model/Experiments;->extraCallback:Ljava/lang/String;

    .line 4014
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lending/model/Experiments;->onNavigationEvent:Ljava/lang/String;

    .line 34
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;->onNavigationEvent:Lo/measureChildWithDecorationsAndMargin;

    .line 4019
    iget-object v0, v0, Lo/measureChildWithDecorationsAndMargin;->extraCallback:Ljava/util/Map;

    .line 34
    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5009
    :cond_4
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 35
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;

    if-eqz v0, :cond_8

    .line 5014
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenData;

    if-eqz v0, :cond_8

    .line 5022
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;

    if-eqz v0, :cond_8

    .line 5042
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/ScreenCommonData;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 35
    check-cast v0, Ljava/lang/Iterable;

    .line 80
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6039
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 80
    :cond_5
    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    if-ge v1, v4, :cond_6

    goto :goto_3

    :cond_6
    move v4, v1

    .line 81
    :goto_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 83
    check-cast v3, Lcom/dreamplug/fabrik/ui/lending/model/Experiments;

    .line 7013
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/lending/model/Experiments;->extraCallback:Ljava/lang/String;

    .line 7014
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/Experiments;->onNavigationEvent:Ljava/lang/String;

    .line 35
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;->onNavigationEvent:Lo/measureChildWithDecorationsAndMargin;

    .line 7019
    iget-object v0, v0, Lo/measureChildWithDecorationsAndMargin;->extraCallback:Ljava/util/Map;

    .line 35
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 36
    :cond_8
    iget-object v0, p0, Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;->onNavigationEvent:Lo/measureChildWithDecorationsAndMargin;

    invoke-static {v0}, Lo/measureChildWithDecorationsAndMargin;->extraCallback(Lo/measureChildWithDecorationsAndMargin;)Lo/setActive;

    move-result-object v0

    .line 8009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 36
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;

    if-eqz p1, :cond_9

    .line 8014
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenData;

    if-eqz p1, :cond_9

    .line 8020
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenData;->onPostMessage:Ljava/util/List;

    :cond_9
    if-nez v2, :cond_a

    .line 8070
    sget-object p1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 36
    :cond_a
    new-instance p1, Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;

    invoke-direct {p1, v2}, Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 38
    :cond_b
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_d

    .line 39
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 9014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 39
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;

    if-eqz p1, :cond_c

    .line 10014
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/ScreenData;

    if-eqz p1, :cond_c

    .line 10020
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ScreenData;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_c

    .line 40
    iget-object v0, p0, Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;->onNavigationEvent:Lo/measureChildWithDecorationsAndMargin;

    invoke-static {v0}, Lo/measureChildWithDecorationsAndMargin;->extraCallback(Lo/measureChildWithDecorationsAndMargin;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;

    invoke-direct {v1, p1}, Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_c
    iget-object p1, p0, Lo/measureChildWithDecorationsAndMargin$ICustomTabsCallback;->onNavigationEvent:Lo/measureChildWithDecorationsAndMargin;

    invoke-static {p1}, Lo/measureChildWithDecorationsAndMargin;->extraCallback(Lo/measureChildWithDecorationsAndMargin;)Lo/setActive;

    move-result-object p1

    invoke-static {}, Lo/measureChildWithDecorationsAndMargin;->onPostMessage()Lo/measureChildWithDecorationsAndMargin$onPostMessage$onNavigationEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
