.class public final Lo/operationForChild;
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
        "\u00006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u000b\u001a\u00020\u000cH\u0000\u001a4\u0010\r\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e2\u0006\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0013H\u0080\u0008\u00a2\u0006\u0002\u0010\u0014\u001a\u0014\u0010\u0015\u001a\u00020\u0008*\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0008H\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "COROUTINES_SCHEDULER_PROPERTY_NAME",
        "",
        "DEBUG_THREAD_NAME_SEPARATOR",
        "useCoroutinesScheduler",
        "",
        "getUseCoroutinesScheduler",
        "()Z",
        "coroutineName",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineName",
        "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;",
        "createDefaultDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "withCoroutineContext",
        "T",
        "context",
        "countOrElement",
        "",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "newCoroutineContext",
        "Lkotlinx/coroutines/CoroutineScope;",
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
.field private static final onMessageChannelReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlinx.coroutines.scheduler"

    .line 2001
    invoke-static {v0}, Lo/compareLongs;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_1

    const v2, 0x1ad6f

    if-ne v1, v2, :cond_3

    const-string v1, "off"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "on"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    const/4 v0, 0x1

    .line 14
    :goto_1
    sput-boolean v0, Lo/operationForChild;->onMessageChannelReady:Z

    return-void

    .line 18
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "System property \'kotlinx.coroutines.scheduler\' has unrecognized value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final onNavigationEvent(Lo/isZombied;)Ljava/lang/String;
    .locals 2

    .line 52
    invoke-static {}, Lo/getSnapshot;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 53
    :cond_0
    sget-object v0, Lo/getAffectedTree;->onNavigationEvent:Lo/getAffectedTree$onNavigationEvent;

    check-cast v0, Lo/isZombied$extraCallback;

    invoke-interface {p0, v0}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getAffectedTree;

    if-nez v0, :cond_1

    return-object v1

    .line 54
    :cond_1
    sget-object v1, Lo/isFromServer;->onPostMessage:Lo/isFromServer$extraCallback;

    check-cast v1, Lo/isZombied$extraCallback;

    invoke-interface {p0, v1}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coroutine"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1061
    iget-wide v0, v0, Lo/getAffectedTree;->onMessageChannelReady:J

    .line 55
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final onPostMessage(Lo/isFromUser;Lo/isZombied;)Lo/isZombied;
    .locals 2

    .line 33
    invoke-interface {p0}, Lo/isFromUser;->onPostMessage()Lo/isZombied;

    move-result-object p0

    invoke-interface {p0, p1}, Lo/isZombied;->plus(Lo/isZombied;)Lo/isZombied;

    move-result-object p0

    .line 34
    invoke-static {}, Lo/getSnapshot;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lo/getAffectedTree;

    invoke-static {}, Lo/getSnapshot;->onNavigationEvent()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lo/getAffectedTree;-><init>(J)V

    check-cast p1, Lo/isZombied;

    invoke-interface {p0, p1}, Lo/isZombied;->plus(Lo/isZombied;)Lo/isZombied;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    .line 35
    :goto_0
    invoke-static {}, Lo/setTrackedQueryKeys;->extraCallback()Lo/zombifyForRemove;

    move-result-object v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/zombify;->ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;

    check-cast v0, Lo/isZombied$extraCallback;

    invoke-interface {p0, v0}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object p0

    if-nez p0, :cond_1

    .line 36
    invoke-static {}, Lo/setTrackedQueryKeys;->extraCallback()Lo/zombifyForRemove;

    move-result-object p0

    check-cast p0, Lo/isZombied;

    invoke-interface {p1, p0}, Lo/isZombied;->plus(Lo/isZombied;)Lo/isZombied;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static final onPostMessage()Lo/zombifyForRemove;
    .locals 1

    .line 23
    sget-boolean v0, Lo/operationForChild;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    sget-object v0, Lo/validateWritableObject;->onNavigationEvent:Lo/validateWritableObject;

    :goto_0
    check-cast v0, Lo/zombifyForRemove;

    return-object v0

    :cond_0
    sget-object v0, Lo/recordContainsPath;->onPostMessage:Lo/recordContainsPath;

    goto :goto_0
.end method
