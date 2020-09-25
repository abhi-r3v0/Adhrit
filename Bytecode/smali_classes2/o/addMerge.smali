.class public interface abstract Lo/addMerge;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setSessionPersistenceKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/addMerge$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setSessionPersistenceKey<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002J\u0014\u0010\u0008\u001a\u00020\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH&J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\'J\u0008\u0010\u000f\u001a\u00020\u000cH\'J1\u0010\u0010\u001a\u00020\u000c2\'\u0010\u0011\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\u000c0\u0012j\u0002`\u0015H&J8\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00028\u00002!\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\u000c0\u0012H\'\u00a2\u0006\u0002\u0010\u0019J#\u0010\u001a\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0017\u001a\u00028\u00002\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000eH\'\u00a2\u0006\u0002\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001e\u001a\u00020\nH\'J\u0019\u0010\u001f\u001a\u00020\u000c*\u00020 2\u0006\u0010\u0017\u001a\u00028\u0000H\'\u00a2\u0006\u0002\u0010!J\u0014\u0010\"\u001a\u00020\u000c*\u00020 2\u0006\u0010\u001e\u001a\u00020\nH\'R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005R\u0012\u0010\u0007\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/CancellableContinuation;",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "isActive",
        "",
        "()Z",
        "isCancelled",
        "isCompleted",
        "cancel",
        "cause",
        "",
        "completeResume",
        "",
        "token",
        "",
        "initCancellability",
        "invokeOnCancellation",
        "handler",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "resume",
        "value",
        "onCancellation",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "tryResume",
        "idempotent",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "tryResumeWithException",
        "exception",
        "resumeUndispatched",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V",
        "resumeUndispatchedWithException",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback()Z
.end method

.method public abstract onMessageChannelReady(Lo/onDisconnectSetValue;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/Object;)V
.end method

.method public abstract onNavigationEvent(Lo/zombifyForRemove;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/zombifyForRemove;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/Throwable;)Z
.end method
