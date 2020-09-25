.class public interface abstract Lo/isZombied;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isZombied$extraCallback;,
        Lo/isZombied$onNavigationEvent;,
        Lo/isZombied$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008g\u0018\u00002\u00020\u0001:\u0002\u0011\u0012J5\u0010\u0002\u001a\u0002H\u0003\"\u0004\u0008\u0000\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u00032\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H\u00030\u0006H&\u00a2\u0006\u0002\u0010\u0008J(\u0010\t\u001a\u0004\u0018\u0001H\n\"\u0008\u0008\u0000\u0010\n*\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u000cH\u00a6\u0002\u00a2\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020\u00002\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000cH&J\u0011\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0000H\u0096\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlin/coroutines/CoroutineContext;",
        "",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "get",
        "E",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;",
        "minusKey",
        "plus",
        "context",
        "Element",
        "Key",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;
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
.end method

.method public abstract get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/isZombied$onNavigationEvent;",
            ">(",
            "Lo/isZombied$extraCallback<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract minusKey(Lo/isZombied$extraCallback;)Lo/isZombied;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isZombied$extraCallback<",
            "*>;)",
            "Lo/isZombied;"
        }
    .end annotation
.end method

.method public abstract plus(Lo/isZombied;)Lo/isZombied;
.end method
