.class final Lo/offsetPositionRecordsForRemove$postMessage;
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
.field final synthetic ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

.field private ICustomTabsCallback$Stub:I

.field private asInterface:I

.field private extraCallback:Ljava/lang/Object;

.field final synthetic onMessageChannelReady:Lo/saveOldPositions$extraCallback;

.field private onNavigationEvent:Lo/isFromUser;

.field private onPostMessage:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/offsetPositionRecordsForRemove;Lo/saveOldPositions$extraCallback;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    iput-object p2, p0, Lo/offsetPositionRecordsForRemove$postMessage;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 236
    iget v1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    .line 6126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 257
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_2
    iget v1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->asInterface:I

    iget-object v4, p0, Lo/offsetPositionRecordsForRemove$postMessage;->extraCallback:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lo/offsetPositionRecordsForRemove$postMessage;->onPostMessage:Ljava/lang/Object;

    check-cast v5, Lo/isFromUser;

    .line 5126
    instance-of v6, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v6, :cond_3

    goto/16 :goto_1

    :cond_3
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 1126
    :cond_4
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_9

    .line 236
    iget-object v5, p0, Lo/offsetPositionRecordsForRemove$postMessage;->onNavigationEvent:Lo/isFromUser;

    .line 237
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    check-cast p1, Lo/saveOldPositions$extraCallback$onPostMessage;

    .line 1156
    iget-object p1, p1, Lo/saveOldPositions$extraCallback$onPostMessage;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;

    .line 2027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberClaim;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;

    if-eqz p1, :cond_8

    .line 2138
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/PayoutClaimResponse;->extraCallback:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 238
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    invoke-static {p1}, Lo/offsetPositionRecordsForRemove;->extraCallback(Lo/offsetPositionRecordsForRemove;)Lo/saveOldPositions;

    move-result-object p1

    .line 3029
    iget-object p1, p1, Lo/saveOldPositions;->extraCallback:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 238
    :goto_0
    check-cast p1, Lo/saveOldPositions$ICustomTabsCallback;

    if-eqz p1, :cond_8

    .line 4142
    iget-object p1, p1, Lo/saveOldPositions$ICustomTabsCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;

    if-eqz p1, :cond_8

    .line 5032
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;

    if-eqz p1, :cond_8

    .line 5044
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Meta;->onPostMessage:Ljava/lang/Integer;

    if-eqz p1, :cond_8

    .line 238
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 239
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_6

    .line 240
    sget-object v6, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1e

    const-string v7, "Unable to process request. Please check back in some time."

    invoke-static/range {v6 .. v12}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 241
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;I)V

    .line 242
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 244
    :cond_6
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->tokenMachine:I

    invoke-virtual {p1, v6}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/findContainingViewHolder;

    invoke-virtual {p1, v1}, Lo/findContainingViewHolder;->setNumberOfDigits(I)V

    const-wide/16 v6, 0x12c

    .line 246
    iput-object v5, p0, Lo/offsetPositionRecordsForRemove$postMessage;->onPostMessage:Ljava/lang/Object;

    iput-object v4, p0, Lo/offsetPositionRecordsForRemove$postMessage;->extraCallback:Ljava/lang/Object;

    iput v1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->asInterface:I

    iput v3, p0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback$Stub:I

    invoke-static {v6, v7, p0}, Lo/extraCallback;->onNavigationEvent(JLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 248
    :cond_7
    :goto_1
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->tokenMachine:I

    invoke-virtual {p1, v6}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/findContainingViewHolder;

    new-instance v6, Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;

    invoke-direct {v6, p0}, Lo/offsetPositionRecordsForRemove$postMessage$onPostMessage;-><init>(Lo/offsetPositionRecordsForRemove$postMessage;)V

    check-cast v6, Lo/getServerTime;

    iput-object v5, p0, Lo/offsetPositionRecordsForRemove$postMessage;->onPostMessage:Ljava/lang/Object;

    iput-object v4, p0, Lo/offsetPositionRecordsForRemove$postMessage;->extraCallback:Ljava/lang/Object;

    iput v1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->asInterface:I

    iput v2, p0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, v4, v3, v6, p0}, Lo/findContainingViewHolder;->onPostMessage(Ljava/lang/String;ZLo/getServerTime;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 257
    :cond_8
    :goto_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_9
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/offsetPositionRecordsForRemove$postMessage;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/offsetPositionRecordsForRemove$postMessage;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lo/offsetPositionRecordsForRemove$postMessage;

    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$postMessage;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    iget-object v2, p0, Lo/offsetPositionRecordsForRemove$postMessage;->onMessageChannelReady:Lo/saveOldPositions$extraCallback;

    invoke-direct {v0, v1, v2, p2}, Lo/offsetPositionRecordsForRemove$postMessage;-><init>(Lo/offsetPositionRecordsForRemove;Lo/saveOldPositions$extraCallback;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/offsetPositionRecordsForRemove$postMessage;->onNavigationEvent:Lo/isFromUser;

    return-object v0
.end method
