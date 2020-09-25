.class public Lo/getIndexedFilter;
.super Lo/logsDebug;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getIndexedFilter$onPostMessage;
    }
.end annotation


# static fields
.field private static final extraCallback:J

.field private static final onNavigationEvent:J

.field static onPostMessage:Lo/getIndexedFilter;


# instance fields
.field private asInterface:Lo/getIndexedFilter;

.field public onMessageChannelReady:Z

.field private onTransact:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/getIndexedFilter;->extraCallback:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lo/getIndexedFilter;->extraCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lo/getIndexedFilter;->onNavigationEvent:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/logsDebug;-><init>()V

    return-void
.end method

.method private static declared-synchronized onMessageChannelReady(Lo/getIndexedFilter;JZ)V
    .locals 6

    const-class v0, Lo/getIndexedFilter;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lo/getIndexedFilter;->onPostMessage:Lo/getIndexedFilter;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lo/getIndexedFilter;

    invoke-direct {v1}, Lo/getIndexedFilter;-><init>()V

    sput-object v1, Lo/getIndexedFilter;->onPostMessage:Lo/getIndexedFilter;

    .line 88
    new-instance v1, Lo/getIndexedFilter$onPostMessage;

    invoke-direct {v1}, Lo/getIndexedFilter$onPostMessage;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 95
    invoke-virtual {p0}, Lo/logsDebug;->ICustomTabsCallback()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lo/getIndexedFilter;->onTransact:J

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    add-long/2addr p1, v1

    .line 97
    iput-wide p1, p0, Lo/getIndexedFilter;->onTransact:J

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    .line 99
    invoke-virtual {p0}, Lo/logsDebug;->ICustomTabsCallback()J

    move-result-wide p1

    iput-wide p1, p0, Lo/getIndexedFilter;->onTransact:J

    .line 1145
    :goto_0
    iget-wide p1, p0, Lo/getIndexedFilter;->onTransact:J

    sub-long/2addr p1, v1

    .line 106
    sget-object p3, Lo/getIndexedFilter;->onPostMessage:Lo/getIndexedFilter;

    .line 107
    :goto_1
    iget-object v3, p3, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    if-eqz v3, :cond_4

    iget-object v3, p3, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    .line 2145
    iget-wide v3, v3, Lo/getIndexedFilter;->onTransact:J

    sub-long/2addr v3, v1

    cmp-long v5, p1, v3

    if-gez v5, :cond_3

    goto :goto_2

    .line 106
    :cond_3
    iget-object p3, p3, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    goto :goto_1

    .line 108
    :cond_4
    :goto_2
    iget-object p1, p3, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    iput-object p1, p0, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    .line 109
    iput-object p0, p3, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    .line 110
    sget-object p0, Lo/getIndexedFilter;->onPostMessage:Lo/getIndexedFilter;

    if-ne p3, p0, :cond_5

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 116
    :cond_5
    monitor-exit v0

    return-void

    .line 101
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static onNavigationEvent()Lo/getIndexedFilter;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 343
    const-class v0, Lo/getIndexedFilter;

    sget-object v1, Lo/getIndexedFilter;->onPostMessage:Lo/getIndexedFilter;

    iget-object v1, v1, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 347
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 348
    sget-wide v5, Lo/getIndexedFilter;->extraCallback:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 349
    sget-object v0, Lo/getIndexedFilter;->onPostMessage:Lo/getIndexedFilter;

    iget-object v0, v0, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Lo/getIndexedFilter;->onNavigationEvent:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 350
    sget-object v0, Lo/getIndexedFilter;->onPostMessage:Lo/getIndexedFilter;

    return-object v0

    :cond_0
    return-object v2

    .line 354
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 4145
    iget-wide v5, v1, Lo/getIndexedFilter;->onTransact:J

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    if-lez v7, :cond_2

    const-wide/32 v3, 0xf4240

    .line 360
    div-long v7, v5, v3

    mul-long v3, v3, v7

    sub-long/2addr v5, v3

    long-to-int v1, v5

    .line 362
    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 367
    :cond_2
    sget-object v0, Lo/getIndexedFilter;->onPostMessage:Lo/getIndexedFilter;

    iget-object v3, v1, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    iput-object v3, v0, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    .line 368
    iput-object v2, v1, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    return-object v1
.end method

.method public static declared-synchronized onNavigationEvent(Lo/getIndexedFilter;)Z
    .locals 3

    const-class v0, Lo/getIndexedFilter;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lo/getIndexedFilter;->onPostMessage:Lo/getIndexedFilter;

    :goto_0
    if-eqz v1, :cond_1

    .line 129
    iget-object v2, v1, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    if-ne v2, p0, :cond_0

    .line 130
    iget-object v2, p0, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    iput-object v2, v1, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 132
    monitor-exit v0

    return p0

    .line 128
    :cond_0
    :try_start_1
    iget-object v1, v1, Lo/getIndexedFilter;->asInterface:Lo/getIndexedFilter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 137
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected ICustomTabsCallback(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 295
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected extraCallback()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 6

    .line 73
    iget-boolean v0, p0, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lo/logsDebug;->S_()J

    move-result-wide v0

    .line 75
    invoke-virtual {p0}, Lo/logsDebug;->onPostMessage()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 79
    iput-boolean v3, p0, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 80
    invoke-static {p0, v0, v1, v2}, Lo/getIndexedFilter;->onMessageChannelReady(Lo/getIndexedFilter;JZ)V

    return-void

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final onMessageChannelReady(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3120
    iget-boolean v0, p0, Lo/getIndexedFilter;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3121
    :cond_0
    iput-boolean v1, p0, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 3122
    invoke-static {p0}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 276
    invoke-virtual {p0, p1}, Lo/getIndexedFilter;->ICustomTabsCallback(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method final onPostMessage(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4120
    iget-boolean v0, p0, Lo/getIndexedFilter;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4121
    :cond_0
    iput-boolean v1, p0, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 4122
    invoke-static {p0}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    return-object p1

    .line 286
    :cond_1
    invoke-virtual {p0, p1}, Lo/getIndexedFilter;->ICustomTabsCallback(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method
