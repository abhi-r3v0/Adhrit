.class public abstract Lo/zombifyForRemove;
.super Lo/setRunLoop;
.source ""

# interfaces
.implements Lo/zombify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zombifyForRemove$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u00172\u00020\u00012\u00020\u0002:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\u0008\u001a\u00060\tj\u0002`\nH&J\u001c\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\u0008\u001a\u00060\tj\u0002`\nH\u0017J \u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\r\"\u0004\u0008\u0000\u0010\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\rJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0011\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0000H\u0087\u0002J\u0014\u0010\u0014\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0017J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlin/coroutines/ContinuationInterceptor;",
        "()V",
        "dispatch",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "dispatchYield",
        "interceptContinuation",
        "Lkotlin/coroutines/Continuation;",
        "T",
        "continuation",
        "isDispatchNeeded",
        "",
        "plus",
        "other",
        "releaseInterceptedContinuation",
        "toString",
        "",
        "Key",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/zombifyForRemove$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/zombifyForRemove$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/zombifyForRemove$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/zombifyForRemove;->extraCallback:Lo/zombifyForRemove$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lo/zombify;->ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;

    check-cast v0, Lo/isZombied$extraCallback;

    invoke-direct {p0, v0}, Lo/setRunLoop;-><init>(Lo/isZombied$extraCallback;)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/isZombied$onNavigationEvent;",
            ">(",
            "Lo/isZombied$extraCallback<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    .line 30
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4055
    instance-of v1, p1, Lo/setAuthTokenProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 4057
    check-cast p1, Lo/setAuthTokenProvider;

    invoke-interface {p0}, Lo/zombify;->getKey()Lo/isZombied$extraCallback;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5055
    move-object v0, p1

    check-cast v0, Lo/setAuthTokenProvider;

    if-eq v1, v0, :cond_1

    iget-object v0, p1, Lo/setAuthTokenProvider;->extraCallback:Lo/isZombied$extraCallback;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 4057
    move-object v0, p0

    check-cast v0, Lo/isZombied$onNavigationEvent;

    const-string v1, "element"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6054
    iget-object p1, p1, Lo/setAuthTokenProvider;->onMessageChannelReady:Lo/onDisconnectSetValue;

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isZombied$onNavigationEvent;

    .line 4057
    instance-of v0, p1, Lo/isZombied$onNavigationEvent;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p1

    :cond_3
    :goto_2
    return-object v2

    .line 4060
    :cond_4
    sget-object v0, Lo/zombify;->ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;

    if-ne v0, p1, :cond_5

    move-object p1, p0

    check-cast p1, Lo/isZombied$onNavigationEvent;

    return-object p1

    :cond_5
    return-object v2
.end method

.method public minusKey(Lo/isZombied$extraCallback;)Lo/isZombied;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isZombied$extraCallback<",
            "*>;)",
            "Lo/isZombied;"
        }
    .end annotation

    const-string v0, "key"

    .line 30
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6067
    instance-of v1, p1, Lo/setAuthTokenProvider;

    if-eqz v1, :cond_3

    .line 6068
    check-cast p1, Lo/setAuthTokenProvider;

    invoke-interface {p0}, Lo/zombify;->getKey()Lo/isZombied$extraCallback;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7055
    move-object v0, p1

    check-cast v0, Lo/setAuthTokenProvider;

    if-eq v1, v0, :cond_1

    iget-object v0, p1, Lo/setAuthTokenProvider;->extraCallback:Lo/isZombied$extraCallback;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 6068
    move-object v0, p0

    check-cast v0, Lo/isZombied$onNavigationEvent;

    const-string v1, "element"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8054
    iget-object p1, p1, Lo/setAuthTokenProvider;->onMessageChannelReady:Lo/onDisconnectSetValue;

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isZombied$onNavigationEvent;

    if-eqz p1, :cond_2

    .line 6068
    sget-object p1, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    check-cast p1, Lo/isZombied;

    return-object p1

    :cond_2
    move-object p1, p0

    check-cast p1, Lo/isZombied;

    return-object p1

    .line 6070
    :cond_3
    sget-object v0, Lo/zombify;->ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;

    if-ne v0, p1, :cond_4

    sget-object p1, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    check-cast p1, Lo/isZombied;

    return-object p1

    :cond_4
    move-object p1, p0

    check-cast p1, Lo/isZombied;

    return-object p1
.end method

.method public final onMessageChannelReady(Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/setSessionPersistenceKey<",
            "-TT;>;)",
            "Lo/setSessionPersistenceKey<",
            "TT;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lo/getMaxNumberOfQueriesToKeep;

    invoke-direct {v0, p0, p1}, Lo/getMaxNumberOfQueriesToKeep;-><init>(Lo/zombifyForRemove;Lo/setSessionPersistenceKey;)V

    check-cast v0, Lo/setSessionPersistenceKey;

    return-object v0
.end method

.method public abstract onNavigationEvent(Lo/isZombied;Ljava/lang/Runnable;)V
.end method

.method public final onPostMessage(Lo/setSessionPersistenceKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setSessionPersistenceKey<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 103
    check-cast p1, Lo/getMaxNumberOfQueriesToKeep;

    .line 1064
    iget-object p1, p1, Lo/getMaxNumberOfQueriesToKeep;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v0, p1, Lo/getWrite;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/getWrite;

    if-eqz p1, :cond_2

    .line 2073
    iget-object v0, p1, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lo/setQueryInactive;

    if-eqz v0, :cond_1

    .line 1350
    invoke-interface {v0}, Lo/setQueryInactive;->onNavigationEvent()V

    .line 1351
    :cond_1
    sget-object v0, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    check-cast v0, Lo/setQueryInactive;

    .line 2074
    iput-object v0, p1, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    :cond_2
    return-void

    .line 103
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<*>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3020
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4012
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
