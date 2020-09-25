.class public Lo/subList;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_BACKOFF_FACTOR:D = 1.5

.field public static final DEFAULT_BACKOFF_INITIAL_DELAY_MS:J = 0x3e8L

.field public static final DEFAULT_BACKOFF_MAX_DELAY_MS:J = 0xea60L


# instance fields
.field private final backoffFactor:D

.field private currentBaseMs:J

.field private final initialDelayMs:J

.field private lastAttemptTime:J

.field private final maxDelayMs:J

.field private nextMaxDelayMs:J

.field private final queue:Lo/CrashlyticsReport$Type;

.field private final timerId:Lo/CrashlyticsReport$Type$extraCallback;

.field private timerTask:Lo/CrashlyticsReport$Type$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;)V
    .locals 9

    const-wide/16 v3, 0x3e8

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    const-wide/32 v7, 0xea60

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 88
    invoke-direct/range {v0 .. v8}, Lo/subList;-><init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;JDJ)V

    return-void
.end method

.method public constructor <init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;JDJ)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lo/subList;->queue:Lo/CrashlyticsReport$Type;

    .line 77
    iput-object p2, p0, Lo/subList;->timerId:Lo/CrashlyticsReport$Type$extraCallback;

    .line 78
    iput-wide p3, p0, Lo/subList;->initialDelayMs:J

    .line 79
    iput-wide p5, p0, Lo/subList;->backoffFactor:D

    .line 80
    iput-wide p7, p0, Lo/subList;->maxDelayMs:J

    .line 81
    iput-wide p7, p0, Lo/subList;->nextMaxDelayMs:J

    .line 82
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lo/subList;->lastAttemptTime:J

    .line 84
    invoke-virtual {p0}, Lo/subList;->reset()V

    return-void
.end method

.method private jitterDelayMs()J
    .locals 4

    .line 186
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lo/subList;->currentBaseMs:J

    long-to-double v2, v2

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static synthetic lambda$backoffAndRun$0(Lo/subList;Ljava/lang/Runnable;)V
    .locals 2

    .line 161
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/subList;->lastAttemptTime:J

    .line 162
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public backoffAndRun(Ljava/lang/Runnable;)V
    .locals 11

    .line 132
    invoke-virtual {p0}, Lo/subList;->cancel()V

    .line 135
    iget-wide v0, p0, Lo/subList;->currentBaseMs:J

    invoke-direct {p0}, Lo/subList;->jitterDelayMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 138
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lo/subList;->lastAttemptTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 141
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 143
    iget-wide v8, p0, Lo/subList;->currentBaseMs:J

    cmp-long v10, v8, v4

    if-lez v10, :cond_0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 150
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    iget-wide v9, p0, Lo/subList;->currentBaseMs:J

    .line 151
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    const/4 v0, 0x3

    .line 153
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Backing off for %d ms (base delay: %d ms, delay with jitter: %d ms, last attempt: %d ms ago)"

    .line 144
    invoke-static {v4, v0, v5}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lo/subList;->queue:Lo/CrashlyticsReport$Type;

    iget-object v1, p0, Lo/subList;->timerId:Lo/CrashlyticsReport$Type$extraCallback;

    invoke-static {p0, p1}, Lo/toStringMap$asInterface;->lambdaFactory$(Lo/subList;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 157
    invoke-virtual {v0, v1, v6, v7, p1}, Lo/CrashlyticsReport$Type;->enqueueAfterDelay(Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;)Lo/CrashlyticsReport$Type$onNavigationEvent;

    move-result-object p1

    iput-object p1, p0, Lo/subList;->timerTask:Lo/CrashlyticsReport$Type$onNavigationEvent;

    .line 166
    iget-wide v0, p0, Lo/subList;->currentBaseMs:J

    long-to-double v0, v0

    iget-wide v2, p0, Lo/subList;->backoffFactor:D

    mul-double v0, v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lo/subList;->currentBaseMs:J

    .line 167
    iget-wide v2, p0, Lo/subList;->initialDelayMs:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 168
    iput-wide v2, p0, Lo/subList;->currentBaseMs:J

    goto :goto_0

    .line 169
    :cond_1
    iget-wide v2, p0, Lo/subList;->nextMaxDelayMs:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 170
    iput-wide v2, p0, Lo/subList;->currentBaseMs:J

    .line 174
    :cond_2
    :goto_0
    iget-wide v0, p0, Lo/subList;->maxDelayMs:J

    iput-wide v0, p0, Lo/subList;->nextMaxDelayMs:J

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 178
    iget-object v0, p0, Lo/subList;->timerTask:Lo/CrashlyticsReport$Type$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->cancel()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lo/subList;->timerTask:Lo/CrashlyticsReport$Type$onNavigationEvent;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Lo/subList;->currentBaseMs:J

    return-void
.end method

.method public resetToMax()V
    .locals 2

    .line 111
    iget-wide v0, p0, Lo/subList;->nextMaxDelayMs:J

    iput-wide v0, p0, Lo/subList;->currentBaseMs:J

    return-void
.end method

.method public setTemporaryMaxDelay(J)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lo/subList;->nextMaxDelayMs:J

    return-void
.end method
