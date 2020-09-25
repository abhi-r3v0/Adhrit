.class abstract Lo/ensureClassLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ensureClassLoader$ICustomTabsCallback;,
        Lo/ensureClassLoader$onNavigationEvent;,
        Lo/ensureClassLoader$onMessageChannelReady;,
        Lo/ensureClassLoader$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static asInterface:Lo/ensureClassLoader$onMessageChannelReady;

.field public static final extraCallback:Ljava/util/concurrent/Executor;

.field private static final onNavigationEvent:Ljava/util/concurrent/ThreadFactory;

.field private static volatile onTransact:Ljava/util/concurrent/Executor;


# instance fields
.field private final ICustomTabsCallback$Stub:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile asBinder:Lo/ensureClassLoader$extraCallback;

.field final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final onRelationshipValidationResult:Lo/ensureClassLoader$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ensureClassLoader$onNavigationEvent<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 60
    new-instance v0, Lo/ensureClassLoader$1;

    invoke-direct {v0}, Lo/ensureClassLoader$1;-><init>()V

    sput-object v0, Lo/ensureClassLoader;->onNavigationEvent:Ljava/util/concurrent/ThreadFactory;

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lo/ensureClassLoader;->ICustomTabsCallback:Ljava/util/concurrent/BlockingQueue;

    .line 75
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lo/ensureClassLoader;->ICustomTabsCallback:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lo/ensureClassLoader;->onNavigationEvent:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 84
    sput-object v0, Lo/ensureClassLoader;->extraCallback:Ljava/util/concurrent/Executor;

    sput-object v0, Lo/ensureClassLoader;->onTransact:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lo/ensureClassLoader$extraCallback;->onPostMessage:Lo/ensureClassLoader$extraCallback;

    iput-object v0, p0, Lo/ensureClassLoader;->asBinder:Lo/ensureClassLoader$extraCallback;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/ensureClassLoader;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/ensureClassLoader;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Lo/ensureClassLoader$3;

    invoke-direct {v0, p0}, Lo/ensureClassLoader$3;-><init>(Lo/ensureClassLoader;)V

    iput-object v0, p0, Lo/ensureClassLoader;->onRelationshipValidationResult:Lo/ensureClassLoader$onNavigationEvent;

    .line 153
    new-instance v0, Lo/ensureClassLoader$4;

    iget-object v1, p0, Lo/ensureClassLoader;->onRelationshipValidationResult:Lo/ensureClassLoader$onNavigationEvent;

    invoke-direct {v0, p0, v1}, Lo/ensureClassLoader$4;-><init>(Lo/ensureClassLoader;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lo/ensureClassLoader;->ICustomTabsCallback$Stub:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static onPostMessage()Landroid/os/Handler;
    .locals 2

    .line 115
    const-class v0, Lo/ensureClassLoader;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lo/ensureClassLoader;->asInterface:Lo/ensureClassLoader$onMessageChannelReady;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lo/ensureClassLoader$onMessageChannelReady;

    invoke-direct {v1}, Lo/ensureClassLoader$onMessageChannelReady;-><init>()V

    sput-object v1, Lo/ensureClassLoader;->asInterface:Lo/ensureClassLoader$onMessageChannelReady;

    .line 119
    :cond_0
    sget-object v1, Lo/ensureClassLoader;->asInterface:Lo/ensureClassLoader$onMessageChannelReady;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 120
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lo/ensureClassLoader;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    invoke-static {}, Lo/ensureClassLoader;->onPostMessage()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/ensureClassLoader$ICustomTabsCallback;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lo/ensureClassLoader$ICustomTabsCallback;-><init>(Lo/ensureClassLoader;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1185
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method protected varargs abstract extraCallback()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method final extraCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Lo/ensureClassLoader;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0, p1}, Lo/ensureClassLoader;->onNavigationEvent(Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Lo/ensureClassLoader;->onPostMessage(Ljava/lang/Object;)V

    .line 492
    :goto_0
    sget-object p1, Lo/ensureClassLoader$extraCallback;->ICustomTabsCallback:Lo/ensureClassLoader$extraCallback;

    iput-object p1, p0, Lo/ensureClassLoader;->asBinder:Lo/ensureClassLoader$extraCallback;

    return-void
.end method

.method public final onMessageChannelReady(Z)Z
    .locals 1

    .line 332
    iget-object p1, p0, Lo/ensureClassLoader;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    iget-object p1, p0, Lo/ensureClassLoader;->ICustomTabsCallback$Stub:Ljava/util/concurrent/FutureTask;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final varargs onNavigationEvent(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lo/ensureClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lo/ensureClassLoader<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lo/ensureClassLoader;->asBinder:Lo/ensureClassLoader$extraCallback;

    sget-object v1, Lo/ensureClassLoader$extraCallback;->onPostMessage:Lo/ensureClassLoader$extraCallback;

    if-eq v0, v1, :cond_2

    .line 434
    sget-object p1, Lo/ensureClassLoader$5;->onNavigationEvent:[I

    iget-object p2, p0, Lo/ensureClassLoader;->asBinder:Lo/ensureClassLoader$extraCallback;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 443
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "We should never reach this state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_2
    sget-object v0, Lo/ensureClassLoader$extraCallback;->extraCallback:Lo/ensureClassLoader$extraCallback;

    iput-object v0, p0, Lo/ensureClassLoader;->asBinder:Lo/ensureClassLoader$extraCallback;

    .line 451
    iget-object v0, p0, Lo/ensureClassLoader;->onRelationshipValidationResult:Lo/ensureClassLoader$onNavigationEvent;

    iput-object p2, v0, Lo/ensureClassLoader$onNavigationEvent;->onPostMessage:[Ljava/lang/Object;

    .line 452
    iget-object p2, p0, Lo/ensureClassLoader;->ICustomTabsCallback$Stub:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected onNavigationEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPostMessage(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method
