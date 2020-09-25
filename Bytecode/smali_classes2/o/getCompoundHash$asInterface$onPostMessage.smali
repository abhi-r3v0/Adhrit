.class final Lo/getCompoundHash$asInterface$onPostMessage;
.super Lo/cancelSentTransactions;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash$asInterface;->onMessageChannelReady(Lo/reverseIterator;Lo/deleteTrackedQuery;Lo/getPredecessorKey;Lo/verifyInsideTransaction;)Lo/colorFlip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/cancelSentTransactions<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field private synthetic asBinder:Lo/verifyInsideTransaction;

.field private synthetic asInterface:Lo/getCompoundHash$asInterface;

.field private synthetic extraCallback:Lo/deleteTrackedQuery;

.field private synthetic onNavigationEvent:Lo/reverseIterator;


# direct methods
.method constructor <init>(Lo/getCompoundHash$asInterface;Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;Lo/verifyInsideTransaction;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v13, p0

    move-object v0, p1

    move-object/from16 v1, p4

    .line 508
    iput-object v0, v13, Lo/getCompoundHash$asInterface$onPostMessage;->asInterface:Lo/getCompoundHash$asInterface;

    move-object/from16 v2, p2

    iput-object v2, v13, Lo/getCompoundHash$asInterface$onPostMessage;->onNavigationEvent:Lo/reverseIterator;

    iput-object v1, v13, Lo/getCompoundHash$asInterface$onPostMessage;->extraCallback:Lo/deleteTrackedQuery;

    move-object/from16 v3, p6

    iput-object v3, v13, Lo/getCompoundHash$asInterface$onPostMessage;->asBinder:Lo/verifyInsideTransaction;

    .line 509
    iget-object v3, v0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    .line 512
    invoke-static {v3}, Lo/getCompoundHash;->ICustomTabsCallback$Stub$Proxy(Lo/getCompoundHash;)Lo/cancelSentTransactions$postMessage;

    move-result-object v3

    iget-object v4, v0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    .line 513
    invoke-static {v4}, Lo/getCompoundHash;->ICustomTabsService(Lo/getCompoundHash;)J

    move-result-wide v4

    iget-object v6, v0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    .line 514
    invoke-static {v6}, Lo/getCompoundHash;->getInterfaceDescriptor(Lo/getCompoundHash;)J

    move-result-wide v6

    iget-object v8, v0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    .line 515
    invoke-static {v8, v1}, Lo/getCompoundHash;->onMessageChannelReady(Lo/getCompoundHash;Lo/deleteTrackedQuery;)Ljava/util/concurrent/Executor;

    move-result-object v8

    iget-object v0, v0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    .line 516
    invoke-static {v0}, Lo/getCompoundHash;->postMessage(Lo/getCompoundHash;)Lo/fixUp;

    move-result-object v0

    invoke-interface {v0}, Lo/fixUp;->onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    sget-object v0, Lo/onSecurityDebugPacket;->extraCallback:Lo/deleteTrackedQuery$onMessageChannelReady;

    .line 517
    invoke-virtual {v1, v0}, Lo/deleteTrackedQuery;->onPostMessage(Lo/deleteTrackedQuery$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lo/sendUnlisten$onMessageChannelReady;

    sget-object v0, Lo/onSecurityDebugPacket;->onNavigationEvent:Lo/deleteTrackedQuery$onMessageChannelReady;

    .line 518
    invoke-virtual {v1, v0}, Lo/deleteTrackedQuery;->onPostMessage(Lo/deleteTrackedQuery$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lo/getSslCacheDirectory$ICustomTabsCallback;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v12, p5

    .line 509
    invoke-direct/range {v0 .. v12}, Lo/cancelSentTransactions;-><init>(Lo/reverseIterator;Lo/getPredecessorKey;Lo/cancelSentTransactions$postMessage;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lo/sendUnlisten$onMessageChannelReady;Lo/getSslCacheDirectory$ICustomTabsCallback;Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()Lo/emptyMap;
    .locals 1

    .line 524
    iget-object v0, p0, Lo/getCompoundHash$asInterface$onPostMessage;->asInterface:Lo/getCompoundHash$asInterface;

    iget-object v0, v0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->requestPostMessageChannel(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getCompoundHash$IPostMessageService;->onNavigationEvent(Lo/cancelSentTransactions;)Lo/emptyMap;

    move-result-object v0

    return-object v0
.end method

.method final onNavigationEvent(Lo/beginTransaction$onNavigationEvent;Lo/getPredecessorKey;)Lo/colorFlip;
    .locals 3

    .line 534
    iget-object v0, p0, Lo/getCompoundHash$asInterface$onPostMessage;->extraCallback:Lo/deleteTrackedQuery;

    invoke-virtual {v0, p1}, Lo/deleteTrackedQuery;->onPostMessage(Lo/beginTransaction$onNavigationEvent;)Lo/deleteTrackedQuery;

    move-result-object p1

    .line 535
    iget-object v0, p0, Lo/getCompoundHash$asInterface$onPostMessage;->asInterface:Lo/getCompoundHash$asInterface;

    new-instance v1, Lo/connected;

    iget-object v2, p0, Lo/getCompoundHash$asInterface$onPostMessage;->onNavigationEvent:Lo/reverseIterator;

    invoke-direct {v1, v2, p2, p1}, Lo/connected;-><init>(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)V

    .line 536
    invoke-virtual {v0, v1}, Lo/getCompoundHash$asInterface;->onNavigationEvent(Lo/getMinKey$extraCallback;)Lo/moveRedRight;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lo/getCompoundHash$asInterface$onPostMessage;->asBinder:Lo/verifyInsideTransaction;

    invoke-virtual {v1}, Lo/verifyInsideTransaction;->onNavigationEvent()Lo/verifyInsideTransaction;

    move-result-object v1

    .line 539
    :try_start_0
    iget-object v2, p0, Lo/getCompoundHash$asInterface$onPostMessage;->onNavigationEvent:Lo/reverseIterator;

    invoke-interface {v0, v2, p2, p1}, Lo/moveRedRight;->onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    iget-object p2, p0, Lo/getCompoundHash$asInterface$onPostMessage;->asBinder:Lo/verifyInsideTransaction;

    invoke-virtual {p2, v1}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/getCompoundHash$asInterface$onPostMessage;->asBinder:Lo/verifyInsideTransaction;

    invoke-virtual {p2, v1}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    throw p1
.end method

.method final onNavigationEvent()V
    .locals 4

    .line 529
    iget-object v0, p0, Lo/getCompoundHash$asInterface$onPostMessage;->asInterface:Lo/getCompoundHash$asInterface;

    iget-object v0, v0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->requestPostMessageChannel(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService;

    move-result-object v0

    .line 2079
    iget-object v1, v0, Lo/getCompoundHash$IPostMessageService;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 2080
    :try_start_0
    iget-object v2, v0, Lo/getCompoundHash$IPostMessageService;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-interface {v2, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2081
    iget-object v2, v0, Lo/getCompoundHash$IPostMessageService;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2082
    iget-object v2, v0, Lo/getCompoundHash$IPostMessageService;->onPostMessage:Lo/emptyMap;

    .line 2085
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lo/getCompoundHash$IPostMessageService;->ICustomTabsCallback:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2087
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 2090
    iget-object v0, v0, Lo/getCompoundHash$IPostMessageService;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->onRelationshipValidationResult(Lo/getCompoundHash;)Lo/buildBalancedTree;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/buildBalancedTree;->ICustomTabsCallback(Lo/emptyMap;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 2087
    monitor-exit v1

    throw v0
.end method
