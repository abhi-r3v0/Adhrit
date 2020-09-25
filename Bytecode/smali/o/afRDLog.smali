.class public Lo/afRDLog;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:I

.field private static onNavigationEvent:I

.field private static volatile onPostMessage:Lo/resetDeltaTime;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1031
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v2, v1

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 1033
    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 1035
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 24
    :goto_0
    sput v1, Lo/afRDLog;->onNavigationEvent:I

    const/16 v0, 0x180

    .line 26
    sput v0, Lo/afRDLog;->extraCallback:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Lo/resetDeltaTime;
    .locals 4
    .annotation build Lcom/facebook/infer/annotation/ThreadSafe;
    .end annotation

    .line 50
    sget-object v0, Lo/afRDLog;->onPostMessage:Lo/resetDeltaTime;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lo/afRDLog;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lo/afRDLog;->onPostMessage:Lo/resetDeltaTime;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lo/resetDeltaTime;

    sget v2, Lo/afRDLog;->extraCallback:I

    sget v3, Lo/afRDLog;->onNavigationEvent:I

    invoke-direct {v1, v2, v3}, Lo/resetDeltaTime;-><init>(II)V

    sput-object v1, Lo/afRDLog;->onPostMessage:Lo/resetDeltaTime;

    .line 55
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lo/afRDLog;->onPostMessage:Lo/resetDeltaTime;

    return-object v0
.end method
