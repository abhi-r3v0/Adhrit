.class final Lo/onConnect;
.super Lo/loadTrackedQueries$ICustomTabsCallback;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/verifyInsideTransaction;

.field private ICustomTabsCallback$Stub:Lo/onDataMessage;

.field private asBinder:Z

.field private asInterface:Lo/colorFlip;

.field private final extraCallback:Lo/deleteTrackedQuery;

.field private final onMessageChannelReady:Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator<",
            "**>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/getPredecessorKey;

.field private final onPostMessage:Lo/moveRedRight;

.field private final onTransact:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/moveRedRight;Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/moveRedRight;",
            "Lo/reverseIterator<",
            "**>;",
            "Lo/getPredecessorKey;",
            "Lo/deleteTrackedQuery;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lo/loadTrackedQueries$ICustomTabsCallback;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/onConnect;->onTransact:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lo/onConnect;->onPostMessage:Lo/moveRedRight;

    .line 56
    iput-object p2, p0, Lo/onConnect;->onMessageChannelReady:Lo/reverseIterator;

    .line 57
    iput-object p3, p0, Lo/onConnect;->onNavigationEvent:Lo/getPredecessorKey;

    .line 58
    iput-object p4, p0, Lo/onConnect;->extraCallback:Lo/deleteTrackedQuery;

    .line 59
    invoke-static {}, Lo/verifyInsideTransaction;->extraCallback()Lo/verifyInsideTransaction;

    move-result-object p1

    iput-object p1, p0, Lo/onConnect;->ICustomTabsCallback:Lo/verifyInsideTransaction;

    return-void
.end method

.method private onNavigationEvent(Lo/colorFlip;)V
    .locals 3

    .line 85
    iget-boolean v0, p0, Lo/onConnect;->asBinder:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 86
    iput-boolean v1, p0, Lo/onConnect;->asBinder:Z

    .line 87
    iget-object v0, p0, Lo/onConnect;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v2, p0, Lo/onConnect;->asInterface:Lo/colorFlip;

    if-nez v2, :cond_0

    .line 91
    iput-object p1, p0, Lo/onConnect;->asInterface:Lo/colorFlip;

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 94
    :cond_0
    monitor-exit v0

    .line 97
    iget-object v0, p0, Lo/onConnect;->ICustomTabsCallback$Stub:Lo/onDataMessage;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 98
    iget-object v0, p0, Lo/onConnect;->ICustomTabsCallback$Stub:Lo/onDataMessage;

    invoke-virtual {v0, p1}, Lo/onDataMessage;->onNavigationEvent(Lo/colorFlip;)V

    return-void

    .line 5511
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "delayedStream is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 94
    monitor-exit v0

    throw p1

    .line 4511
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already finalized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/getPredecessorKey;)V
    .locals 4

    .line 64
    iget-boolean v0, p0, Lo/onConnect;->asBinder:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lo/onConnect;->onNavigationEvent:Lo/getPredecessorKey;

    invoke-virtual {v0, p1}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey;)V

    .line 68
    iget-object p1, p0, Lo/onConnect;->ICustomTabsCallback:Lo/verifyInsideTransaction;

    invoke-virtual {p1}, Lo/verifyInsideTransaction;->onNavigationEvent()Lo/verifyInsideTransaction;

    move-result-object p1

    .line 70
    :try_start_0
    iget-object v0, p0, Lo/onConnect;->onPostMessage:Lo/moveRedRight;

    iget-object v1, p0, Lo/onConnect;->onMessageChannelReady:Lo/reverseIterator;

    iget-object v2, p0, Lo/onConnect;->onNavigationEvent:Lo/getPredecessorKey;

    iget-object v3, p0, Lo/onConnect;->extraCallback:Lo/deleteTrackedQuery;

    invoke-interface {v0, v1, v2, v3}, Lo/moveRedRight;->onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v1, p0, Lo/onConnect;->ICustomTabsCallback:Lo/verifyInsideTransaction;

    invoke-virtual {v1, p1}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    .line 74
    invoke-direct {p0, v0}, Lo/onConnect;->onNavigationEvent(Lo/colorFlip;)V

    return-void

    :catchall_0
    move-exception v0

    .line 72
    iget-object v1, p0, Lo/onConnect;->ICustomTabsCallback:Lo/verifyInsideTransaction;

    invoke-virtual {v1, p1}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    throw v0

    .line 1511
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "apply() or fail() already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onPostMessage()Lo/colorFlip;
    .locals 2

    .line 105
    iget-object v0, p0, Lo/onConnect;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lo/onConnect;->asInterface:Lo/colorFlip;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lo/onDataMessage;

    invoke-direct {v1}, Lo/onDataMessage;-><init>()V

    iput-object v1, p0, Lo/onConnect;->ICustomTabsCallback$Stub:Lo/onDataMessage;

    .line 109
    iput-object v1, p0, Lo/onConnect;->asInterface:Lo/colorFlip;

    monitor-exit v0

    return-object v1

    .line 111
    :cond_0
    iget-object v1, p0, Lo/onConnect;->asInterface:Lo/colorFlip;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 113
    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage(Lo/emptyMap;)V
    .locals 3

    .line 2516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 80
    iget-boolean v0, p0, Lo/onConnect;->asBinder:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lo/onControlMessage;

    invoke-direct {v0, p1}, Lo/onControlMessage;-><init>(Lo/emptyMap;)V

    invoke-direct {p0, v0}, Lo/onConnect;->onNavigationEvent(Lo/colorFlip;)V

    return-void

    .line 3511
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "apply() or fail() already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3142
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot fail with OK status"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
