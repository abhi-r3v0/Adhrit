.class public abstract Lcom/freshchat/consumer/sdk/j/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/a/a$a;,
        Lcom/freshchat/consumer/sdk/j/a/a$e;,
        Lcom/freshchat/consumer/sdk/j/a/a$b;,
        Lcom/freshchat/consumer/sdk/j/a/a$d;,
        Lcom/freshchat/consumer/sdk/j/a/a$c;
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
.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final iJ:Ljava/util/concurrent/ThreadFactory;

.field private static final iK:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final iL:Ljava/util/concurrent/Executor;

.field private static final iM:Lcom/freshchat/consumer/sdk/j/a/a$b;

.field private static volatile iN:Ljava/util/concurrent/Executor;


# instance fields
.field private final iO:Lcom/freshchat/consumer/sdk/j/a/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freshchat/consumer/sdk/j/a/a$e<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final iP:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile iQ:Lcom/freshchat/consumer/sdk/j/a/a$d;

.field private final iR:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final iS:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/a$1;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/a/a$1;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->iJ:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->iK:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/freshchat/consumer/sdk/j/a/a;->iK:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/freshchat/consumer/sdk/j/a/a;->iJ:Ljava/util/concurrent/ThreadFactory;

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/a$c;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/a$c;-><init>(Lcom/freshchat/consumer/sdk/j/a/a$1;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->iJ:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x2

    sget-object v2, Lcom/freshchat/consumer/sdk/j/a/a;->iJ:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->iL:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/a$b;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/a$b;-><init>(Lcom/freshchat/consumer/sdk/j/a/a$1;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->iM:Lcom/freshchat/consumer/sdk/j/a/a$b;

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->iN:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a$d;->jc:Lcom/freshchat/consumer/sdk/j/a/a$d;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iQ:Lcom/freshchat/consumer/sdk/j/a/a$d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iR:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iS:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/a$2;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/j/a/a$2;-><init>(Lcom/freshchat/consumer/sdk/j/a/a;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iO:Lcom/freshchat/consumer/sdk/j/a/a$e;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/a$3;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iO:Lcom/freshchat/consumer/sdk/j/a/a$e;

    invoke-direct {v0, p0, v1}, Lcom/freshchat/consumer/sdk/j/a/a$3;-><init>(Lcom/freshchat/consumer/sdk/j/a/a;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iP:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/a/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iS:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/j/a/a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->iM:Lcom/freshchat/consumer/sdk/j/a/a$b;

    new-instance v1, Lcom/freshchat/consumer/sdk/j/a/a$a;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/freshchat/consumer/sdk/j/a/a$a;-><init>(Lcom/freshchat/consumer/sdk/j/a/a;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/j/a/a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/a;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/a;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/a;->onPostExecute(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Lcom/freshchat/consumer/sdk/j/a/a$d;->je:Lcom/freshchat/consumer/sdk/j/a/a$d;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iQ:Lcom/freshchat/consumer/sdk/j/a/a$d;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/freshchat/consumer/sdk/j/a/a<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iQ:Lcom/freshchat/consumer/sdk/j/a/a$d;

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/a$d;->jc:Lcom/freshchat/consumer/sdk/j/a/a$d;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a$4;->iV:[I

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iQ:Lcom/freshchat/consumer/sdk/j/a/a$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a$d;->jd:Lcom/freshchat/consumer/sdk/j/a/a$d;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iQ:Lcom/freshchat/consumer/sdk/j/a/a$d;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/a;->onPreExecute()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iO:Lcom/freshchat/consumer/sdk/j/a/a$e;

    iput-object p2, v0, Lcom/freshchat/consumer/sdk/j/a/a$e;->jg:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iP:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final varargs a([Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/freshchat/consumer/sdk/j/a/a<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->iN:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/a/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final cancel(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iP:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a;->iR:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/a;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method
