.class final Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/offsetPositionRecordsForRemove;
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
.field private extraCallback:Lo/isFromUser;

.field private synthetic onMessageChannelReady:Lo/offsetPositionRecordsForRemove;

.field private onNavigationEvent:I


# direct methods
.method constructor <init>(Lo/offsetPositionRecordsForRemove;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;->onMessageChannelReady:Lo/offsetPositionRecordsForRemove;

    invoke-direct {p0, p2}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 265
    iget v1, p0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;->onNavigationEvent:I

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

    .line 267
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_4

    .line 266
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;->onMessageChannelReady:Lo/offsetPositionRecordsForRemove;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->tokenMachine:I

    invoke-virtual {p1, v1}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/findContainingViewHolder;

    sget-object v1, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel$3;->onMessageChannelReady:Lo/offsetPositionRecordsForRemove$requestPostMessageChannel$3;

    check-cast v1, Lo/getServerTime;

    iput v2, p0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;->onNavigationEvent:I

    invoke-virtual {p1, v1, p0}, Lo/findContainingViewHolder;->extraCallback(Lo/getServerTime;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 267
    :cond_3
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_4
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lo/setSessionPersistenceKey;

    const-string v0, "completion"

    .line 3000
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;

    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;->onMessageChannelReady:Lo/offsetPositionRecordsForRemove;

    invoke-direct {v0, v1, p2}, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;-><init>(Lo/offsetPositionRecordsForRemove;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;->extraCallback:Lo/isFromUser;

    check-cast v0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;

    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {v0, p1}, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;

    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;->onMessageChannelReady:Lo/offsetPositionRecordsForRemove;

    invoke-direct {v0, v1, p2}, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;-><init>(Lo/offsetPositionRecordsForRemove;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/offsetPositionRecordsForRemove$requestPostMessageChannel;->extraCallback:Lo/isFromUser;

    return-object v0
.end method
