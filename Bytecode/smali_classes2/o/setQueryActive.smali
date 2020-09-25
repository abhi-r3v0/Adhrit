.class public abstract Lo/setQueryActive;
.super Lo/convertToPlainJavaTypes;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/convertToPlainJavaTypes;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000e\u0008 \u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00060\u0002j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0000\u00a2\u0006\u0002\u0008\u0013J\u001f\u0010\u0014\u001a\u0002H\u0001\"\u0004\u0008\u0001\u0010\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J!\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0010H\u0000\u00a2\u0006\u0002\u0008\u001aJ\u0006\u0010\u001b\u001a\u00020\u000cJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u000eH \u00a2\u0006\u0002\u0008\u001dR\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/DispatchedTask;",
        "T",
        "Lkotlinx/coroutines/scheduling/Task;",
        "Lkotlinx/coroutines/SchedulerTask;",
        "resumeMode",
        "",
        "(I)V",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "cancelResult",
        "",
        "state",
        "",
        "cause",
        "",
        "cancelResult$kotlinx_coroutines_core",
        "getExceptionalResult",
        "getExceptionalResult$kotlinx_coroutines_core",
        "getSuccessfulResult",
        "getSuccessfulResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "handleFatalException",
        "exception",
        "finallyException",
        "handleFatalException$kotlinx_coroutines_core",
        "run",
        "takeState",
        "takeState$kotlinx_coroutines_core",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback$Stub:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/convertToPlainJavaTypes;-><init>()V

    iput p1, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "$this$addSuppressed"

    .line 177
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7048
    sget-object v0, Lo/deferredInitialization;->onMessageChannelReady:Lo/restoreWrites;

    invoke-virtual {v0, p1, p2}, Lo/restoreWrites;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    .line 93
    :cond_2
    new-instance p2, Lo/hasListeners;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_3

    .line 94
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 93
    :cond_3
    invoke-direct {p2, v0, p1}, Lo/hasListeners;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0}, Lo/setQueryActive;->asBinder()Lo/setSessionPersistenceKey;

    move-result-object p1

    invoke-interface {p1}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object p1

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p1, p2}, Lo/extraCallback;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract asBinder()Lo/setSessionPersistenceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setSessionPersistenceKey<",
            "TT;>;"
        }
    .end annotation
.end method

.method public extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public abstract onTransact()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 10

    const-string v0, "exception"

    .line 35
    iget-object v1, p0, Lo/convertToPlainJavaTypes;->asBinder:Lo/parseAndValidateUpdate;

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lo/setQueryActive;->asBinder()Lo/setSessionPersistenceKey;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Lo/getMaxNumberOfQueriesToKeep;

    .line 39
    iget-object v3, v2, Lo/getMaxNumberOfQueriesToKeep;->extraCallback:Lo/setSessionPersistenceKey;

    .line 40
    invoke-interface {v3}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object v4

    .line 41
    invoke-virtual {p0}, Lo/setQueryActive;->onTransact()Ljava/lang/Object;

    move-result-object v5

    .line 42
    iget-object v2, v2, Lo/getMaxNumberOfQueriesToKeep;->onMessageChannelReady:Ljava/lang/Object;

    .line 169
    invoke-static {v4, v2}, Lo/compareInts;->onNavigationEvent(Lo/isZombied;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1032
    :try_start_1
    instance-of v6, v5, Lo/evaluate;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    check-cast v6, Lo/evaluate;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lo/evaluate;->onMessageChannelReady:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v6, v7

    .line 44
    :goto_1
    iget v8, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

    sget-object v8, Lo/assertValidTrackedQuery;->onNavigationEvent:Lo/assertValidTrackedQuery$onNavigationEvent;

    check-cast v8, Lo/isZombied$extraCallback;

    invoke-interface {v4, v8}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v8

    check-cast v8, Lo/assertValidTrackedQuery;

    goto :goto_3

    :cond_3
    move-object v8, v7

    :goto_3
    if-nez v6, :cond_6

    if-eqz v8, :cond_6

    .line 50
    invoke-interface {v8}, Lo/assertValidTrackedQuery;->ICustomTabsCallback()Z

    move-result v9

    if-nez v9, :cond_6

    .line 51
    invoke-interface {v8}, Lo/assertValidTrackedQuery;->asBinder()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    .line 52
    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;

    invoke-virtual {p0, v5, v8}, Lo/setQueryActive;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 172
    sget-object v5, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    .line 173
    invoke-static {}, Lo/getSnapshot;->ICustomTabsCallback()Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v5, v3, Lo/wireFormat;

    if-nez v5, :cond_4

    goto :goto_4

    .line 174
    :cond_4
    check-cast v6, Ljava/lang/Throwable;

    move-object v5, v3

    check-cast v5, Lo/wireFormat;

    invoke-static {v6, v5}, Lo/wrapOnComplete;->onNavigationEvent(Ljava/lang/Throwable;Lo/wireFormat;)Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_5

    .line 173
    :cond_5
    :goto_4
    move-object v5, v6

    check-cast v5, Ljava/lang/Throwable;

    .line 172
    :goto_5
    invoke-static {v5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    new-instance v6, Lo/emptyWrite$ICustomTabsCallback;

    invoke-direct {v6, v5}, Lo/emptyWrite$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    .line 172
    invoke-static {v6}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    goto :goto_6

    :cond_6
    if-eqz v6, :cond_7

    .line 55
    sget-object v5, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-static {v6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3116
    new-instance v5, Lo/emptyWrite$ICustomTabsCallback;

    invoke-direct {v5, v6}, Lo/emptyWrite$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    .line 55
    invoke-static {v5}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    goto :goto_6

    .line 56
    :cond_7
    invoke-virtual {p0, v5}, Lo/setQueryActive;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-static {v5}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    .line 58
    :goto_6
    sget-object v3, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    :try_start_2
    invoke-static {v4, v2}, Lo/compareInts;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    :try_start_3
    sget-object v2, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-interface {v1}, Lo/parseAndValidateUpdate;->onNavigationEvent()V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-static {v1}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v1

    sget-object v2, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4116
    new-instance v0, Lo/emptyWrite$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/emptyWrite$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    .line 63
    invoke-static {v0}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    :goto_7
    invoke-static {v0}, Lo/emptyWrite;->extraCallback(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lo/setQueryActive;->ICustomTabsCallback(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v3

    .line 176
    :try_start_4
    invoke-static {v4, v2}, Lo/compareInts;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Object;)V

    throw v3

    .line 38
    :cond_8
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    .line 63
    :try_start_5
    sget-object v3, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-interface {v1}, Lo/parseAndValidateUpdate;->onNavigationEvent()V

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-static {v1}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v1

    sget-object v3, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5116
    new-instance v0, Lo/emptyWrite$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/emptyWrite$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    .line 63
    invoke-static {v0}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    :goto_8
    invoke-static {v0}, Lo/emptyWrite;->extraCallback(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lo/setQueryActive;->ICustomTabsCallback(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method
