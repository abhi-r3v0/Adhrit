.class public final Lo/convertToCustomClass;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0005\u001a\u00020\u00068\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0007\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\n\u001a\u00020\u00068\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u0012\u0010\u000b\u001a\u00020\u000c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\r\u001a\u00020\u000e*\u00020\u000f8\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "BLOCKING_DEFAULT_PARALLELISM",
        "",
        "CORE_POOL_SIZE",
        "DEFAULT_SCHEDULER_NAME",
        "",
        "IDLE_WORKER_KEEP_ALIVE_NS",
        "",
        "MAX_POOL_SIZE",
        "TASK_NON_BLOCKING",
        "TASK_PROBABLY_BLOCKING",
        "WORK_STEALING_TIME_RESOLUTION_NS",
        "schedulerTimeSource",
        "Lkotlinx/coroutines/scheduling/TimeSource;",
        "isBlocking",
        "",
        "Lkotlinx/coroutines/scheduling/Task;",
        "(Lkotlinx/coroutines/scheduling/Task;)Z",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:I

.field public static final extraCallback:J

.field public static onMessageChannelReady:Lo/deserializeToPrimitive;

.field public static final onNavigationEvent:J

.field public static final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    const-wide/16 v3, 0x1

    const-wide v5, 0x7fffffffffffffffL

    .line 2001
    invoke-static/range {v0 .. v6}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;JJJ)J

    move-result-wide v0

    .line 18
    sput-wide v0, Lo/convertToCustomClass;->extraCallback:J

    const/4 v0, 0x0

    const-string v1, "kotlinx.coroutines.scheduler.blocking.parallelism"

    const/16 v2, 0x10

    const/16 v3, 0xc

    .line 23
    invoke-static {v1, v2, v0, v0, v3}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;IIII)I

    .line 3001
    invoke-static {}, Lo/compareLongs;->ICustomTabsCallback()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    const/4 v2, 0x1

    const/16 v3, 0x8

    const-string v4, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 30
    invoke-static {v4, v1, v2, v0, v3}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;IIII)I

    move-result v1

    sput v1, Lo/convertToCustomClass;->ICustomTabsCallback:I

    .line 4001
    invoke-static {}, Lo/compareLongs;->ICustomTabsCallback()I

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    .line 40
    sget v2, Lo/convertToCustomClass;->ICustomTabsCallback:I

    const v3, 0x1ffffe

    .line 39
    invoke-static {v1, v2, v3}, Lo/viewForQuery;->extraCallback(III)I

    move-result v1

    const/4 v2, 0x4

    const-string v4, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 37
    invoke-static {v4, v1, v0, v3, v2}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lo/convertToCustomClass;->onPostMessage:I

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 6001
    invoke-static/range {v1 .. v7}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;JJJ)J

    move-result-wide v1

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lo/convertToCustomClass;->onNavigationEvent:J

    .line 52
    sget-object v0, Lo/isWritablePath;->ICustomTabsCallback:Lo/isWritablePath;

    check-cast v0, Lo/deserializeToPrimitive;

    sput-object v0, Lo/convertToCustomClass;->onMessageChannelReady:Lo/deserializeToPrimitive;

    return-void
.end method
