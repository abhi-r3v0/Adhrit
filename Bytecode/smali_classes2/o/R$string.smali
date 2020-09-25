.class public final Lo/R$string;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/R$string;


# instance fields
.field public final ICustomTabsCallback:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lo/bc;",
            ">;"
        }
    .end annotation
.end field

.field private asInterface:Lo/b$b;

.field private final extraCallback:Ljava/util/concurrent/ScheduledExecutorService;

.field private onNavigationEvent:Ljava/util/concurrent/ScheduledFuture;

.field private final onPostMessage:Ljava/lang/Runtime;

.field private onRelationshipValidationResult:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lo/R$string;

    invoke-direct {v0}, Lo/R$string;-><init>()V

    sput-object v0, Lo/R$string;->onMessageChannelReady:Lo/R$string;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/R$string;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runtime;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runtime;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lo/R$string;->onNavigationEvent:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lo/R$string;->onRelationshipValidationResult:J

    .line 6
    iput-object p1, p0, Lo/R$string;->extraCallback:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lo/R$string;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    iput-object p2, p0, Lo/R$string;->onPostMessage:Ljava/lang/Runtime;

    .line 9
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/R$string;->asInterface:Lo/b$b;

    return-void
.end method

.method private final declared-synchronized ICustomTabsCallback(Lo/aY;)V
    .locals 4

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lo/R$string;->extraCallback:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/b$1;

    invoke-direct {v1, p0, p1}, Lo/b$1;-><init>(Lo/R$string;Lo/aY;)V

    const-wide/16 v2, 0x0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 40
    :try_start_1
    iget-object v0, p0, Lo/R$string;->asInterface:Lo/b$b;

    const-string v1, "Unable to collect Memory Metric: "

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public static ICustomTabsCallback(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onPostMessage()Lo/R$string;
    .locals 1

    .line 11
    sget-object v0, Lo/R$string;->onMessageChannelReady:Lo/R$string;

    return-object v0
.end method

.method private final onPostMessage(Lo/aY;)Lo/bc;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    invoke-virtual {p1}, Lo/aY;->extraCallback()J

    move-result-wide v0

    .line 45
    invoke-static {}, Lo/bc;->ICustomTabsCallback()Lo/bc$ICustomTabsCallback;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v0, v1}, Lo/bc$ICustomTabsCallback;->onMessageChannelReady(J)Lo/bc$ICustomTabsCallback;

    move-result-object p1

    .line 48
    sget-object v0, Lo/aR;->onPostMessage:Lo/aR;

    iget-object v1, p0, Lo/R$string;->onPostMessage:Ljava/lang/Runtime;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    iget-object v3, p0, Lo/R$string;->onPostMessage:Ljava/lang/Runtime;

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lo/aR;->onPostMessage(J)J

    move-result-wide v0

    .line 50
    invoke-static {v0, v1}, Lo/getEmail;->onPostMessage(J)I

    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Lo/bc$ICustomTabsCallback;->onMessageChannelReady(I)Lo/bc$ICustomTabsCallback;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object p1

    check-cast p1, Lo/fU;

    check-cast p1, Lo/bc;

    return-object p1
.end method

.method private final declared-synchronized onPostMessage(JLo/aY;)V
    .locals 7

    monitor-enter p0

    .line 29
    :try_start_0
    iput-wide p1, p0, Lo/R$string;->onRelationshipValidationResult:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object v0, p0, Lo/R$string;->extraCallback:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/R$style;

    invoke-direct {v1, p0, p3}, Lo/R$style;-><init>(Lo/R$string;Lo/aY;)V

    const-wide/16 v2, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, p1

    .line 31
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lo/R$string;->onNavigationEvent:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 34
    :try_start_2
    iget-object p2, p0, Lo/R$string;->asInterface:Lo/b$b;

    const-string p3, "Unable to start collecting Memory Metrics: "

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, p1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 21
    iget-object v0, p0, Lo/R$string;->onNavigationEvent:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 23
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lo/R$string;->onNavigationEvent:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lo/R$string;->onRelationshipValidationResult:J

    return-void
.end method

.method public final extraCallback(JLo/aY;)V
    .locals 3

    .line 12
    invoke-static {p1, p2}, Lo/R$string;->ICustomTabsCallback(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lo/R$string;->onNavigationEvent:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 15
    iget-wide v0, p0, Lo/R$string;->onRelationshipValidationResult:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {p0}, Lo/R$string;->ICustomTabsCallback()V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lo/R$string;->onPostMessage(JLo/aY;)V

    :cond_1
    return-void

    .line 19
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lo/R$string;->onPostMessage(JLo/aY;)V

    return-void
.end method

.method final synthetic extraCallback(Lo/aY;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lo/R$string;->onPostMessage(Lo/aY;)Lo/bc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lo/R$string;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/aY;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lo/R$string;->ICustomTabsCallback(Lo/aY;)V

    return-void
.end method

.method final synthetic onNavigationEvent(Lo/aY;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lo/R$string;->onPostMessage(Lo/aY;)Lo/bc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lo/R$string;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
