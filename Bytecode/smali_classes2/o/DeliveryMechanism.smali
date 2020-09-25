.class public Lo/DeliveryMechanism;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DeliveryMechanism$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private currentRetryDelay:J

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final jitterFactor:D

.field private lastWasSuccess:Z

.field private final logger:Lo/FileLogStore;

.field private final maxRetryDelay:J

.field private final minRetryDelayAfterFailure:J

.field private final random:Ljava/util/Random;

.field private final retryExponent:D

.field private scheduledRetry:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lo/FileLogStore;JJDD)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lo/DeliveryMechanism;->random:Ljava/util/Random;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lo/DeliveryMechanism;->lastWasSuccess:Z

    .line 53
    iput-object p1, p0, Lo/DeliveryMechanism;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    iput-object p2, p0, Lo/DeliveryMechanism;->logger:Lo/FileLogStore;

    .line 55
    iput-wide p3, p0, Lo/DeliveryMechanism;->minRetryDelayAfterFailure:J

    .line 56
    iput-wide p5, p0, Lo/DeliveryMechanism;->maxRetryDelay:J

    .line 57
    iput-wide p7, p0, Lo/DeliveryMechanism;->retryExponent:D

    .line 58
    iput-wide p9, p0, Lo/DeliveryMechanism;->jitterFactor:D

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lo/FileLogStore;JJDDLo/DeliveryMechanism$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p10}, Lo/DeliveryMechanism;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lo/FileLogStore;JJDD)V

    return-void
.end method

.method static synthetic access$002(Lo/DeliveryMechanism;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 24
    iput-object p1, p0, Lo/DeliveryMechanism;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 105
    iget-object v0, p0, Lo/DeliveryMechanism;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lo/DeliveryMechanism;->logger:Lo/FileLogStore;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Cancelling existing retry attempt"

    invoke-virtual {v0, v3, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lo/DeliveryMechanism;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lo/DeliveryMechanism;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lo/DeliveryMechanism;->logger:Lo/FileLogStore;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No existing retry attempt to cancel"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-wide/16 v0, 0x0

    .line 112
    iput-wide v0, p0, Lo/DeliveryMechanism;->currentRetryDelay:J

    return-void
.end method

.method public retry(Ljava/lang/Runnable;)V
    .locals 10

    .line 62
    new-instance v0, Lo/DeliveryMechanism$1;

    invoke-direct {v0, p0, p1}, Lo/DeliveryMechanism$1;-><init>(Lo/DeliveryMechanism;Ljava/lang/Runnable;)V

    .line 71
    iget-object p1, p0, Lo/DeliveryMechanism;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lo/DeliveryMechanism;->logger:Lo/FileLogStore;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Cancelling previous scheduled retry"

    invoke-virtual {p1, v3, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lo/DeliveryMechanism;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lo/DeliveryMechanism;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    .line 76
    :cond_0
    iget-boolean p1, p0, Lo/DeliveryMechanism;->lastWasSuccess:Z

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    iget-wide v4, p0, Lo/DeliveryMechanism;->currentRetryDelay:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_2

    .line 80
    iget-wide v2, p0, Lo/DeliveryMechanism;->minRetryDelayAfterFailure:J

    iput-wide v2, p0, Lo/DeliveryMechanism;->currentRetryDelay:J

    goto :goto_0

    :cond_2
    long-to-double v2, v4

    .line 82
    iget-wide v4, p0, Lo/DeliveryMechanism;->retryExponent:D

    mul-double v2, v2, v4

    double-to-long v2, v2

    .line 83
    iget-wide v4, p0, Lo/DeliveryMechanism;->maxRetryDelay:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lo/DeliveryMechanism;->currentRetryDelay:J

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 85
    iget-wide v4, p0, Lo/DeliveryMechanism;->jitterFactor:D

    sub-double/2addr v2, v4

    iget-wide v6, p0, Lo/DeliveryMechanism;->currentRetryDelay:J

    long-to-double v8, v6

    mul-double v2, v2, v8

    long-to-double v6, v6

    mul-double v4, v4, v6

    iget-object p1, p0, Lo/DeliveryMechanism;->random:Ljava/util/Random;

    .line 88
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    double-to-long v2, v2

    .line 90
    :goto_1
    iput-boolean v1, p0, Lo/DeliveryMechanism;->lastWasSuccess:Z

    .line 91
    iget-object p1, p0, Lo/DeliveryMechanism;->logger:Lo/FileLogStore;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "Scheduling retry in %dms"

    invoke-virtual {p1, v1, v4}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lo/DeliveryMechanism;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lo/DeliveryMechanism;->scheduledRetry:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setMaxDelay()V
    .locals 2

    .line 101
    iget-wide v0, p0, Lo/DeliveryMechanism;->maxRetryDelay:J

    iput-wide v0, p0, Lo/DeliveryMechanism;->currentRetryDelay:J

    return-void
.end method

.method public signalSuccess()V
    .locals 2

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lo/DeliveryMechanism;->lastWasSuccess:Z

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lo/DeliveryMechanism;->currentRetryDelay:J

    return-void
.end method
