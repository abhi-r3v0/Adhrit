.class public abstract Lo/findRootMostMatchingPath;
.super Lo/emptyInstance;
.source ""

# interfaces
.implements Lo/getThreadInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/findRootMostMatchingPath$onNavigationEvent;,
        Lo/findRootMostMatchingPath$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/emptyInstance<",
        "TE;>;",
        "Lo/getThreadInitializer<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0006LMNOPQB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u0016\u0010\u0017\u001a\u00020\u001a2\u000e\u0010\u0018\u001a\n\u0018\u00010\u001bj\u0004\u0018\u0001`\u001cJ\u0017\u0010\u001d\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0000\u00a2\u0006\u0002\u0008\u001eJ\u000e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000 H\u0004J\u0016\u0010!\u001a\u00020\u00062\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0002J\u0016\u0010$\u001a\u00020\u00062\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0014JR\u0010%\u001a\u00020\u0006\"\u0004\u0008\u0001\u0010&2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u0002H&0(2$\u0010)\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010+\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H&0,\u0012\u0006\u0012\u0004\u0018\u00010+0*2\u0006\u0010-\u001a\u00020.H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010/J\u000f\u00100\u001a\u0008\u0012\u0004\u0012\u00028\u000001H\u0086\u0002J\u0010\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u0006H\u0014J\u0008\u00104\u001a\u00020\u001aH\u0014J\u0008\u00105\u001a\u00020\u001aH\u0014J\r\u00106\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u00107J\n\u00108\u001a\u0004\u0018\u00010+H\u0014J\u0016\u00109\u001a\u0004\u0018\u00010+2\n\u0010\'\u001a\u0006\u0012\u0002\u0008\u00030(H\u0014J\u0011\u0010\"\u001a\u00028\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010:J\u001a\u0010;\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010:J\u0013\u0010<\u001a\u0004\u0018\u00018\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010:J\u0019\u0010=\u001a\u0004\u0018\u00018\u00002\u0008\u0010>\u001a\u0004\u0018\u00010+H\u0002\u00a2\u0006\u0002\u0010?J\u001f\u0010@\u001a\u0002H&\"\u0004\u0008\u0001\u0010&2\u0006\u0010-\u001a\u00020.H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010AJR\u0010B\u001a\u00020\u001a\"\u0004\u0008\u0001\u0010&2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u0002H&0(2\u0006\u0010-\u001a\u00020.2$\u0010)\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010+\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H&0,\u0012\u0006\u0012\u0004\u0018\u00010+0*H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010CJ \u0010D\u001a\u00020\u001a2\n\u0010E\u001a\u0006\u0012\u0002\u0008\u00030F2\n\u0010\"\u001a\u0006\u0012\u0002\u0008\u00030#H\u0002J\u0010\u0010G\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010HH\u0014JX\u0010I\u001a\u00020\u001a\"\u0004\u0008\u0001\u0010&* \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010+\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H&0,\u0012\u0006\u0012\u0004\u0018\u00010+0*2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u0002H&0(2\u0006\u0010-\u001a\u00020.2\u0008\u0010J\u001a\u0004\u0018\u00010+H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010KR\u0014\u0010\u0005\u001a\u00020\u00068DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\t\u001a\u00020\u0006X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008R\u0012\u0010\n\u001a\u00020\u0006X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0008R\u0014\u0010\u000c\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u0014\u0010\r\u001a\u00020\u00068DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u0008R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R \u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00130\u000f8F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0011R\u0019\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006R"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "E",
        "Lkotlinx/coroutines/channels/AbstractSendChannel;",
        "Lkotlinx/coroutines/channels/Channel;",
        "()V",
        "hasReceiveOrClosed",
        "",
        "getHasReceiveOrClosed",
        "()Z",
        "isBufferAlwaysEmpty",
        "isBufferEmpty",
        "isClosedForReceive",
        "isEmpty",
        "isEmptyImpl",
        "onReceive",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "getOnReceive",
        "()Lkotlinx/coroutines/selects/SelectClause1;",
        "onReceiveOrClosed",
        "Lkotlinx/coroutines/channels/ValueOrClosed;",
        "getOnReceiveOrClosed",
        "onReceiveOrNull",
        "getOnReceiveOrNull",
        "cancel",
        "cause",
        "",
        "",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "cancelInternal",
        "cancelInternal$kotlinx_coroutines_core",
        "describeTryPoll",
        "Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;",
        "enqueueReceive",
        "receive",
        "Lkotlinx/coroutines/channels/Receive;",
        "enqueueReceiveInternal",
        "enqueueReceiveSelect",
        "R",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "block",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "receiveMode",
        "",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;I)Z",
        "iterator",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "onCancelIdempotent",
        "wasClosed",
        "onReceiveDequeued",
        "onReceiveEnqueued",
        "poll",
        "()Ljava/lang/Object;",
        "pollInternal",
        "pollSelectInternal",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receiveOrClosed",
        "receiveOrNull",
        "receiveOrNullResult",
        "result",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "receiveSuspend",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerSelectReceiveMode",
        "(Lkotlinx/coroutines/selects/SelectInstance;ILkotlin/jvm/functions/Function2;)V",
        "removeReceiveOnCancel",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "takeFirstReceiveOrPeekClosed",
        "Lkotlinx/coroutines/channels/ReceiveOrClosed;",
        "tryStartBlockUnintercepted",
        "value",
        "(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/SelectInstance;ILjava/lang/Object;)V",
        "Itr",
        "ReceiveElement",
        "ReceiveHasNext",
        "ReceiveSelect",
        "RemoveReceiveOnCancel",
        "TryPollDesc",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 472
    invoke-direct {p0}, Lo/emptyInstance;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()Lo/leafMostValueMatching;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/leafMostValueMatching<",
            "TE;>;"
        }
    .end annotation

    .line 767
    invoke-super {p0}, Lo/emptyInstance;->ICustomTabsCallback()Lo/leafMostValueMatching;

    move-result-object v0

    return-object v0
.end method

.method protected extraCallback()Ljava/lang/Object;
    .locals 3

    .line 497
    :cond_0
    invoke-virtual {p0}, Lo/findRootMostMatchingPath;->onRelationshipValidationResult()Lo/subtree;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lo/afterExecute;->extraCallback:Ljava/lang/Object;

    return-object v0

    .line 498
    :cond_1
    invoke-virtual {v0}, Lo/subtree;->onMessageChannelReady()Lo/AppCompatDrawableManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 501
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lo/subtree;->onNavigationEvent()V

    .line 502
    invoke-virtual {v0}, Lo/subtree;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onNavigationEvent()Z
.end method

.method protected onNavigationEvent(Lo/rootMostValue;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/rootMostValue<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Lo/findRootMostMatchingPath;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 571
    invoke-virtual {p0}, Lo/findRootMostMatchingPath;->onMessageChannelReady()Lo/forEachDescendant;

    move-result-object v0

    check-cast v0, Lo/updateParents;

    .line 5110
    :cond_0
    invoke-virtual {v0, v1}, Lo/updateParents;->ICustomTabsCallback(Lo/stringHashV2Representation;)Lo/updateParents;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lo/updateParents;->_prev:Ljava/lang/Object;

    check-cast v4, Lo/updateParents;

    invoke-static {v4}, Lo/updateParents;->onNavigationEvent(Lo/updateParents;)Lo/updateParents;

    move-result-object v4

    .line 571
    :cond_1
    instance-of v5, v4, Lo/subtree;

    xor-int/2addr v5, v3

    if-nez v5, :cond_2

    return v2

    .line 1068
    :cond_2
    move-object v5, p1

    check-cast v5, Lo/updateParents;

    invoke-virtual {v4, v5, v0}, Lo/updateParents;->onPostMessage(Lo/updateParents;Lo/updateParents;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    .line 572
    :cond_3
    invoke-virtual {p0}, Lo/findRootMostMatchingPath;->onMessageChannelReady()Lo/forEachDescendant;

    move-result-object v0

    check-cast v0, Lo/updateParents;

    .line 1070
    new-instance v4, Lo/findRootMostMatchingPath$ICustomTabsCallback;

    check-cast p1, Lo/updateParents;

    invoke-direct {v4, p1, p0}, Lo/findRootMostMatchingPath$ICustomTabsCallback;-><init>(Lo/updateParents;Lo/findRootMostMatchingPath;)V

    check-cast v4, Lo/updateParents$ICustomTabsCallback;

    .line 6110
    :goto_0
    invoke-virtual {v0, v1}, Lo/updateParents;->ICustomTabsCallback(Lo/stringHashV2Representation;)Lo/updateParents;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v5, v0, Lo/updateParents;->_prev:Ljava/lang/Object;

    check-cast v5, Lo/updateParents;

    invoke-static {v5}, Lo/updateParents;->onNavigationEvent(Lo/updateParents;)Lo/updateParents;

    move-result-object v5

    .line 572
    :cond_4
    instance-of v6, v5, Lo/subtree;

    xor-int/2addr v6, v3

    if-nez v6, :cond_5

    return v2

    .line 1076
    :cond_5
    invoke-virtual {v5, p1, v0, v4}, Lo/updateParents;->ICustomTabsCallback(Lo/updateParents;Lo/updateParents;Lo/updateParents$ICustomTabsCallback;)I

    move-result v5

    if-eq v5, v3, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    goto :goto_0

    :cond_6
    return v2

    :cond_7
    return v3
.end method

.method public final onPostMessage(Lo/setSessionPersistenceKey;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setSessionPersistenceKey<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lo/findRootMostMatchingPath;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    .line 544
    sget-object v1, Lo/afterExecute;->extraCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Lo/findRootMostPathWithValue;

    if-nez v1, :cond_0

    return-object v0

    .line 2061
    :cond_0
    invoke-static {p1}, Lo/onZombied;->onNavigationEvent(Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback;->onMessageChannelReady(Lo/setSessionPersistenceKey;)Lo/getWrite;

    move-result-object v0

    .line 2062
    move-object v1, v0

    check-cast v1, Lo/addMerge;

    .line 1551
    new-instance v2, Lo/findRootMostMatchingPath$extraCallback;

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lo/findRootMostMatchingPath$extraCallback;-><init>(Lo/addMerge;I)V

    .line 1553
    :cond_1
    move-object v3, v2

    check-cast v3, Lo/rootMostValue;

    .line 2574
    invoke-virtual {p0, v3}, Lo/findRootMostMatchingPath;->onNavigationEvent(Lo/rootMostValue;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3786
    new-instance v2, Lo/findRootMostMatchingPath$onNavigationEvent;

    invoke-direct {v2, p0, v3}, Lo/findRootMostMatchingPath$onNavigationEvent;-><init>(Lo/findRootMostMatchingPath;Lo/rootMostValue;)V

    check-cast v2, Lo/calcCompleteEventChildren;

    .line 4097
    check-cast v2, Lo/onDisconnectSetValue;

    .line 3786
    invoke-interface {v1, v2}, Lo/addMerge;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    goto :goto_0

    .line 1558
    :cond_2
    invoke-virtual {p0}, Lo/findRootMostMatchingPath;->extraCallback()Ljava/lang/Object;

    move-result-object v3

    .line 1559
    instance-of v4, v3, Lo/findRootMostPathWithValue;

    if-eqz v4, :cond_3

    .line 1560
    check-cast v3, Lo/findRootMostPathWithValue;

    invoke-virtual {v2, v3}, Lo/rootMostValue;->ICustomTabsCallback(Lo/findRootMostPathWithValue;)V

    goto :goto_0

    .line 1563
    :cond_3
    sget-object v4, Lo/afterExecute;->extraCallback:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    .line 1564
    check-cast v1, Lo/setSessionPersistenceKey;

    invoke-virtual {v2, v3}, Lo/findRootMostMatchingPath$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-static {v2}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    .line 2063
    :goto_0
    invoke-virtual {v0}, Lo/getWrite;->ICustomTabsCallback$Stub()Ljava/lang/Object;

    move-result-object v0

    .line 5054
    sget-object v1, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    if-ne v0, v1, :cond_4

    const-string v1, "frame"

    .line 2060
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-object v0

    .line 1551
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Any?>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract onPostMessage()Z
.end method
