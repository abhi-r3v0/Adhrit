.class public Lo/getFillColor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFillColor$onPostMessage;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field private final asInterface:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile onPostMessage:I

.field private final onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final onTransact:Lo/getFillColor$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lo/getFillColor;

    sput-object v0, Lo/getFillColor;->onNavigationEvent:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 50
    iput-object p1, p0, Lo/getFillColor;->extraCallback:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lo/getFillColor;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    .line 52
    iput p1, p0, Lo/getFillColor;->onPostMessage:I

    .line 53
    iput-object p3, p0, Lo/getFillColor;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    .line 54
    new-instance p1, Lo/getFillColor$onPostMessage;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lo/getFillColor$onPostMessage;-><init>(Lo/getFillColor;B)V

    iput-object p1, p0, Lo/getFillColor;->onTransact:Lo/getFillColor$onPostMessage;

    .line 55
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lo/getFillColor;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lo/getFillColor;->asInterface:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private extraCallback()V
    .locals 5

    .line 116
    iget-object v0, p0, Lo/getFillColor;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 117
    :goto_0
    iget v1, p0, Lo/getFillColor;->onPostMessage:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 119
    iget-object v2, p0, Lo/getFillColor;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lo/getFillColor;->onNavigationEvent:Ljava/lang/Class;

    iget-object v2, p0, Lo/getFillColor;->extraCallback:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lo/getFillColor;->onPostMessage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "%s: starting worker %d of %d"

    invoke-static {v0, v4, v2, v1, v3}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lo/getFillColor;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lo/getFillColor;->onTransact:Lo/getFillColor$onPostMessage;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 126
    :cond_0
    sget-object v0, Lo/getFillColor;->onNavigationEvent:Ljava/lang/Class;

    iget-object v1, p0, Lo/getFillColor;->extraCallback:Ljava/lang/String;

    const-string v2, "%s: race in startWorkerIfNeeded; retrying"

    invoke-static {v0, v2, v1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lo/getFillColor;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic extraCallback(Lo/getFillColor;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/getFillColor;->extraCallback()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/getFillColor;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/getFillColor;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic onNavigationEvent()Ljava/lang/Class;
    .locals 1

    .line 24
    sget-object v0, Lo/getFillColor;->onNavigationEvent:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/getFillColor;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/getFillColor;->extraCallback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/getFillColor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/getFillColor;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 153
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 95
    iget-object v0, p0, Lo/getFillColor;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lo/getFillColor;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    .line 100
    iget-object v0, p0, Lo/getFillColor;->asInterface:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 101
    iget-object v1, p0, Lo/getFillColor;->asInterface:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lo/getFillColor;->onNavigationEvent:Ljava/lang/Class;

    iget-object v1, p0, Lo/getFillColor;->extraCallback:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "%s: max pending work in queue = %d"

    invoke-static {v0, v2, v1, p1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    :cond_0
    invoke-direct {p0}, Lo/getFillColor;->extraCallback()V

    return-void

    .line 96
    :cond_1
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/getFillColor;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " queue is full, size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getFillColor;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "runnable parameter is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isShutdown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 1

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
