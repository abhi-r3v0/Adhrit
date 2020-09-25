.class final Lo/validateWritableKey;
.super Lo/keep;
.source ""

# interfaces
.implements Lo/parseAndValidateUpdate;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0002\u0018\u00002\u00020,2\u00020-2\u00020 B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ#\u0010\u0011\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0011\u001a\u00020\u00082\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0015J#\u0010\u0016\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0012J\u001b\u0010\u0018\u001a\u00020\u00082\n\u0010\u0017\u001a\u00060\u000ej\u0002`\u000fH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0019\u0010\u0002\u001a\u00020\u00018\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0002\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020 8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0019\u0010\u0004\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010$\u001a\u0004\u0008%\u0010&R \u0010(\u001a\u000c\u0012\u0008\u0012\u00060\u000ej\u0002`\u000f0\'8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u001c\u0010\u0005\u001a\u00020\u00038\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010$\u001a\u0004\u0008*\u0010&\u00a8\u0006+"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/LimitingDispatcher;",
        "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;",
        "dispatcher",
        "",
        "parallelism",
        "taskMode",
        "<init>",
        "(Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;II)V",
        "",
        "afterTask",
        "()V",
        "close",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "dispatch",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V",
        "",
        "tailDispatch",
        "(Ljava/lang/Runnable;Z)V",
        "dispatchYield",
        "command",
        "execute",
        "(Ljava/lang/Runnable;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;",
        "getDispatcher",
        "()Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;",
        "Ljava/util/concurrent/Executor;",
        "getExecutor",
        "()Ljava/util/concurrent/Executor;",
        "executor",
        "I",
        "getParallelism",
        "()I",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "queue",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "getTaskMode",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "Lkotlinx/coroutines/scheduling/TaskContext;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final ICustomTabsCallback$Stub:I

.field private final asInterface:I

.field private volatile inFlightTasks:I

.field private final onNavigationEvent:Lo/validateDoubleValue;

.field private final onPostMessage:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lo/validateWritableKey;

    const-string v1, "inFlightTasks"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/validateWritableKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/validateDoubleValue;I)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lo/keep;-><init>()V

    iput-object p1, p0, Lo/validateWritableKey;->onNavigationEvent:Lo/validateDoubleValue;

    iput p2, p0, Lo/validateWritableKey;->asInterface:I

    const/4 p1, 0x1

    iput p1, p0, Lo/validateWritableKey;->ICustomTabsCallback$Stub:I

    .line 138
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lo/validateWritableKey;->onPostMessage:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lo/validateWritableKey;->inFlightTasks:I

    return-void
.end method

.method private final onPostMessage(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 154
    :cond_0
    sget-object v0, Lo/validateWritableKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    .line 157
    iget v1, p0, Lo/validateWritableKey;->asInterface:I

    if-gt v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lo/validateWritableKey;->onNavigationEvent:Lo/validateDoubleValue;

    move-object v1, p0

    check-cast v1, Lo/parseAndValidateUpdate;

    .line 1106
    :try_start_0
    iget-object v0, v0, Lo/validateDoubleValue;->onPostMessage:Lo/isValidKey;

    invoke-virtual {v0, p1, v1, p2}, Lo/isValidKey;->ICustomTabsCallback(Ljava/lang/Runnable;Lo/parseAndValidateUpdate;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1109
    :catch_0
    sget-object p2, Lo/shouldPrune;->onMessageChannelReady:Lo/shouldPrune;

    invoke-static {p1, v1}, Lo/isValidKey;->extraCallback(Ljava/lang/Runnable;Lo/parseAndValidateUpdate;)Lo/convertToPlainJavaTypes;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Lo/shouldPruneUnkeptDescendants;->onPostMessage(Ljava/lang/Runnable;)V

    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lo/validateWritableKey;->onPostMessage:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object p1, Lo/validateWritableKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lo/validateWritableKey;->asInterface:I

    if-lt p1, v0, :cond_2

    return-void

    .line 184
    :cond_2
    iget-object p1, p0, Lo/validateWritableKey;->onPostMessage:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-nez p1, :cond_0

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close cannot be invoked on LimitingBlockingDispatcher"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lo/validateWritableKey;->onPostMessage(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 4

    .line 210
    iget-object v0, p0, Lo/validateWritableKey;->onPostMessage:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 213
    iget-object v2, p0, Lo/validateWritableKey;->onNavigationEvent:Lo/validateDoubleValue;

    move-object v3, p0

    check-cast v3, Lo/parseAndValidateUpdate;

    .line 2106
    :try_start_0
    iget-object v2, v2, Lo/validateDoubleValue;->onPostMessage:Lo/isValidKey;

    invoke-virtual {v2, v0, v3, v1}, Lo/isValidKey;->ICustomTabsCallback(Ljava/lang/Runnable;Lo/parseAndValidateUpdate;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2109
    :catch_0
    sget-object v1, Lo/shouldPrune;->onMessageChannelReady:Lo/shouldPrune;

    invoke-static {v0, v3}, Lo/isValidKey;->extraCallback(Ljava/lang/Runnable;Lo/parseAndValidateUpdate;)Lo/convertToPlainJavaTypes;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lo/shouldPruneUnkeptDescendants;->onPostMessage(Ljava/lang/Runnable;)V

    return-void

    .line 216
    :cond_0
    sget-object v0, Lo/validateWritableKey;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 229
    iget-object v0, p0, Lo/validateWritableKey;->onPostMessage:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    return-void

    .line 230
    :cond_1
    invoke-direct {p0, v0, v1}, Lo/validateWritableKey;->onPostMessage(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final onNavigationEvent(Lo/isZombied;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p2, p1}, Lo/validateWritableKey;->onPostMessage(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final onPostMessage()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lo/keep;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[dispatcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/validateWritableKey;->onNavigationEvent:Lo/validateDoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
