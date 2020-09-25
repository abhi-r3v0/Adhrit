.class public abstract Lo/getRelative;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setSessionPersistenceKey;
.implements Lo/wireFormat;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setSessionPersistenceKey<",
        "Ljava/lang/Object;",
        ">;",
        "Lo/wireFormat;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008!\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u00032\u00020\u0004B\u0017\u0012\u0010\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0006J$\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0016J\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00012\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0016J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\"\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0013H$\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\rH\u0014J\u001e\u0010\u0016\u001a\u00020\r2\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0013\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Ljava/io/Serializable;",
        "completion",
        "(Lkotlin/coroutines/Continuation;)V",
        "callerFrame",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "getCompletion",
        "()Lkotlin/coroutines/Continuation;",
        "create",
        "",
        "value",
        "getStackTraceElement",
        "Ljava/lang/StackTraceElement;",
        "invokeSuspend",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "releaseIntercepted",
        "resumeWith",
        "(Ljava/lang/Object;)V",
        "toString",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/setSessionPersistenceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setSessionPersistenceKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setSessionPersistenceKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setSessionPersistenceKey<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getRelative;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setSessionPersistenceKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setSessionPersistenceKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/getRelative;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    return-object v0
.end method

.method protected abstract extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final extraCallback()Ljava/lang/StackTraceElement;
    .locals 1

    .line 76
    invoke-static {p0}, Lo/extraCallback;->onPostMessage(Lo/getRelative;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/wireFormat;
    .locals 2

    .line 73
    iget-object v0, p0, Lo/getRelative;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    instance-of v1, v0, Lo/wireFormat;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/wireFormat;

    return-object v0
.end method

.method public onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setSessionPersistenceKey<",
            "*>;)",
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 3

    .line 23
    move-object v0, p0

    check-cast v0, Lo/getRelative;

    .line 28
    :goto_0
    move-object v1, v0

    check-cast v1, Lo/setSessionPersistenceKey;

    const-string v2, "frame"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v1, v0, Lo/getRelative;->onMessageChannelReady:Lo/setSessionPersistenceKey;

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 33
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lo/getRelative;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2054
    sget-object v2, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    if-ne p1, v2, :cond_1

    return-void

    .line 35
    :cond_1
    sget-object v2, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    invoke-static {p1}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 37
    sget-object v2, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    const-string v2, "exception"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    new-instance v2, Lo/emptyWrite$ICustomTabsCallback;

    invoke-direct {v2, p1}, Lo/emptyWrite$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    .line 37
    invoke-static {v2}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    :goto_1
    invoke-virtual {v0}, Lo/getRelative;->onPostMessage()V

    .line 40
    instance-of v0, v1, Lo/getRelative;

    if-eqz v0, :cond_2

    .line 42
    move-object v0, v1

    check-cast v0, Lo/getRelative;

    goto :goto_0

    .line 46
    :cond_2
    invoke-interface {v1, p1}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Continuation at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3076
    invoke-static {p0}, Lo/extraCallback;->onPostMessage(Lo/getRelative;)Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
