.class public final Lo/getLeafType;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onMessageChannelReady:Lo/shouldLog;

.field private static onPostMessage:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Lo/shouldLog;)V
    .locals 8

    .line 52
    iget-object v0, p0, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/shouldLog;->onTransact:Lo/shouldLog;

    if-nez v0, :cond_2

    .line 53
    iget-boolean v0, p0, Lo/shouldLog;->onPostMessage:Z

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    const-class v0, Lo/getLeafType;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-wide v1, Lo/getLeafType;->onPostMessage:J

    const-wide/16 v3, 0x2000

    add-long/2addr v1, v3

    const-wide/32 v5, 0x10000

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    monitor-exit v0

    return-void

    .line 56
    :cond_1
    sget-wide v1, Lo/getLeafType;->onPostMessage:J

    add-long/2addr v1, v3

    sput-wide v1, Lo/getLeafType;->onPostMessage:J

    .line 57
    sget-object v1, Lo/getLeafType;->onMessageChannelReady:Lo/shouldLog;

    iput-object v1, p0, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lo/shouldLog;->onNavigationEvent:I

    iput v1, p0, Lo/shouldLog;->ICustomTabsCallback:I

    .line 59
    sput-object p0, Lo/getLeafType;->onMessageChannelReady:Lo/shouldLog;

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static onPostMessage()Lo/shouldLog;
    .locals 6

    .line 39
    const-class v0, Lo/getLeafType;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lo/getLeafType;->onMessageChannelReady:Lo/shouldLog;

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lo/getLeafType;->onMessageChannelReady:Lo/shouldLog;

    .line 42
    iget-object v2, v1, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    sput-object v2, Lo/getLeafType;->onMessageChannelReady:Lo/shouldLog;

    const/4 v2, 0x0

    .line 43
    iput-object v2, v1, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    .line 44
    sget-wide v2, Lo/getLeafType;->onPostMessage:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lo/getLeafType;->onPostMessage:J

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 47
    :cond_0
    monitor-exit v0

    .line 48
    new-instance v0, Lo/shouldLog;

    invoke-direct {v0}, Lo/shouldLog;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0

    throw v1
.end method
