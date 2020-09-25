.class public final Lo/isValidKey$onMessageChannelReady;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isValidKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\u0008\u0080\u0004\u0018\u00002\u00020IB\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\tJ\u000f\u0010\u0016\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008 \u0010\u001dJ\u000f\u0010!\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008!\u0010\u001dJ\u000f\u0010\"\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0017J\u000f\u0010#\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008#\u0010\u001dJ\u0017\u0010(\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020$H\u0000\u00a2\u0006\u0004\u0008&\u0010\'J\u0019\u0010*\u001a\u0004\u0018\u00010\u000b2\u0006\u0010)\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008*\u0010\u0012J\u000f\u0010+\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008+\u0010\u001dR*\u0010,\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u0010\tR\u0016\u00102\u001a\u0002018\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00104\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u00107\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R$\u0010:\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u0016\u0010@\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010-R\u0014\u0010D\u001a\u00020A8\u00c6\u0002@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010CR\u0016\u0010E\u001a\u00020$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010G\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u00108\u00a8\u0006H"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "",
        "index",
        "<init>",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V",
        "taskMode",
        "",
        "afterTask",
        "(I)V",
        "beforeTask",
        "Lkotlinx/coroutines/scheduling/Task;",
        "task",
        "executeTask",
        "(Lkotlinx/coroutines/scheduling/Task;)V",
        "",
        "scanLocalQueue",
        "findAnyTask",
        "(Z)Lkotlinx/coroutines/scheduling/Task;",
        "findTask",
        "mode",
        "idleReset",
        "inStack",
        "()Z",
        "upperBound",
        "nextInt$kotlinx_coroutines_core",
        "(I)I",
        "nextInt",
        "park",
        "()V",
        "pollGlobalQueues",
        "()Lkotlinx/coroutines/scheduling/Task;",
        "run",
        "runWorker",
        "tryAcquireCpuPermit",
        "tryPark",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "newState",
        "tryReleaseCpu$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z",
        "tryReleaseCpu",
        "blockingOnly",
        "trySteal",
        "tryTerminateWorker",
        "indexInArray",
        "I",
        "getIndexInArray",
        "()I",
        "setIndexInArray",
        "Lkotlinx/coroutines/scheduling/WorkQueue;",
        "localQueue",
        "Lkotlinx/coroutines/scheduling/WorkQueue;",
        "mayHaveLocalTasks",
        "Z",
        "",
        "minDelayUntilStealableTaskNs",
        "J",
        "",
        "nextParkedWorker",
        "Ljava/lang/Object;",
        "getNextParkedWorker",
        "()Ljava/lang/Object;",
        "setNextParkedWorker",
        "(Ljava/lang/Object;)V",
        "rngState",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "getScheduler",
        "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "scheduler",
        "state",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "terminationDeadline",
        "kotlinx-coroutines-core",
        "Ljava/lang/Thread;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field final synthetic ICustomTabsCallback:Lo/isValidKey;

.field private asBinder:J

.field public extraCallback:Lo/isValidKey$onPostMessage;

.field volatile indexInArray:I

.field volatile nextParkedWorker:Ljava/lang/Object;

.field public final onMessageChannelReady:Lo/deserializeToParameterizedType;

.field public onNavigationEvent:Z

.field private onRelationshipValidationResult:J

.field private onTransact:I

.field volatile workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lo/isValidKey$onMessageChannelReady;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/isValidKey$onMessageChannelReady;->onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lo/isValidKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 580
    iput-object p1, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 582
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 600
    new-instance p1, Lo/deserializeToParameterizedType;

    invoke-direct {p1}, Lo/deserializeToParameterizedType;-><init>()V

    iput-object p1, p0, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    .line 608
    sget-object p1, Lo/isValidKey$onPostMessage;->onMessageChannelReady:Lo/isValidKey$onPostMessage;

    iput-object p1, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    const/4 p1, 0x0

    .line 617
    iput p1, p0, Lo/isValidKey$onMessageChannelReady;->workerCtl:I

    .line 631
    sget-object p1, Lo/isValidKey;->onRelationshipValidationResult:Lo/AppCompatDrawableManager;

    iput-object p1, p0, Lo/isValidKey$onMessageChannelReady;->nextParkedWorker:Ljava/lang/Object;

    .line 638
    sget-object p1, Lo/getRootNode;->onNavigationEvent:Lo/getRootNode$extraCallback;

    .line 20245
    invoke-static {}, Lo/getRootNode;->onMessageChannelReady()Lo/getRootNode;

    move-result-object p1

    invoke-virtual {p1}, Lo/getRootNode;->onNavigationEvent()I

    move-result p1

    .line 638
    iput p1, p0, Lo/isValidKey$onMessageChannelReady;->onTransact:I

    return-void
.end method

.method public constructor <init>(Lo/isValidKey;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1}, Lo/isValidKey$onMessageChannelReady;-><init>(Lo/isValidKey;)V

    .line 594
    invoke-direct {p0, p2}, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady(I)V

    return-void
.end method

.method private final ICustomTabsCallback()Z
    .locals 10

    .line 645
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    sget-object v1, Lo/isValidKey$onPostMessage;->ICustomTabsCallback:Lo/isValidKey$onPostMessage;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 646
    :cond_0
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    .line 974
    :cond_1
    iget-wide v5, v0, Lo/isValidKey;->controlState:J

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v1, 0x2a

    shr-long/2addr v3, v1

    long-to-int v1, v3

    const/4 v9, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    .line 979
    sget-object v3, Lo/isValidKey;->extraCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 647
    sget-object v0, Lo/isValidKey$onPostMessage;->ICustomTabsCallback:Lo/isValidKey$onPostMessage;

    iput-object v0, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    return v2

    :cond_3
    return v9
.end method

.method private final extraCallback(Z)Lo/convertToPlainJavaTypes;
    .locals 18

    move-object/from16 v0, p0

    .line 895
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    .line 16053
    iget-object v4, v1, Lo/deserializeToParameterizedType;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 17052
    iget v4, v1, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v1, v1, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    goto :goto_0

    .line 18052
    :cond_0
    iget v4, v1, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v1, v1, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v4, v1

    :goto_0
    if-nez v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 895
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 896
    :cond_3
    :goto_2
    iget-object v1, v0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    invoke-static {v1}, Lo/isValidKey;->onMessageChannelReady(Lo/isValidKey;)I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v1, v4, :cond_4

    return-object v5

    .line 902
    :cond_4
    invoke-direct {v0, v1}, Lo/isValidKey$onMessageChannelReady;->onNavigationEvent(I)I

    move-result v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v9, v6

    const/4 v8, 0x0

    :goto_3
    const-wide/16 v11, 0x0

    if-ge v8, v1, :cond_d

    add-int/2addr v4, v3

    if-le v4, v1, :cond_5

    const/4 v4, 0x1

    .line 907
    :cond_5
    iget-object v13, v0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object v13, v13, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v13, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/isValidKey$onMessageChannelReady;

    if-eqz v13, :cond_c

    .line 908
    move-object v14, v0

    check-cast v14, Lo/isValidKey$onMessageChannelReady;

    if-eq v13, v14, :cond_c

    .line 909
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v14

    if-eqz v14, :cond_9

    iget-object v14, v0, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    .line 18053
    iget-object v15, v14, Lo/deserializeToParameterizedType;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v15, :cond_6

    .line 19052
    iget v15, v14, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v14, v14, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v15, v14

    add-int/2addr v15, v3

    goto :goto_4

    .line 20052
    :cond_6
    iget v15, v14, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v14, v14, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v15, v14

    :goto_4
    if-nez v15, :cond_7

    const/4 v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_8

    goto :goto_6

    .line 909
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_9
    :goto_6
    if-eqz p1, :cond_a

    .line 911
    iget-object v14, v0, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    iget-object v13, v13, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    invoke-virtual {v14, v13}, Lo/deserializeToParameterizedType;->onMessageChannelReady(Lo/deserializeToParameterizedType;)J

    move-result-wide v13

    goto :goto_7

    .line 913
    :cond_a
    iget-object v14, v0, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    iget-object v13, v13, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    invoke-virtual {v14, v13}, Lo/deserializeToParameterizedType;->ICustomTabsCallback(Lo/deserializeToParameterizedType;)J

    move-result-wide v13

    :goto_7
    const-wide/16 v15, -0x1

    cmp-long v17, v13, v15

    if-nez v17, :cond_b

    .line 916
    iget-object v1, v0, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    invoke-virtual {v1}, Lo/deserializeToParameterizedType;->onNavigationEvent()Lo/convertToPlainJavaTypes;

    move-result-object v1

    return-object v1

    :cond_b
    cmp-long v15, v13, v11

    if-lez v15, :cond_c

    .line 918
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_d
    cmp-long v1, v9, v6

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    move-wide v9, v11

    .line 922
    :goto_8
    iput-wide v9, v0, Lo/isValidKey$onMessageChannelReady;->asBinder:J

    return-object v5
.end method

.method private final extraCallback()V
    .locals 6

    .line 796
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object v0, v0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 985
    monitor-enter v0

    .line 798
    :try_start_0
    iget-object v1, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    .line 13299
    iget v1, v1, Lo/isValidKey;->_isTerminated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 798
    monitor-exit v0

    return-void

    .line 800
    :cond_0
    :try_start_1
    iget-object v1, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    invoke-static {v1}, Lo/isValidKey;->onMessageChannelReady(Lo/isValidKey;)I

    move-result v1

    iget-object v2, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget v2, v2, Lo/isValidKey;->asBinder:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v2, :cond_1

    monitor-exit v0

    return-void

    .line 805
    :cond_1
    :try_start_2
    sget-object v1, Lo/isValidKey$onMessageChannelReady;->onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 812
    :cond_2
    :try_start_3
    iget v1, p0, Lo/isValidKey$onMessageChannelReady;->indexInArray:I

    const/4 v2, 0x0

    .line 813
    invoke-direct {p0, v2}, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady(I)V

    .line 821
    iget-object v3, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    invoke-virtual {v3, p0, v1, v2}, Lo/isValidKey;->onNavigationEvent(Lo/isValidKey$onMessageChannelReady;II)V

    .line 826
    iget-object v2, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    .line 986
    sget-object v3, Lo/isValidKey;->extraCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v3, v2

    if-eq v3, v1, :cond_4

    .line 828
    iget-object v2, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object v2, v2, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    check-cast v2, Lo/isValidKey$onMessageChannelReady;

    .line 829
    iget-object v4, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object v4, v4, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 830
    invoke-direct {v2, v1}, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady(I)V

    .line 838
    iget-object v4, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    invoke-virtual {v4, v2, v3, v1}, Lo/isValidKey;->onNavigationEvent(Lo/isValidKey$onMessageChannelReady;II)V

    .line 843
    :cond_4
    iget-object v1, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object v1, v1, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 844
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    .line 845
    sget-object v0, Lo/isValidKey$onPostMessage;->onNavigationEvent:Lo/isValidKey$onPostMessage;

    iput-object v0, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    return-void

    :catchall_0
    move-exception v1

    .line 844
    monitor-exit v0

    throw v1
.end method

.method private final onMessageChannelReady()Lo/convertToPlainJavaTypes;
    .locals 1

    const/4 v0, 0x2

    .line 885
    invoke-direct {p0, v0}, Lo/isValidKey$onMessageChannelReady;->onNavigationEvent(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 886
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object v0, v0, Lo/isValidKey;->onPostMessage:Lo/validateNullableKey;

    invoke-virtual {v0}, Lo/tryParseInt;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/convertToPlainJavaTypes;

    if-eqz v0, :cond_0

    return-object v0

    .line 887
    :cond_0
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object v0, v0, Lo/isValidKey;->onNavigationEvent:Lo/validateNullableKey;

    invoke-virtual {v0}, Lo/tryParseInt;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/convertToPlainJavaTypes;

    return-object v0

    .line 889
    :cond_1
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object v0, v0, Lo/isValidKey;->onNavigationEvent:Lo/validateNullableKey;

    invoke-virtual {v0}, Lo/tryParseInt;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/convertToPlainJavaTypes;

    if-eqz v0, :cond_2

    return-object v0

    .line 890
    :cond_2
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object v0, v0, Lo/isValidKey;->onPostMessage:Lo/validateNullableKey;

    invoke-virtual {v0}, Lo/tryParseInt;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/convertToPlainJavaTypes;

    return-object v0
.end method

.method private final onMessageChannelReady(Z)Lo/convertToPlainJavaTypes;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 874
    iget-object p1, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget p1, p1, Lo/isValidKey;->asBinder:I

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lo/isValidKey$onMessageChannelReady;->onNavigationEvent(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 875
    invoke-direct {p0}, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady()Lo/convertToPlainJavaTypes;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 876
    :cond_1
    iget-object v1, p0, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    .line 15066
    sget-object v2, Lo/deserializeToParameterizedType;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/convertToPlainJavaTypes;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lo/deserializeToParameterizedType;->onMessageChannelReady()Lo/convertToPlainJavaTypes;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    if-nez p1, :cond_5

    .line 877
    invoke-direct {p0}, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady()Lo/convertToPlainJavaTypes;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 879
    :cond_4
    invoke-direct {p0}, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady()Lo/convertToPlainJavaTypes;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 881
    :cond_5
    invoke-direct {p0, v0}, Lo/isValidKey$onMessageChannelReady;->extraCallback(Z)Lo/convertToPlainJavaTypes;

    move-result-object p1

    return-object p1
.end method

.method private onMessageChannelReady(I)V
    .locals 2

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object v1, v1, Lo/isValidKey;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 590
    iput p1, p0, Lo/isValidKey$onMessageChannelReady;->indexInArray:I

    return-void
.end method

.method private onNavigationEvent(I)I
    .locals 3

    .line 766
    iget v0, p0, Lo/isValidKey$onMessageChannelReady;->onTransact:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 770
    iput v0, p0, Lo/isValidKey$onMessageChannelReady;->onTransact:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 776
    rem-int/2addr v0, p1

    return v0
.end method

.method private final onPostMessage()V
    .locals 10

    .line 5732
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Lo/isValidKey;->onRelationshipValidationResult:Lo/AppCompatDrawableManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 719
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    .line 7631
    iget-object v1, p0, Lo/isValidKey$onMessageChannelReady;->nextParkedWorker:Ljava/lang/Object;

    .line 6178
    sget-object v4, Lo/isValidKey;->onRelationshipValidationResult:Lo/AppCompatDrawableManager;

    if-eq v1, v4, :cond_1

    goto :goto_3

    .line 6976
    :cond_1
    iget-wide v6, v0, Lo/isValidKey;->parkedWorkersStack:J

    const-wide/32 v4, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v1, v4

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v6

    const-wide/32 v8, -0x200000

    and-long/2addr v4, v8

    .line 8587
    iget v8, p0, Lo/isValidKey$onMessageChannelReady;->indexInArray:I

    .line 6187
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v8, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 6188
    :cond_4
    :goto_2
    iget-object v9, v0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 8631
    iput-object v1, p0, Lo/isValidKey$onMessageChannelReady;->nextParkedWorker:Ljava/lang/Object;

    .line 6194
    sget-object v1, Lo/isValidKey;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v8, v8

    or-long/2addr v8, v4

    move-object v4, v1

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_3
    return-void

    .line 722
    :cond_5
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    .line 9053
    iget-object v1, v0, Lo/deserializeToParameterizedType;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 10052
    iget v1, v0, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v0, v0, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v3

    goto :goto_4

    .line 11052
    :cond_6
    iget v1, v0, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v0, v0, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v1, v0

    :goto_4
    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    goto :goto_6

    .line 722
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_9
    :goto_6
    const/4 v0, -0x1

    .line 723
    iput v0, p0, Lo/isValidKey$onMessageChannelReady;->workerCtl:I

    .line 11732
    :cond_a
    :goto_7
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Lo/isValidKey;->onRelationshipValidationResult:Lo/AppCompatDrawableManager;

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_d

    .line 725
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    .line 12299
    iget v0, v0, Lo/isValidKey;->_isTerminated:I

    if-nez v0, :cond_d

    .line 725
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    sget-object v1, Lo/isValidKey$onPostMessage;->onNavigationEvent:Lo/isValidKey$onPostMessage;

    if-eq v0, v1, :cond_d

    .line 726
    sget-object v0, Lo/isValidKey$onPostMessage;->extraCallback:Lo/isValidKey$onPostMessage;

    invoke-virtual {p0, v0}, Lo/isValidKey$onMessageChannelReady;->onPostMessage(Lo/isValidKey$onPostMessage;)Z

    .line 727
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 12781
    iget-wide v0, p0, Lo/isValidKey$onMessageChannelReady;->onRelationshipValidationResult:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v6, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-wide v6, v6, Lo/isValidKey;->asInterface:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lo/isValidKey$onMessageChannelReady;->onRelationshipValidationResult:J

    .line 12783
    :cond_c
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-wide v0, v0, Lo/isValidKey;->asInterface:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 12786
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v6, p0, Lo/isValidKey$onMessageChannelReady;->onRelationshipValidationResult:J

    sub-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_a

    .line 12787
    iput-wide v4, p0, Lo/isValidKey$onMessageChannelReady;->onRelationshipValidationResult:J

    .line 12788
    invoke-direct {p0}, Lo/isValidKey$onMessageChannelReady;->extraCallback()V

    goto :goto_7

    :cond_d
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)Lo/convertToPlainJavaTypes;
    .locals 2

    .line 858
    invoke-direct {p0}, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady(Z)Lo/convertToPlainJavaTypes;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 861
    iget-object p1, p0, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    .line 14066
    sget-object v0, Lo/deserializeToParameterizedType;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/convertToPlainJavaTypes;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lo/deserializeToParameterizedType;->onMessageChannelReady()Lo/convertToPlainJavaTypes;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    .line 863
    :cond_2
    iget-object p1, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    iget-object p1, p1, Lo/isValidKey;->onNavigationEvent:Lo/validateNullableKey;

    invoke-virtual {p1}, Lo/tryParseInt;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/convertToPlainJavaTypes;

    :cond_3
    if-nez v0, :cond_4

    const/4 p1, 0x1

    .line 865
    invoke-direct {p0, p1}, Lo/isValidKey$onMessageChannelReady;->extraCallback(Z)Lo/convertToPlainJavaTypes;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final onPostMessage(Lo/isValidKey$onPostMessage;)Z
    .locals 6

    .line 658
    iget-object v0, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    .line 659
    sget-object v1, Lo/isValidKey$onPostMessage;->ICustomTabsCallback:Lo/isValidKey$onPostMessage;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 660
    iget-object v2, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    .line 981
    sget-object v3, Lo/isValidKey;->extraCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    .line 661
    iput-object p1, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    :cond_2
    return v1
.end method

.method public final run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 1672
    :goto_1
    iget-object v3, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    .line 2299
    iget v3, v3, Lo/isValidKey;->_isTerminated:I

    if-nez v3, :cond_c

    .line 1672
    iget-object v3, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    sget-object v4, Lo/isValidKey$onPostMessage;->onNavigationEvent:Lo/isValidKey$onPostMessage;

    if-eq v3, v4, :cond_c

    .line 1673
    iget-boolean v3, p0, Lo/isValidKey$onMessageChannelReady;->onNavigationEvent:Z

    invoke-virtual {p0, v3}, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback(Z)Lo/convertToPlainJavaTypes;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_9

    .line 1677
    iput-wide v4, p0, Lo/isValidKey$onMessageChannelReady;->asBinder:J

    .line 2982
    iget-object v2, v3, Lo/convertToPlainJavaTypes;->asBinder:Lo/parseAndValidateUpdate;

    invoke-interface {v2}, Lo/parseAndValidateUpdate;->onPostMessage()I

    move-result v2

    .line 3850
    iput-wide v4, p0, Lo/isValidKey$onMessageChannelReady;->onRelationshipValidationResult:J

    .line 3851
    iget-object v4, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    sget-object v5, Lo/isValidKey$onPostMessage;->extraCallback:Lo/isValidKey$onPostMessage;

    if-ne v4, v5, :cond_4

    .line 3852
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v2, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 3853
    :cond_3
    :goto_3
    sget-object v4, Lo/isValidKey$onPostMessage;->onPostMessage:Lo/isValidKey$onPostMessage;

    iput-object v4, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    :cond_4
    if-eqz v2, :cond_5

    .line 4745
    sget-object v4, Lo/isValidKey$onPostMessage;->onPostMessage:Lo/isValidKey$onPostMessage;

    invoke-virtual {p0, v4}, Lo/isValidKey$onMessageChannelReady;->onPostMessage(Lo/isValidKey$onPostMessage;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4746
    iget-object v4, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    invoke-virtual {v4}, Lo/isValidKey;->extraCallback()V

    .line 2738
    :cond_5
    invoke-static {v3}, Lo/isValidKey;->extraCallback(Lo/convertToPlainJavaTypes;)V

    if-eqz v2, :cond_0

    .line 4752
    iget-object v2, p0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    .line 4983
    sget-object v3, Lo/isValidKey;->extraCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v4, -0x200000

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 4753
    iget-object v2, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    .line 4755
    sget-object v3, Lo/isValidKey$onPostMessage;->onNavigationEvent:Lo/isValidKey$onPostMessage;

    if-eq v2, v3, :cond_0

    .line 4756
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lo/isValidKey$onPostMessage;->onPostMessage:Lo/isValidKey$onPostMessage;

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 4757
    :cond_8
    :goto_5
    sget-object v2, Lo/isValidKey$onPostMessage;->onMessageChannelReady:Lo/isValidKey$onPostMessage;

    iput-object v2, p0, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    goto/16 :goto_0

    .line 1681
    :cond_9
    iput-boolean v1, p0, Lo/isValidKey$onMessageChannelReady;->onNavigationEvent:Z

    .line 1694
    iget-wide v6, p0, Lo/isValidKey$onMessageChannelReady;->asBinder:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_b

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1699
    :cond_a
    sget-object v2, Lo/isValidKey$onPostMessage;->extraCallback:Lo/isValidKey$onPostMessage;

    invoke-virtual {p0, v2}, Lo/isValidKey$onMessageChannelReady;->onPostMessage(Lo/isValidKey$onPostMessage;)Z

    .line 1700
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1701
    iget-wide v2, p0, Lo/isValidKey$onMessageChannelReady;->asBinder:J

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 1702
    iput-wide v4, p0, Lo/isValidKey$onMessageChannelReady;->asBinder:J

    goto/16 :goto_0

    .line 1711
    :cond_b
    invoke-direct {p0}, Lo/isValidKey$onMessageChannelReady;->onPostMessage()V

    goto/16 :goto_1

    .line 1713
    :cond_c
    sget-object v0, Lo/isValidKey$onPostMessage;->onNavigationEvent:Lo/isValidKey$onPostMessage;

    invoke-virtual {p0, v0}, Lo/isValidKey$onMessageChannelReady;->onPostMessage(Lo/isValidKey$onPostMessage;)Z

    return-void
.end method
