.class public final Lo/initProgress;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/initProgress$onPostMessage;,
        Lo/initProgress$onNavigationEvent;,
        Lo/initProgress$extraCallback;
    }
.end annotation


# static fields
.field private static final extraCallback:J

.field private static volatile onMessageChannelReady:I


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/initProgress;->extraCallback:J

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/initProgress;
    .locals 5

    .line 2119
    new-instance v0, Lo/initProgress$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/initProgress$onPostMessage;-><init>(Z)V

    .line 2305
    sget v1, Lo/initProgress;->onMessageChannelReady:I

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 3023
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 3024
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_0

    .line 3025
    invoke-static {}, Lo/initIndeterminateProgress;->onNavigationEvent()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2307
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lo/initProgress;->onMessageChannelReady:I

    .line 2309
    :cond_1
    sget v1, Lo/initProgress;->onMessageChannelReady:I

    .line 3441
    iput v1, v0, Lo/initProgress$onPostMessage;->onPostMessage:I

    .line 3442
    iput v1, v0, Lo/initProgress$onPostMessage;->extraCallback:I

    const-string/jumbo v1, "source"

    .line 3460
    iput-object v1, v0, Lo/initProgress$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 126
    invoke-virtual {v0}, Lo/initProgress$onPostMessage;->onMessageChannelReady()Lo/initProgress;

    move-result-object v0

    return-object v0
.end method

.method public static extraCallback()Lo/initProgress;
    .locals 10

    .line 165
    new-instance v0, Lo/initProgress;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, Lo/initProgress;->extraCallback:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lo/initProgress$onNavigationEvent;

    sget-object v1, Lo/initProgress$extraCallback;->onNavigationEvent:Lo/initProgress$extraCallback;

    const-string/jumbo v2, "source-unlimited"

    const/4 v3, 0x0

    invoke-direct {v8, v2, v1, v3}, Lo/initProgress$onNavigationEvent;-><init>(Ljava/lang/String;Lo/initProgress$extraCallback;Z)V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, Lo/initProgress;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static onMessageChannelReady()Lo/initProgress;
    .locals 4

    .line 4305
    sget v0, Lo/initProgress;->onMessageChannelReady:I

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 5023
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 5024
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    .line 5025
    invoke-static {}, Lo/initIndeterminateProgress;->onNavigationEvent()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4307
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lo/initProgress;->onMessageChannelReady:I

    .line 4309
    :cond_1
    sget v0, Lo/initProgress;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 4191
    :goto_0
    new-instance v1, Lo/initProgress$onPostMessage;

    invoke-direct {v1, v2}, Lo/initProgress$onPostMessage;-><init>(Z)V

    .line 5441
    iput v0, v1, Lo/initProgress$onPostMessage;->onPostMessage:I

    .line 5442
    iput v0, v1, Lo/initProgress$onPostMessage;->extraCallback:I

    const-string v0, "animation"

    .line 5460
    iput-object v0, v1, Lo/initProgress$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 198
    invoke-virtual {v1}, Lo/initProgress$onPostMessage;->onMessageChannelReady()Lo/initProgress;

    move-result-object v0

    return-object v0
.end method

.method public static onPostMessage()Lo/initProgress;
    .locals 2

    .line 1074
    new-instance v0, Lo/initProgress$onPostMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/initProgress$onPostMessage;-><init>(Z)V

    .line 1441
    iput v1, v0, Lo/initProgress$onPostMessage;->onPostMessage:I

    .line 1442
    iput v1, v0, Lo/initProgress$onPostMessage;->extraCallback:I

    const-string v1, "disk-cache"

    .line 1460
    iput-object v1, v0, Lo/initProgress$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Lo/initProgress$onPostMessage;->onMessageChannelReady()Lo/initProgress;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isShutdown()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public final isTerminated()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public final shutdown()V
    .locals 1

    .line 271
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lo/initProgress;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
