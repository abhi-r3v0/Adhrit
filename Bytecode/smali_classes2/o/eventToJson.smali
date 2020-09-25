.class public Lo/eventToJson;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final availableSlots:Ljava/util/concurrent/Semaphore;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lo/eventToJson;->availableSlots:Ljava/util/concurrent/Semaphore;

    .line 39
    iput-object p2, p0, Lo/eventToJson;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic lambda$execute$0(Lo/eventToJson;Ljava/lang/Runnable;)V
    .locals 0

    .line 54
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 55
    iget-object p0, p0, Lo/eventToJson;->availableSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lo/eventToJson;->availableSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    iget-object v0, p0, Lo/eventToJson;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1}, Lo/toStringMap$ICustomTabsCallback$Stub;->lambdaFactory$(Lo/eventToJson;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 61
    :catch_0
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
