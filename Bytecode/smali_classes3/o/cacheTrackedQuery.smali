.class public final Lo/cacheTrackedQuery;
.super Lo/getQueriesMatching;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0016J\u0013\u0010\u0016\u001a\u00020\t2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u001c\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0016J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001e\u0010 \u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00100\"H\u0016J\u0008\u0010#\u001a\u00020\u0006H\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lkotlinx/coroutines/android/HandlerContext;",
        "Lkotlinx/coroutines/android/HandlerDispatcher;",
        "Lkotlinx/coroutines/Delay;",
        "handler",
        "Landroid/os/Handler;",
        "name",
        "",
        "(Landroid/os/Handler;Ljava/lang/String;)V",
        "invokeImmediately",
        "",
        "(Landroid/os/Handler;Ljava/lang/String;Z)V",
        "_immediate",
        "immediate",
        "getImmediate",
        "()Lkotlinx/coroutines/android/HandlerContext;",
        "dispatch",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/DisposableHandle;",
        "timeMillis",
        "",
        "isDispatchNeeded",
        "scheduleResumeAfterDelay",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "toString",
        "kotlinx-coroutines-android"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private volatile _immediate:Lo/cacheTrackedQuery;

.field private final onMessageChannelReady:Lo/cacheTrackedQuery;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Landroid/os/Handler;

.field private final onTransact:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lo/cacheTrackedQuery;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lo/getQueriesMatching;-><init>(B)V

    iput-object p1, p0, Lo/cacheTrackedQuery;->onPostMessage:Landroid/os/Handler;

    iput-object p2, p0, Lo/cacheTrackedQuery;->onNavigationEvent:Ljava/lang/String;

    iput-boolean p3, p0, Lo/cacheTrackedQuery;->onTransact:Z

    if-eqz p3, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    :goto_0
    iput-object p1, p0, Lo/cacheTrackedQuery;->_immediate:Lo/cacheTrackedQuery;

    .line 124
    iget-object p1, p0, Lo/cacheTrackedQuery;->_immediate:Lo/cacheTrackedQuery;

    if-nez p1, :cond_1

    .line 125
    new-instance p1, Lo/cacheTrackedQuery;

    iget-object p2, p0, Lo/cacheTrackedQuery;->onPostMessage:Landroid/os/Handler;

    iget-object p3, p0, Lo/cacheTrackedQuery;->onNavigationEvent:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, v0}, Lo/cacheTrackedQuery;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Lo/cacheTrackedQuery;->_immediate:Lo/cacheTrackedQuery;

    :cond_1
    iput-object p1, p0, Lo/cacheTrackedQuery;->onMessageChannelReady:Lo/cacheTrackedQuery;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/cacheTrackedQuery;)Landroid/os/Handler;
    .locals 0

    .line 105
    iget-object p0, p0, Lo/cacheTrackedQuery;->onPostMessage:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 3

    .line 128
    iget-boolean v0, p0, Lo/cacheTrackedQuery;->onTransact:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lo/cacheTrackedQuery;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 159
    instance-of v0, p1, Lo/cacheTrackedQuery;

    if-eqz v0, :cond_0

    check-cast p1, Lo/cacheTrackedQuery;

    iget-object p1, p1, Lo/cacheTrackedQuery;->onPostMessage:Landroid/os/Handler;

    iget-object v0, p0, Lo/cacheTrackedQuery;->onPostMessage:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 160
    iget-object v0, p0, Lo/cacheTrackedQuery;->onPostMessage:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(JLo/addMerge;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lo/addMerge<",
            "-",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 197
    new-instance v0, Lo/cacheTrackedQuery$onMessageChannelReady;

    invoke-direct {v0, p0, p3}, Lo/cacheTrackedQuery$onMessageChannelReady;-><init>(Lo/cacheTrackedQuery;Lo/addMerge;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 139
    iget-object v1, p0, Lo/cacheTrackedQuery;->onPostMessage:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    move-wide p1, v2

    :cond_0
    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    new-instance p1, Lo/cacheTrackedQuery$extraCallback;

    invoke-direct {p1, p0, v0}, Lo/cacheTrackedQuery$extraCallback;-><init>(Lo/cacheTrackedQuery;Ljava/lang/Runnable;)V

    check-cast p1, Lo/onDisconnectSetValue;

    invoke-interface {p3, p1}, Lo/addMerge;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/isZombied;Ljava/lang/Runnable;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lo/cacheTrackedQuery;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic onPostMessage()Lo/getKnownCompleteChildren;
    .locals 1

    .line 1124
    iget-object v0, p0, Lo/cacheTrackedQuery;->onMessageChannelReady:Lo/cacheTrackedQuery;

    .line 105
    check-cast v0, Lo/getKnownCompleteChildren;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 153
    iget-object v0, p0, Lo/cacheTrackedQuery;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 154
    iget-boolean v1, p0, Lo/cacheTrackedQuery;->onTransact:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/cacheTrackedQuery;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [immediate]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 156
    :cond_1
    iget-object v0, p0, Lo/cacheTrackedQuery;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
