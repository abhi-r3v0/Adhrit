.class final Lo/findViewHolderForItemId$onRelationshipValidationResult;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findViewHolderForItemId;
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
.field private ICustomTabsCallback:Ljava/lang/Object;

.field private synthetic extraCallback:Lo/findViewHolderForItemId;

.field private onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

.field private onPostMessage:Lo/isFromUser;


# direct methods
.method constructor <init>(Lo/findViewHolderForItemId;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->extraCallback:Lo/findViewHolderForItemId;

    iput-object p2, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 248
    iget v1, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->ICustomTabsCallback:Ljava/lang/Object;

    check-cast v0, Lo/isFromUser;

    .line 4126
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 260
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_7

    .line 248
    iget-object p1, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->onPostMessage:Lo/isFromUser;

    .line 250
    iget-object v1, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    .line 2116
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;->onTransact:Ljava/lang/String;

    const-string v3, "high"

    .line 250
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v1, Lo/isInLayout;->postOrRun:Lo/isRemoving;

    sget-object v3, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v4, 0x6f

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 251
    :cond_3
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 4000
    sget-object v1, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection:Lo/isRemoving;

    sget-object v3, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v4, 0x6e

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 252
    :goto_0
    iput-object p1, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->ICustomTabsCallback:Ljava/lang/Object;

    iput v2, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->onMessageChannelReady:I

    invoke-static {v3, v4, p0}, Lo/extraCallback;->onNavigationEvent(JLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    .line 5123
    :goto_1
    invoke-interface {v0}, Lo/isFromUser;->onPostMessage()Lo/isZombied;

    move-result-object p1

    sget-object v0, Lo/assertValidTrackedQuery;->onNavigationEvent:Lo/assertValidTrackedQuery$onNavigationEvent;

    check-cast v0, Lo/isZombied$extraCallback;

    invoke-interface {p1, v0}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/assertValidTrackedQuery;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lo/assertValidTrackedQuery;->ICustomTabsCallback()Z

    move-result v2

    :cond_5
    const/4 p1, 0x0

    if-eqz v2, :cond_6

    .line 257
    iget-object v0, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->extraCallback:Lo/findViewHolderForItemId;

    invoke-static {v0}, Lo/findViewHolderForItemId;->newSession(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/throwIfInMutationOperation;

    invoke-direct {v1, p1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 259
    :cond_6
    iget-object v0, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->extraCallback:Lo/findViewHolderForItemId;

    invoke-static {v0, p1}, Lo/findViewHolderForItemId;->onNavigationEvent(Lo/findViewHolderForItemId;Lo/assertValidTrackedQuery;)V

    .line 260
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_7
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/findViewHolderForItemId$onRelationshipValidationResult;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/findViewHolderForItemId$onRelationshipValidationResult;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lo/findViewHolderForItemId$onRelationshipValidationResult;

    iget-object v1, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->extraCallback:Lo/findViewHolderForItemId;

    iget-object v2, p0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;

    invoke-direct {v0, v1, v2, p2}, Lo/findViewHolderForItemId$onRelationshipValidationResult;-><init>(Lo/findViewHolderForItemId;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachinePlayResponse;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/findViewHolderForItemId$onRelationshipValidationResult;->onPostMessage:Lo/isFromUser;

    return-object v0
.end method
