.class public final Lo/resetScroll$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/resetScroll;->ICustomTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreFarmResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/store/landing/StoreLandingViewModel$fetchLandingData$2",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreFarmResponse;",
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
.field private synthetic onPostMessage:Lo/resetScroll;


# direct methods
.method constructor <init>(Lo/resetScroll;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lo/resetScroll$onMessageChannelReady;->onPostMessage:Lo/resetScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreFarmResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_5

    .line 78
    iget-object v0, p0, Lo/resetScroll$onMessageChannelReady;->onPostMessage:Lo/resetScroll;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 78
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreFarmResponse;

    if-eqz v1, :cond_0

    .line 1018
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreFarmResponse;->onPostMessage:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1070
    :cond_0
    sget-object v1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v1, Ljava/util/List;

    .line 78
    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 153
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    .line 79
    iget-object v5, p0, Lo/resetScroll$onMessageChannelReady;->onPostMessage:Lo/resetScroll;

    invoke-static {v5}, Lo/resetScroll;->extraCallback(Lo/resetScroll;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 2037
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 2059
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->onPostMessage:Ljava/lang/String;

    .line 79
    invoke-static {v5, v4}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_3
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lo/resetScroll;->onNavigationEvent(Lo/resetScroll;Ljava/util/ArrayList;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v1, p0, Lo/resetScroll$onMessageChannelReady;->onPostMessage:Lo/resetScroll;

    invoke-static {v1}, Lo/resetScroll;->onPostMessage(Lo/resetScroll;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v1, p0, Lo/resetScroll$onMessageChannelReady;->onPostMessage:Lo/resetScroll;

    invoke-static {v1}, Lo/resetScroll;->ICustomTabsCallback(Lo/resetScroll;)Lo/setActive;

    move-result-object v1

    new-instance v2, Lo/addWrite;

    .line 3010
    iget-boolean p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.dreamplug.fabrik.ui.lifestyle.store.landing.StoreItem> /* = java.util.ArrayList<com.dreamplug.fabrik.ui.lifestyle.store.landing.StoreItem> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_5
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lo/resetScroll$onMessageChannelReady;->onPostMessage:Lo/resetScroll;

    invoke-static {v0}, Lo/resetScroll;->onPostMessage(Lo/resetScroll;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_9

    .line 88
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 3014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    const-string v1, "API_ERROR"

    if-eqz v0, :cond_8

    .line 89
    iget-object v0, p0, Lo/resetScroll$onMessageChannelReady;->onPostMessage:Lo/resetScroll;

    .line 3039
    iget-object v0, v0, Lo/resetScroll;->extraCallback:Lo/setActive;

    .line 89
    new-instance v2, Lo/fromPathMerge;

    .line 4014
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 89
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, p1, v3, v1}, Lo/fromPathMerge;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 91
    :cond_8
    iget-object p1, p0, Lo/resetScroll$onMessageChannelReady;->onPostMessage:Lo/resetScroll;

    .line 5039
    iget-object p1, p1, Lo/resetScroll;->extraCallback:Lo/setActive;

    .line 91
    new-instance v0, Lo/fromPathMerge;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v3, "something went wrong. please check back in some time"

    invoke-direct {v0, v3, v2, v1}, Lo/fromPathMerge;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
