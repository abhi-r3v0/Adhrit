.class public abstract Lo/setRunLoop;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isZombied$onNavigationEvent;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "(Lkotlin/coroutines/CoroutineContext$Key;)V",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
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
.field private final key:Lo/isZombied$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isZombied$extraCallback<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/isZombied$extraCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isZombied$extraCallback<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setRunLoop;->key:Lo/isZombied$extraCallback;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lo/nextTransactionOrder<",
            "-TR;-",
            "Lo/isZombied$onNavigationEvent;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    invoke-interface {p2, p1, p0}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;
    .locals 1
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

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    invoke-interface {p0}, Lo/isZombied$onNavigationEvent;->getKey()Lo/isZombied$extraCallback;

    move-result-object v0

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKey()Lo/isZombied$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isZombied$extraCallback<",
            "*>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/setRunLoop;->key:Lo/isZombied$extraCallback;

    return-object v0
.end method

.method public minusKey(Lo/isZombied$extraCallback;)Lo/isZombied;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isZombied$extraCallback<",
            "*>;)",
            "Lo/isZombied;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    invoke-interface {p0}, Lo/isZombied$onNavigationEvent;->getKey()Lo/isZombied$extraCallback;

    move-result-object v0

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    check-cast p1, Lo/isZombied;

    return-object p1

    :cond_0
    move-object p1, p0

    check-cast p1, Lo/isZombied;

    return-object p1
.end method

.method public plus(Lo/isZombied;)Lo/isZombied;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lo/isZombied;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2031
    sget-object v0, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    if-ne p1, v0, :cond_0

    return-object v1

    .line 2032
    :cond_0
    sget-object v0, Lo/isZombied$onPostMessage$onMessageChannelReady;->onPostMessage:Lo/isZombied$onPostMessage$onMessageChannelReady;

    check-cast v0, Lo/nextTransactionOrder;

    invoke-interface {p1, v1, v0}, Lo/isZombied;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isZombied;

    return-object p1
.end method
