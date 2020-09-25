.class final Lo/offsetPositionRecordsForRemove$extraCommand;
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
.field final synthetic extraCallback:Lo/offsetPositionRecordsForRemove;

.field final synthetic onMessageChannelReady:Lo/saveOldPositions$extraCallback;

.field private onNavigationEvent:I

.field private onPostMessage:Lo/isFromUser;


# direct methods
.method constructor <init>(Lo/offsetPositionRecordsForRemove;Lo/saveOldPositions$extraCallback;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    iput-object p2, p0, Lo/offsetPositionRecordsForRemove$extraCommand;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 204
    iget v1, p0, Lo/offsetPositionRecordsForRemove$extraCommand;->onNavigationEvent:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    .line 5126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 231
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_6

    .line 205
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$extraCommand;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    check-cast p1, Lo/saveOldPositions$extraCallback$onMessageChannelReady;

    .line 1155
    iget-object p1, p1, Lo/saveOldPositions$extraCallback$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    .line 2027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    if-eqz p1, :cond_5

    .line 2138
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 206
    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    invoke-static {v1}, Lo/offsetPositionRecordsForRemove;->extraCallback(Lo/offsetPositionRecordsForRemove;)Lo/saveOldPositions;

    move-result-object v1

    .line 3029
    iget-object v1, v1, Lo/saveOldPositions;->extraCallback:Lo/setActive;

    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 206
    :goto_0
    check-cast v1, Lo/saveOldPositions$ICustomTabsCallback;

    if-eqz v1, :cond_4

    .line 4142
    iget-object v1, v1, Lo/saveOldPositions$ICustomTabsCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;

    if-eqz v1, :cond_4

    .line 5032
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;

    if-eqz v1, :cond_4

    .line 5044
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;->onPostMessage:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 206
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 208
    sget-object v4, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    const-string v5, "Unable to process request. Please check back in some time."

    invoke-static/range {v4 .. v10}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 209
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;I)V

    .line 210
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 214
    :cond_4
    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->tokenMachine:I

    invoke-virtual {v1, v3}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/findContainingViewHolder;

    new-instance v3, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;

    invoke-direct {v3, p0}, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;-><init>(Lo/offsetPositionRecordsForRemove$extraCommand;)V

    check-cast v3, Lo/getServerTime;

    iput v2, p0, Lo/offsetPositionRecordsForRemove$extraCommand;->onNavigationEvent:I

    invoke-static {v1, p1, v3, p0}, Lo/findContainingViewHolder;->onPostMessage(Lo/findContainingViewHolder;Ljava/lang/String;Lo/getServerTime;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 231
    :cond_5
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_6
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/offsetPositionRecordsForRemove$extraCommand;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    iget-object v2, p0, Lo/offsetPositionRecordsForRemove$extraCommand;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    invoke-direct {v0, v1, v2, p2}, Lo/offsetPositionRecordsForRemove$extraCommand;-><init>(Lo/offsetPositionRecordsForRemove;Lo/saveOldPositions$extraCallback;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/offsetPositionRecordsForRemove$extraCommand;->onPostMessage:Lo/isFromUser;

    return-object v0
.end method
