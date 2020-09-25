.class final Lo/getAnimator$onNavigationEvent$extraCallback;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getAnimator$onNavigationEvent;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/postEvents;",
        "Lo/nextTransactionOrder<",
        "Lo/isFromUser;",
        "Lo/setSessionPersistenceKey<",
        "-",
        "Lo/addWrites;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

.field private synthetic onMessageChannelReady:Lo/getAnimator$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/getAnimator$onNavigationEvent;Lo/getScrapOrHiddenOrCachedHolderForPosition;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->onMessageChannelReady:Lo/getAnimator$onNavigationEvent;

    iput-object p2, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 1126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_5

    .line 71
    iget-object p1, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 71
    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz p1, :cond_3

    .line 2020
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_3

    .line 2027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz p1, :cond_3

    .line 2093
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->IPostMessageService$Stub:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 71
    check-cast p1, Ljava/lang/Iterable;

    const-string v0, "$this$collectionSizeOrDefault"

    .line 88
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3039
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 88
    :goto_0
    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/16 v0, 0x10

    .line 89
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 90
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Lcom/dreamplug/fabrik/ui/cm/models/Experiments;

    .line 4043
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/cm/models/Experiments;->onNavigationEvent:Ljava/lang/String;

    .line 4044
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Experiments;->ICustomTabsCallback:Ljava/lang/String;

    .line 71
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->onMessageChannelReady:Lo/getAnimator$onNavigationEvent;

    iget-object p1, p1, Lo/getAnimator$onNavigationEvent;->onPostMessage:Lo/getAnimator;

    .line 5030
    iget-object p1, p1, Lo/getAnimator;->onPostMessage:Ljava/util/Map;

    .line 71
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72
    :cond_3
    iget-object p1, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->onMessageChannelReady:Lo/getAnimator$onNavigationEvent;

    iget-object p1, p1, Lo/getAnimator$onNavigationEvent;->onPostMessage:Lo/getAnimator;

    iget-object v0, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 6010
    iget-boolean v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 6031
    iput-boolean v0, p1, Lo/getAnimator;->onNavigationEvent:Z

    .line 73
    iget-object p1, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->onMessageChannelReady:Lo/getAnimator$onNavigationEvent;

    iget-object p1, p1, Lo/getAnimator$onNavigationEvent;->onPostMessage:Lo/getAnimator;

    invoke-static {p1}, Lo/getAnimator;->extraCallback(Lo/getAnimator;)Lo/setActive;

    move-result-object p1

    iget-object v0, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 7009
    iget-object v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 73
    check-cast v0, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz v0, :cond_4

    .line 7016
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->extraCallback:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 74
    new-instance v1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    iget-object v2, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    check-cast v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 8010
    iget-boolean v2, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 74
    invoke-direct {v1, v0, v2}, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;-><init>(Ljava/util/List;Z)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 73
    :goto_2
    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 76
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_5
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/getAnimator$onNavigationEvent$extraCallback;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/getAnimator$onNavigationEvent$extraCallback;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setSessionPersistenceKey<",
            "*>;)",
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lo/getAnimator$onNavigationEvent$extraCallback;

    iget-object v0, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->onMessageChannelReady:Lo/getAnimator$onNavigationEvent;

    iget-object v1, p0, Lo/getAnimator$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    invoke-direct {p1, v0, v1, p2}, Lo/getAnimator$onNavigationEvent$extraCallback;-><init>(Lo/getAnimator$onNavigationEvent;Lo/getScrapOrHiddenOrCachedHolderForPosition;Lo/setSessionPersistenceKey;)V

    return-object p1
.end method
