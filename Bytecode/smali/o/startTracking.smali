.class public final Lo/startTracking;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/startTracking$extraCallback;,
        Lo/startTracking$ICustomTabsCallback;,
        Lo/startTracking$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/startTracking$ICustomTabsCallback;

.field private ICustomTabsCallback$Stub:Lo/startTracking$extraCallback;

.field private asBinder:J

.field private asInterface:J

.field final extraCallback:Ljava/util/concurrent/Executor;

.field private final onMessageChannelReady:Ljava/lang/Runnable;

.field private final onNavigationEvent:I

.field final onPostMessage:Ljava/lang/Runnable;

.field private onRelationshipValidationResult:I

.field private onTransact:Lo/getCardBackgroundColor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/startTracking$ICustomTabsCallback;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lo/startTracking;->extraCallback:Ljava/util/concurrent/Executor;

    .line 84
    iput-object p2, p0, Lo/startTracking;->ICustomTabsCallback:Lo/startTracking$ICustomTabsCallback;

    .line 85
    iput p3, p0, Lo/startTracking;->onNavigationEvent:I

    .line 86
    iput-object p0, p0, Lo/startTracking;->onPostMessage:Ljava/lang/Runnable;

    .line 93
    new-instance p1, Lo/startTracking$5;

    invoke-direct {p1, p0}, Lo/startTracking$5;-><init>(Lo/startTracking;)V

    iput-object p1, p0, Lo/startTracking;->onMessageChannelReady:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lo/startTracking;->onTransact:Lo/getCardBackgroundColor;

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lo/startTracking;->onRelationshipValidationResult:I

    .line 102
    sget-object p1, Lo/startTracking$extraCallback;->onNavigationEvent:Lo/startTracking$extraCallback;

    iput-object p1, p0, Lo/startTracking;->ICustomTabsCallback$Stub:Lo/startTracking$extraCallback;

    const-wide/16 p1, 0x0

    .line 103
    iput-wide p1, p0, Lo/startTracking;->asBinder:J

    .line 104
    iput-wide p1, p0, Lo/startTracking;->asInterface:J

    return-void
.end method

.method private onNavigationEvent()V
    .locals 6

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v2, p0, Lo/startTracking;->ICustomTabsCallback$Stub:Lo/startTracking$extraCallback;

    sget-object v3, Lo/startTracking$extraCallback;->onPostMessage:Lo/startTracking$extraCallback;

    if-ne v2, v3, :cond_0

    .line 238
    iget-wide v2, p0, Lo/startTracking;->asInterface:J

    iget v4, p0, Lo/startTracking;->onNavigationEvent:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 240
    iput-wide v0, p0, Lo/startTracking;->asBinder:J

    .line 241
    sget-object v5, Lo/startTracking$extraCallback;->ICustomTabsCallback:Lo/startTracking$extraCallback;

    iput-object v5, p0, Lo/startTracking;->ICustomTabsCallback$Stub:Lo/startTracking$extraCallback;

    goto :goto_0

    .line 243
    :cond_0
    sget-object v2, Lo/startTracking$extraCallback;->onNavigationEvent:Lo/startTracking$extraCallback;

    iput-object v2, p0, Lo/startTracking;->ICustomTabsCallback$Stub:Lo/startTracking$extraCallback;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 245
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    sub-long/2addr v2, v0

    .line 247
    invoke-direct {p0, v2, v3}, Lo/startTracking;->onNavigationEvent(J)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 245
    monitor-exit p0

    throw v0
.end method

.method private onNavigationEvent(J)V
    .locals 4

    .line 194
    iget-object v0, p0, Lo/startTracking;->onMessageChannelReady:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 8034
    sget-object v1, Lo/startTracking$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 8035
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lo/startTracking$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8037
    :cond_0
    sget-object v1, Lo/startTracking$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/concurrent/ScheduledExecutorService;

    .line 197
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 199
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lo/startTracking;->onTransact:Lo/getCardBackgroundColor;

    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lo/startTracking;->onTransact:Lo/getCardBackgroundColor;

    const/4 v1, 0x0

    .line 118
    iput v1, p0, Lo/startTracking;->onRelationshipValidationResult:I

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1425
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 119
    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()Z
    .locals 7

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v2, p0, Lo/startTracking;->onTransact:Lo/getCardBackgroundColor;

    iget v3, p0, Lo/startTracking;->onRelationshipValidationResult:I

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_4

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_4

    if-eqz v2, :cond_2

    .line 6435
    invoke-virtual {v2}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_5

    .line 164
    monitor-exit p0

    return v5

    .line 166
    :cond_5
    sget-object v2, Lo/startTracking$2;->onMessageChannelReady:[I

    iget-object v3, p0, Lo/startTracking;->ICustomTabsCallback$Stub:Lo/startTracking$extraCallback;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v6, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    goto :goto_5

    .line 177
    :cond_6
    sget-object v2, Lo/startTracking$extraCallback;->onPostMessage:Lo/startTracking$extraCallback;

    iput-object v2, p0, Lo/startTracking;->ICustomTabsCallback$Stub:Lo/startTracking$extraCallback;

    :goto_5
    const-wide/16 v2, 0x0

    goto :goto_6

    .line 168
    :cond_7
    iget-wide v2, p0, Lo/startTracking;->asInterface:J

    iget v4, p0, Lo/startTracking;->onNavigationEvent:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 170
    iput-wide v0, p0, Lo/startTracking;->asBinder:J

    .line 171
    sget-object v4, Lo/startTracking$extraCallback;->ICustomTabsCallback:Lo/startTracking$extraCallback;

    iput-object v4, p0, Lo/startTracking;->ICustomTabsCallback$Stub:Lo/startTracking$extraCallback;

    const/4 v5, 0x1

    .line 183
    :goto_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_8

    sub-long/2addr v2, v0

    .line 185
    invoke-direct {p0, v2, v3}, Lo/startTracking;->onNavigationEvent(J)V

    :cond_8
    return v6

    :catchall_0
    move-exception v0

    .line 183
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady()J
    .locals 4

    monitor-enter p0

    .line 265
    :try_start_0
    iget-wide v0, p0, Lo/startTracking;->asInterface:J

    iget-wide v2, p0, Lo/startTracking;->asBinder:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onNavigationEvent(Lo/getCardBackgroundColor;I)Z
    .locals 4

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    and-int/lit8 v0, p2, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-eqz p1, :cond_2

    .line 3435
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_5

    return v1

    .line 137
    :cond_5
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lo/startTracking;->onTransact:Lo/getCardBackgroundColor;

    if-eqz p1, :cond_6

    .line 4095
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->ICustomTabsCallback()Lo/getCardBackgroundColor;

    move-result-object p1

    goto :goto_5

    :cond_6
    const/4 p1, 0x0

    .line 139
    :goto_5
    iput-object p1, p0, Lo/startTracking;->onTransact:Lo/getCardBackgroundColor;

    .line 140
    iput p2, p0, Lo/startTracking;->onRelationshipValidationResult:I

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    .line 4425
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->close()V

    :cond_7
    return v2

    :catchall_0
    move-exception p1

    .line 141
    monitor-exit p0

    throw p1
.end method

.method public final run()V
    .locals 6

    .line 9209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 9212
    monitor-enter p0

    .line 9213
    :try_start_0
    iget-object v2, p0, Lo/startTracking;->onTransact:Lo/getCardBackgroundColor;

    .line 9214
    iget v3, p0, Lo/startTracking;->onRelationshipValidationResult:I

    const/4 v4, 0x0

    .line 9215
    iput-object v4, p0, Lo/startTracking;->onTransact:Lo/getCardBackgroundColor;

    const/4 v4, 0x0

    .line 9216
    iput v4, p0, Lo/startTracking;->onRelationshipValidationResult:I

    .line 9217
    sget-object v5, Lo/startTracking$extraCallback;->onMessageChannelReady:Lo/startTracking$extraCallback;

    iput-object v5, p0, Lo/startTracking;->ICustomTabsCallback$Stub:Lo/startTracking$extraCallback;

    .line 9218
    iput-wide v0, p0, Lo/startTracking;->asInterface:J

    .line 9219
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    and-int/lit8 v0, v3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    and-int/lit8 v0, v3, 0x4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    .line 10435
    :try_start_1
    invoke-virtual {v2}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_6

    .line 9224
    iget-object v0, p0, Lo/startTracking;->ICustomTabsCallback:Lo/startTracking$ICustomTabsCallback;

    invoke-interface {v0, v2, v3}, Lo/startTracking$ICustomTabsCallback;->extraCallback(Lo/getCardBackgroundColor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 12425
    invoke-virtual {v2}, Lo/getCardBackgroundColor;->close()V

    .line 9228
    :cond_5
    invoke-direct {p0}, Lo/startTracking;->onNavigationEvent()V

    throw v0

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 11425
    invoke-virtual {v2}, Lo/getCardBackgroundColor;->close()V

    .line 9228
    :cond_7
    invoke-direct {p0}, Lo/startTracking;->onNavigationEvent()V

    return-void

    :catchall_1
    move-exception v0

    .line 9219
    monitor-exit p0

    throw v0
.end method
