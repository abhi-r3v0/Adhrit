.class public final Lo/isValidKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isValidKey$onMessageChannelReady;,
        Lo/isValidKey$onPostMessage;,
        Lo/isValidKey$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u00080\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0000\u0018\u0000 \\2\u00020`2\u00020a:\u0003\\]^B+\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0086\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J#\u0010\u001f\u001a\u00020\n2\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0018\u0010 \u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008 \u0010\u0011J\u0015\u0010\"\u001a\u0008\u0018\u00010!R\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010$\u001a\u00020\u0013H\u0082\u0008\u00a2\u0006\u0004\u0008$\u0010\u0015J\u0010\u0010%\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0004\u0008%\u0010\u0017J-\u0010\'\u001a\u00020\u00132\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b2\u0008\u0008\u0002\u0010&\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\'\u0010(J\u001b\u0010*\u001a\u00020\u00132\n\u0010)\u001a\u00060\u0018j\u0002`\u0019H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u0010\u0010,\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008,\u0010-J\u0010\u0010.\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0004\u0008.\u0010\u0017J\u001b\u00100\u001a\u00020\u00012\n\u0010/\u001a\u00060!R\u00020\u0000H\u0002\u00a2\u0006\u0004\u00080\u00101J\u0015\u00102\u001a\u0008\u0018\u00010!R\u00020\u0000H\u0002\u00a2\u0006\u0004\u00082\u0010#J\u001b\u00105\u001a\u00020\u000c2\n\u0010/\u001a\u00060!R\u00020\u0000H\u0000\u00a2\u0006\u0004\u00083\u00104J+\u0010:\u001a\u00020\u00132\n\u0010/\u001a\u00060!R\u00020\u00002\u0006\u00106\u001a\u00020\u00012\u0006\u00107\u001a\u00020\u0001H\u0000\u00a2\u0006\u0004\u00088\u00109J\u0010\u0010;\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008;\u0010-J\u0015\u0010<\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008<\u0010=J\u0015\u0010?\u001a\u00020\u00132\u0006\u0010>\u001a\u00020\u0004\u00a2\u0006\u0004\u0008?\u0010@J\u0017\u0010B\u001a\u00020\u00132\u0006\u0010A\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010E\u001a\u00020\u0013H\u0000\u00a2\u0006\u0004\u0008D\u0010\u0015J\u000f\u0010F\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008F\u0010GJ\u0010\u0010H\u001a\u00020\u000cH\u0082\u0008\u00a2\u0006\u0004\u0008H\u0010IJ\u0019\u0010J\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008L\u0010IJ+\u0010M\u001a\u0004\u0018\u00010\n*\u0008\u0018\u00010!R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008M\u0010NR\u0017\u0010\u0010\u001a\u00020\u00018\u00c2\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010\u0017R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010PR\u0017\u0010 \u001a\u00020\u00018\u00c2\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010\u0017R\u0016\u0010S\u001a\u00020R8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0016\u0010U\u001a\u00020R8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010TR\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010VR\u0013\u0010W\u001a\u00020\u000c8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010IR\u0016\u0010\u0003\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010PR\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010XR\"\u0010Z\u001a\u000e\u0012\n\u0012\u0008\u0018\u00010!R\u00020\u00000Y8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[\u00a8\u0006_"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "",
        "corePoolSize",
        "maxPoolSize",
        "",
        "idleWorkerKeepAliveNs",
        "",
        "schedulerName",
        "<init>",
        "(IIJLjava/lang/String;)V",
        "Lkotlinx/coroutines/scheduling/Task;",
        "task",
        "",
        "addToGlobalQueue",
        "(Lkotlinx/coroutines/scheduling/Task;)Z",
        "state",
        "availableCpuPermits",
        "(J)I",
        "blockingTasks",
        "",
        "close",
        "()V",
        "createNewWorker",
        "()I",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "taskContext",
        "createTask$kotlinx_coroutines_core",
        "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;",
        "createTask",
        "createdWorkers",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "currentWorker",
        "()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "decrementBlockingTasks",
        "decrementCreatedWorkers",
        "tailDispatch",
        "dispatch",
        "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V",
        "command",
        "execute",
        "(Ljava/lang/Runnable;)V",
        "incrementBlockingTasks",
        "()J",
        "incrementCreatedWorkers",
        "worker",
        "parkedWorkersStackNextIndex",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I",
        "parkedWorkersStackPop",
        "parkedWorkersStackPush$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z",
        "parkedWorkersStackPush",
        "oldIndex",
        "newIndex",
        "parkedWorkersStackTopUpdate$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V",
        "parkedWorkersStackTopUpdate",
        "releaseCpuPermit",
        "runSafely",
        "(Lkotlinx/coroutines/scheduling/Task;)V",
        "timeout",
        "shutdown",
        "(J)V",
        "skipUnpark",
        "signalBlockingWork",
        "(Z)V",
        "signalCpuWork$kotlinx_coroutines_core",
        "signalCpuWork",
        "toString",
        "()Ljava/lang/String;",
        "tryAcquireCpuPermit",
        "()Z",
        "tryCreateWorker",
        "(J)Z",
        "tryUnpark",
        "submitToLocalQueue",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;",
        "getAvailableCpuPermits",
        "I",
        "getCreatedWorkers",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalBlockingQueue",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalCpuQueue",
        "J",
        "isTerminated",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "workers",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "Companion",
        "Worker",
        "WorkerState",
        "kotlinx-coroutines-core",
        "Ljava/util/concurrent/Executor;",
        "Ljava/io/Closeable;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field static final extraCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final onRelationshipValidationResult:Lo/AppCompatDrawableManager;

.field private static final onTransact:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private ICustomTabsService:I

.field volatile _isTerminated:I

.field public final asBinder:I

.field public final asInterface:J

.field volatile controlState:J

.field public final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lo/isValidKey$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/validateNullableKey;

.field public final onPostMessage:Lo/validateNullableKey;

.field volatile parkedWorkersStack:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 304
    const-class v0, Lo/isValidKey;

    new-instance v1, Lo/AppCompatDrawableManager;

    const-string v2, "NOT_IN_STACK"

    invoke-direct {v1, v2}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v1, Lo/isValidKey;->onRelationshipValidationResult:Lo/AppCompatDrawableManager;

    const-string v1, "parkedWorkersStack"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/isValidKey;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v1, "controlState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/isValidKey;->extraCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v1, "_isTerminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/isValidKey;->onTransact:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/isValidKey;->asBinder:I

    iput p2, p0, Lo/isValidKey;->ICustomTabsService:I

    iput-wide p3, p0, Lo/isValidKey;->asInterface:J

    iput-object p5, p0, Lo/isValidKey;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 102
    iget p1, p0, Lo/isValidKey;->ICustomTabsService:I

    iget p4, p0, Lo/isValidKey;->asBinder:I

    if-lt p1, p4, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string p4, "Max pool size "

    if-eqz p1, :cond_6

    .line 105
    iget p1, p0, Lo/isValidKey;->ICustomTabsService:I

    const p5, 0x1ffffe

    if-gt p1, p5, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 108
    iget-wide p4, p0, Lo/isValidKey;->asInterface:J

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    .line 114
    new-instance p1, Lo/validateNullableKey;

    invoke-direct {p1}, Lo/validateNullableKey;-><init>()V

    iput-object p1, p0, Lo/isValidKey;->onPostMessage:Lo/validateNullableKey;

    .line 116
    new-instance p1, Lo/validateNullableKey;

    invoke-direct {p1}, Lo/validateNullableKey;-><init>()V

    iput-object p1, p0, Lo/isValidKey;->onNavigationEvent:Lo/validateNullableKey;

    .line 140
    iput-wide v0, p0, Lo/isValidKey;->parkedWorkersStack:J

    .line 264
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p4, p0, Lo/isValidKey;->ICustomTabsService:I

    add-int/2addr p4, p2

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 270
    iget p1, p0, Lo/isValidKey;->asBinder:I

    int-to-long p1, p1

    const/16 p4, 0x2a

    shl-long/2addr p1, p4

    iput-wide p1, p0, Lo/isValidKey;->controlState:J

    .line 298
    iput p3, p0, Lo/isValidKey;->_isTerminated:I

    return-void

    .line 109
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Idle worker keep alive time "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lo/isValidKey;->asInterface:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 106
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lo/isValidKey;->ICustomTabsService:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 103
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lo/isValidKey;->ICustomTabsService:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lo/isValidKey;->asBinder:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 100
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Core pool size "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lo/isValidKey;->asBinder:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be at least 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private final ICustomTabsCallback()I
    .locals 10

    .line 464
    iget-object v0, p0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 996
    monitor-enter v0

    .line 11299
    :try_start_0
    iget v1, p0, Lo/isValidKey;->_isTerminated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 466
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 467
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lo/isValidKey;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    long-to-int v6, v5

    const-wide v7, 0x3ffffe00000L

    and-long/2addr v1, v7

    const/16 v5, 0x15

    shr-long/2addr v1, v5

    long-to-int v2, v1

    sub-int v1, v6, v2

    const/4 v2, 0x0

    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 472
    :cond_1
    iget v5, p0, Lo/isValidKey;->asBinder:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v5, :cond_2

    monitor-exit v0

    return v2

    .line 473
    :cond_2
    :try_start_2
    iget v5, p0, Lo/isValidKey;->ICustomTabsService:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v6, v5, :cond_3

    monitor-exit v0

    return v2

    .line 999
    :cond_3
    :try_start_3
    iget-wide v5, p0, Lo/isValidKey;->controlState:J

    and-long/2addr v5, v3

    long-to-int v6, v5

    const/4 v5, 0x1

    add-int/2addr v6, v5

    if-lez v6, :cond_4

    .line 476
    iget-object v7, p0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_7

    .line 482
    new-instance v7, Lo/isValidKey$onMessageChannelReady;

    invoke-direct {v7, p0, v6}, Lo/isValidKey$onMessageChannelReady;-><init>(Lo/isValidKey;I)V

    .line 483
    iget-object v8, p0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1007
    sget-object v8, Lo/isValidKey;->extraCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int v4, v3

    if-ne v6, v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    .line 485
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v1, v5

    .line 486
    monitor-exit v0

    return v1

    :cond_6
    :try_start_4
    const-string v1, "Failed requirement."

    .line 484
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_7
    const-string v1, "Failed requirement."

    .line 476
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    .line 486
    monitor-exit v0

    throw v1
.end method

.method public static extraCallback(Ljava/lang/Runnable;Lo/parseAndValidateUpdate;)Lo/convertToPlainJavaTypes;
    .locals 3

    .line 407
    sget-object v0, Lo/convertToCustomClass;->onMessageChannelReady:Lo/deserializeToPrimitive;

    invoke-virtual {v0}, Lo/deserializeToPrimitive;->onPostMessage()J

    move-result-wide v0

    .line 408
    instance-of v2, p0, Lo/convertToPlainJavaTypes;

    if-eqz v2, :cond_0

    .line 409
    check-cast p0, Lo/convertToPlainJavaTypes;

    iput-wide v0, p0, Lo/convertToPlainJavaTypes;->asInterface:J

    .line 410
    iput-object p1, p0, Lo/convertToPlainJavaTypes;->asBinder:Lo/parseAndValidateUpdate;

    return-object p0

    .line 413
    :cond_0
    new-instance v2, Lo/validateWritablePath;

    invoke-direct {v2, p0, v0, v1, p1}, Lo/validateWritablePath;-><init>(Ljava/lang/Runnable;JLo/parseAndValidateUpdate;)V

    check-cast v2, Lo/convertToPlainJavaTypes;

    return-object v2
.end method

.method public static extraCallback(Lo/convertToPlainJavaTypes;)V
    .locals 2

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lo/convertToPlainJavaTypes;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 573
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 576
    throw p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/isValidKey;)I
    .locals 4

    .line 15271
    iget-wide v0, p0, Lo/isValidKey;->controlState:J

    const-wide/32 v2, 0x1fffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private final onMessageChannelReady()Lo/isValidKey$onMessageChannelReady;
    .locals 9

    .line 978
    :cond_0
    iget-wide v2, p0, Lo/isValidKey;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    .line 207
    iget-object v0, p0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lo/isValidKey$onMessageChannelReady;

    if-nez v6, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-wide/32 v0, 0x200000

    add-long/2addr v0, v2

    const-wide/32 v4, -0x200000

    and-long/2addr v0, v4

    .line 209
    invoke-static {v6}, Lo/isValidKey;->onNavigationEvent(Lo/isValidKey$onMessageChannelReady;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 216
    sget-object v5, Lo/isValidKey;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v4

    or-long/2addr v7, v0

    move-object v0, v5

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lo/isValidKey;->onRelationshipValidationResult:Lo/AppCompatDrawableManager;

    .line 1631
    iput-object v0, v6, Lo/isValidKey$onMessageChannelReady;->nextParkedWorker:Ljava/lang/Object;

    return-object v6
.end method

.method private final onMessageChannelReady(J)Z
    .locals 4

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v1, v0

    const-wide v2, 0x3ffffe00000L

    and-long/2addr p1, v2

    const/16 v0, 0x15

    shr-long/2addr p1, v0

    long-to-int p2, p1

    sub-int/2addr v1, p2

    const/4 p1, 0x0

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 439
    :cond_0
    iget p2, p0, Lo/isValidKey;->asBinder:I

    if-ge v1, p2, :cond_2

    .line 440
    invoke-direct {p0}, Lo/isValidKey;->ICustomTabsCallback()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 443
    iget v1, p0, Lo/isValidKey;->asBinder:I

    if-le v1, v0, :cond_1

    invoke-direct {p0}, Lo/isValidKey;->ICustomTabsCallback()I

    :cond_1
    if-lez p2, :cond_2

    return v0

    :cond_2
    return p1
.end method

.method private static onNavigationEvent(Lo/isValidKey$onMessageChannelReady;)I
    .locals 1

    .line 2631
    iget-object p0, p0, Lo/isValidKey$onMessageChannelReady;->nextParkedWorker:Ljava/lang/Object;

    .line 240
    :goto_0
    sget-object v0, Lo/isValidKey;->onRelationshipValidationResult:Lo/AppCompatDrawableManager;

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_1
    check-cast p0, Lo/isValidKey$onMessageChannelReady;

    .line 3587
    iget v0, p0, Lo/isValidKey$onMessageChannelReady;->indexInArray:I

    if-eqz v0, :cond_2

    return v0

    .line 3631
    :cond_2
    iget-object p0, p0, Lo/isValidKey$onMessageChannelReady;->nextParkedWorker:Ljava/lang/Object;

    goto :goto_0
.end method

.method private final onNavigationEvent()Lo/isValidKey$onMessageChannelReady;
    .locals 4

    .line 509
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lo/isValidKey$onMessageChannelReady;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lo/isValidKey$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v1, v0, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback:Lo/isValidKey;

    move-object v3, p0

    check-cast v3, Lo/isValidKey;

    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object v2
.end method

.method public static synthetic onPostMessage(Lo/isValidKey;Ljava/lang/Runnable;)V
    .locals 2

    .line 383
    sget-object v0, Lo/serialize;->ICustomTabsCallback:Lo/serialize;

    check-cast v0, Lo/parseAndValidateUpdate;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lo/isValidKey;->ICustomTabsCallback(Ljava/lang/Runnable;Lo/parseAndValidateUpdate;Z)V

    return-void
.end method

.method private final onPostMessage()Z
    .locals 4

    .line 451
    :cond_0
    invoke-direct {p0}, Lo/isValidKey;->onMessageChannelReady()Lo/isValidKey$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 452
    :cond_1
    sget-object v2, Lo/isValidKey$onMessageChannelReady;->onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Runnable;Lo/parseAndValidateUpdate;Z)V
    .locals 4

    .line 385
    invoke-static {p1, p2}, Lo/isValidKey;->extraCallback(Ljava/lang/Runnable;Lo/parseAndValidateUpdate;)Lo/convertToPlainJavaTypes;

    move-result-object p1

    .line 387
    invoke-direct {p0}, Lo/isValidKey;->onNavigationEvent()Lo/isValidKey$onMessageChannelReady;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    .line 7500
    :cond_0
    iget-object v1, p2, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    sget-object v2, Lo/isValidKey$onPostMessage;->onNavigationEvent:Lo/isValidKey$onPostMessage;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 8009
    :cond_1
    iget-object v1, p1, Lo/convertToPlainJavaTypes;->asBinder:Lo/parseAndValidateUpdate;

    invoke-interface {v1}, Lo/parseAndValidateUpdate;->onPostMessage()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p2, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    sget-object v2, Lo/isValidKey$onPostMessage;->onPostMessage:Lo/isValidKey$onPostMessage;

    if-ne v1, v2, :cond_2

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 7505
    :cond_2
    iput-boolean v0, p2, Lo/isValidKey$onMessageChannelReady;->onNavigationEvent:Z

    .line 7506
    iget-object v1, p2, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    invoke-virtual {v1, p1, p3}, Lo/deserializeToParameterizedType;->extraCallback(Lo/convertToPlainJavaTypes;Z)Lo/convertToPlainJavaTypes;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 8972
    iget-object v3, v1, Lo/convertToPlainJavaTypes;->asBinder:Lo/parseAndValidateUpdate;

    invoke-interface {v3}, Lo/parseAndValidateUpdate;->onPostMessage()I

    move-result v3

    if-ne v3, v0, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 8120
    iget-object v3, p0, Lo/isValidKey;->onNavigationEvent:Lo/validateNullableKey;

    invoke-virtual {v3, v1}, Lo/tryParseInt;->extraCallback(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 8122
    :cond_4
    iget-object v3, p0, Lo/isValidKey;->onPostMessage:Lo/validateNullableKey;

    invoke-virtual {v3, v1}, Lo/tryParseInt;->extraCallback(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_5

    goto :goto_4

    .line 392
    :cond_5
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lo/isValidKey;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " was terminated"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_6
    :goto_4
    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    .line 992
    :goto_5
    iget-object p1, p1, Lo/convertToPlainJavaTypes;->asBinder:Lo/parseAndValidateUpdate;

    invoke-interface {p1}, Lo/parseAndValidateUpdate;->onPostMessage()I

    move-result p1

    if-nez p1, :cond_9

    if-eqz v0, :cond_8

    return-void

    .line 399
    :cond_8
    invoke-virtual {p0}, Lo/isValidKey;->extraCallback()V

    return-void

    .line 9993
    :cond_9
    sget-object p1, Lo/isValidKey;->extraCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 p2, 0x200000

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    if-nez v0, :cond_a

    .line 9420
    invoke-direct {p0}, Lo/isValidKey;->onPostMessage()Z

    move-result p3

    if-nez p3, :cond_a

    .line 9421
    invoke-direct {p0, p1, p2}, Lo/isValidKey;->onMessageChannelReady(J)Z

    move-result p1

    if-nez p1, :cond_a

    .line 9422
    invoke-direct {p0}, Lo/isValidKey;->onPostMessage()Z

    :cond_a
    return-void
.end method

.method public final close()V
    .locals 8

    .line 5334
    sget-object v0, Lo/isValidKey;->onTransact:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5336
    invoke-direct {p0}, Lo/isValidKey;->onNavigationEvent()Lo/isValidKey$onMessageChannelReady;

    move-result-object v0

    .line 5338
    iget-object v3, p0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5985
    monitor-enter v3

    .line 5986
    :try_start_0
    iget-wide v4, p0, Lo/isValidKey;->controlState:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v5, v4

    .line 5338
    monitor-exit v3

    if-lez v5, :cond_6

    const/4 v3, 0x1

    .line 5341
    :goto_0
    iget-object v4, p0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast v4, Lo/isValidKey$onMessageChannelReady;

    if-eq v4, v0, :cond_5

    .line 5343
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5344
    move-object v6, v4

    check-cast v6, Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const-wide/16 v6, 0x2710

    .line 5345
    invoke-virtual {v4, v6, v7}, Ljava/lang/Thread;->join(J)V

    goto :goto_1

    .line 5347
    :cond_1
    iget-object v6, v4, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    .line 5348
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lo/isValidKey$onPostMessage;->onNavigationEvent:Lo/isValidKey$onPostMessage;

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 5349
    :cond_4
    :goto_3
    iget-object v4, v4, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    iget-object v6, p0, Lo/isValidKey;->onNavigationEvent:Lo/validateNullableKey;

    invoke-virtual {v4, v6}, Lo/deserializeToParameterizedType;->extraCallback(Lo/validateNullableKey;)V

    :cond_5
    if-eq v3, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5353
    :cond_6
    iget-object v3, p0, Lo/isValidKey;->onNavigationEvent:Lo/validateNullableKey;

    invoke-virtual {v3}, Lo/tryParseInt;->onNavigationEvent()V

    .line 5354
    iget-object v3, p0, Lo/isValidKey;->onPostMessage:Lo/validateNullableKey;

    invoke-virtual {v3}, Lo/tryParseInt;->onNavigationEvent()V

    :goto_4
    if-eqz v0, :cond_7

    .line 5357
    invoke-virtual {v0, v2}, Lo/isValidKey$onMessageChannelReady;->ICustomTabsCallback(Z)Lo/convertToPlainJavaTypes;

    move-result-object v3

    if-nez v3, :cond_8

    .line 5358
    :cond_7
    iget-object v3, p0, Lo/isValidKey;->onPostMessage:Lo/validateNullableKey;

    invoke-virtual {v3}, Lo/tryParseInt;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/convertToPlainJavaTypes;

    :cond_8
    if-nez v3, :cond_9

    .line 5359
    iget-object v3, p0, Lo/isValidKey;->onNavigationEvent:Lo/validateNullableKey;

    invoke-virtual {v3}, Lo/tryParseInt;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/convertToPlainJavaTypes;

    :cond_9
    if-nez v3, :cond_e

    if-eqz v0, :cond_a

    .line 5364
    sget-object v3, Lo/isValidKey$onPostMessage;->onNavigationEvent:Lo/isValidKey$onPostMessage;

    invoke-virtual {v0, v3}, Lo/isValidKey$onMessageChannelReady;->onPostMessage(Lo/isValidKey$onPostMessage;)Z

    .line 5366
    :cond_a
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5987
    iget-wide v3, p0, Lo/isValidKey;->controlState:J

    const-wide v5, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v0, 0x2a

    shr-long/2addr v3, v0

    long-to-int v0, v3

    iget v3, p0, Lo/isValidKey;->asBinder:I

    if-ne v0, v3, :cond_b

    const/4 v1, 0x1

    :cond_b
    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_d
    :goto_5
    const-wide/16 v0, 0x0

    .line 5367
    iput-wide v0, p0, Lo/isValidKey;->parkedWorkersStack:J

    .line 5368
    iput-wide v0, p0, Lo/isValidKey;->controlState:J

    goto :goto_6

    .line 6571
    :cond_e
    :try_start_1
    invoke-virtual {v3}, Lo/convertToPlainJavaTypes;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v3

    .line 6573
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 6574
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 6576
    throw v0

    :catchall_2
    move-exception v0

    .line 5338
    monitor-exit v3

    throw v0

    :cond_f
    :goto_6
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 4383
    sget-object v0, Lo/serialize;->ICustomTabsCallback:Lo/serialize;

    check-cast v0, Lo/parseAndValidateUpdate;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lo/isValidKey;->ICustomTabsCallback(Ljava/lang/Runnable;Lo/parseAndValidateUpdate;Z)V

    return-void
.end method

.method public final extraCallback()V
    .locals 2

    .line 426
    invoke-direct {p0}, Lo/isValidKey;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10431
    :cond_0
    iget-wide v0, p0, Lo/isValidKey;->controlState:J

    invoke-direct {p0, v0, v1}, Lo/isValidKey;->onMessageChannelReady(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 428
    :cond_1
    invoke-direct {p0}, Lo/isValidKey;->onPostMessage()Z

    return-void
.end method

.method public final onNavigationEvent(Lo/isValidKey$onMessageChannelReady;II)V
    .locals 8

    .line 974
    :cond_0
    iget-wide v2, p0, Lo/isValidKey;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v1, p2, :cond_2

    if-nez p3, :cond_1

    .line 155
    invoke-static {p1}, Lo/isValidKey;->onNavigationEvent(Lo/isValidKey$onMessageChannelReady;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, p3

    :cond_2
    :goto_0
    if-ltz v1, :cond_0

    .line 163
    sget-object v0, Lo/isValidKey;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v1

    or-long/2addr v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    iget-object v1, p0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    if-ge v8, v1, :cond_8

    .line 529
    iget-object v9, p0, Lo/isValidKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/isValidKey$onMessageChannelReady;

    if-nez v9, :cond_0

    goto/16 :goto_2

    .line 530
    :cond_0
    iget-object v10, v9, Lo/isValidKey$onMessageChannelReady;->onMessageChannelReady:Lo/deserializeToParameterizedType;

    .line 12053
    iget-object v11, v10, Lo/deserializeToParameterizedType;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v11, :cond_1

    .line 13052
    iget v11, v10, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v10, v10, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v11, v10

    add-int/2addr v11, v3

    goto :goto_1

    .line 14052
    :cond_1
    iget v11, v10, Lo/deserializeToParameterizedType;->producerIndex:I

    iget v10, v10, Lo/deserializeToParameterizedType;->consumerIndex:I

    sub-int/2addr v11, v10

    .line 531
    :goto_1
    iget-object v9, v9, Lo/isValidKey$onMessageChannelReady;->extraCallback:Lo/isValidKey$onPostMessage;

    sget-object v10, Lo/validatePathString;->onMessageChannelReady:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    if-eq v9, v3, :cond_6

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    const/4 v10, 0x5

    if-eq v9, v10, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    if-lez v11, :cond_7

    .line 543
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 539
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 535
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "b"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 548
    :cond_8
    iget-wide v8, p0, Lo/isValidKey;->controlState:J

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/isValidKey;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15012
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 549
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "Pool Size {core = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget v3, p0, Lo/isValidKey;->asBinder:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget v3, p0, Lo/isValidKey;->ICustomTabsService:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, Worker States {CPU = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocking = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dormant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", terminated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, running workers queues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", global CPU queue size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v0, p0, Lo/isValidKey;->onPostMessage:Lo/validateNullableKey;

    invoke-virtual {v0}, Lo/tryParseInt;->extraCallback()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", global blocking queue size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v0, p0, Lo/isValidKey;->onNavigationEvent:Lo/validateNullableKey;

    invoke-virtual {v0}, Lo/tryParseInt;->extraCallback()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Control State {created workers= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, v8

    long-to-int v0, v2

    .line 1011
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blocking tasks = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, 0x3ffffe00000L

    and-long/2addr v2, v8

    const/16 v0, 0x15

    shr-long/2addr v2, v0

    long-to-int v0, v2

    .line 1012
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", CPUs acquired = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget v0, p0, Lo/isValidKey;->asBinder:I

    const-wide v2, 0x7ffffc0000000000L

    and-long/2addr v2, v8

    const/16 v4, 0x2a

    shr-long/2addr v2, v4

    long-to-int v3, v2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
