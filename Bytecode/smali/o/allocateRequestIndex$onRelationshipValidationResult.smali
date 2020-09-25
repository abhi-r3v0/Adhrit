.class final Lo/allocateRequestIndex$onRelationshipValidationResult;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/allocateRequestIndex;->onMessageChannelReady(Lo/getAllowReturnTransitionOverlap;)V
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
.field private synthetic ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

.field private extraCallback:Lo/isFromUser;

.field private onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lo/allocateRequestIndex;


# direct methods
.method constructor <init>(Lo/allocateRequestIndex;Lo/getAllowReturnTransitionOverlap;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->onNavigationEvent:Lo/allocateRequestIndex;

    iput-object p2, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 152
    iget v1, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    .line 2126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 169
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_a

    .line 154
    iget-object p1, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

    check-cast p1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    .line 2006
    iget-object p1, p1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;->onPostMessage:Ljava/util/List;

    .line 154
    iput v2, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->onMessageChannelReady:I

    invoke-static {p1, p0}, Lo/allocateRequestIndex;->onPostMessage(Ljava/util/List;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 152
    :cond_3
    :goto_0
    check-cast p1, Lo/addWrite;

    .line 3028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 155
    check-cast v0, Ljava/util/List;

    .line 156
    iget-object v1, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

    check-cast v1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    .line 4006
    iget-boolean v1, v1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;->extraCallback:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_4

    .line 157
    iget-object v1, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->onNavigationEvent:Lo/allocateRequestIndex;

    invoke-static {v1}, Lo/allocateRequestIndex;->onPostMessage(Lo/allocateRequestIndex;)Lo/getDimensionPixelOffset;

    const/4 v1, 0x2

    new-array v5, v1, [Lo/addWrite;

    .line 4043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "templates_list"

    invoke-direct {v6, v7, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v3

    .line 5043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v6, "screen"

    const-string v7, "SUCCESS"

    invoke-direct {v0, v6, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v5, v2

    const-string v0, "pairs"

    .line 159
    invoke-static {v5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const/16 v1, 0xc

    const-string v5, "cm_unbilled_farm_screen_load"

    .line 157
    invoke-static {v5, v0, v4, v1}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/cm/models/Template;I)V

    .line 162
    :cond_4
    iget-object v0, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

    check-cast v0, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    .line 6006
    iget-object v0, v0, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;->onPostMessage:Ljava/util/List;

    .line 162
    check-cast v0, Ljava/lang/Iterable;

    .line 340
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v4

    const/4 v1, 0x0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 341
    move-object v7, v6

    check-cast v7, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 6023
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v8, "unsupported"

    .line 162
    invoke-static {v7, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v5, v6

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    move-object v4, v5

    :goto_2
    check-cast v4, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v4, :cond_9

    .line 164
    iget-object v0, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->onNavigationEvent:Lo/allocateRequestIndex;

    invoke-static {v0}, Lo/allocateRequestIndex;->onMessageChannelReady(Lo/allocateRequestIndex;)V

    .line 165
    iget-object v0, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->onNavigationEvent:Lo/allocateRequestIndex;

    invoke-static {v0, v4}, Lo/allocateRequestIndex;->onPostMessage(Lo/allocateRequestIndex;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    .line 167
    :cond_9
    iget-object v0, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->onNavigationEvent:Lo/allocateRequestIndex;

    invoke-static {v0}, Lo/allocateRequestIndex;->extraCallback(Lo/allocateRequestIndex;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    .line 7027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 167
    check-cast p1, Ljava/util/List;

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 7038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 168
    iget-object p1, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->onNavigationEvent:Lo/allocateRequestIndex;

    invoke-static {p1}, Lo/allocateRequestIndex;->ICustomTabsCallback(Lo/allocateRequestIndex;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$visible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8009
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_a
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/allocateRequestIndex$onRelationshipValidationResult;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/allocateRequestIndex$onRelationshipValidationResult;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 3
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/allocateRequestIndex$onRelationshipValidationResult;

    iget-object v1, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->onNavigationEvent:Lo/allocateRequestIndex;

    iget-object v2, p0, Lo/allocateRequestIndex$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

    invoke-direct {v0, v1, v2, p2}, Lo/allocateRequestIndex$onRelationshipValidationResult;-><init>(Lo/allocateRequestIndex;Lo/getAllowReturnTransitionOverlap;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/allocateRequestIndex$onRelationshipValidationResult;->extraCallback:Lo/isFromUser;

    return-object v0
.end method
