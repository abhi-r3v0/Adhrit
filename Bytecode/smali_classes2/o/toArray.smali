.class public Lo/toArray;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private completedTasks:Ljava/util/concurrent/Semaphore;

.field private pendingTaskCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lo/toArray;->completedTasks:Ljava/util/concurrent/Semaphore;

    .line 29
    iput v1, p0, Lo/toArray;->pendingTaskCount:I

    return-void
.end method

.method public static synthetic lambda$execute$0(Lo/toArray;Ljava/lang/Runnable;)V
    .locals 0

    .line 37
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 38
    iget-object p0, p0, Lo/toArray;->completedTasks:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public drain()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lo/toArray;->completedTasks:Ljava/util/concurrent/Semaphore;

    iget v1, p0, Lo/toArray;->pendingTaskCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lo/toArray;->pendingTaskCount:I

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 34
    iget v0, p0, Lo/toArray;->pendingTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/toArray;->pendingTaskCount:I

    .line 35
    sget-object v0, Lo/toStringMap$onMessageChannelReady;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1}, Lo/toStringMap$onNavigationEvent;->lambdaFactory$(Lo/toArray;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
