.class public interface abstract Lo/zombify;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isZombied$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zombify$onPostMessage;,
        Lo/zombify$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008g\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ(\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0005H\u0096\u0002\u00a2\u0006\u0002\u0010\u0006J\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\u0004\u0008\u0000\u0010\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008H&J\u0014\u0010\u000b\u001a\u00020\u000c2\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0016J\u0014\u0010\r\u001a\u00020\u000e2\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/coroutines/ContinuationInterceptor;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "get",
        "E",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;",
        "interceptContinuation",
        "Lkotlin/coroutines/Continuation;",
        "T",
        "continuation",
        "minusKey",
        "Lkotlin/coroutines/CoroutineContext;",
        "releaseInterceptedContinuation",
        "",
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


# static fields
.field public static final ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/zombify$ICustomTabsCallback;->onPostMessage:Lo/zombify$ICustomTabsCallback;

    sput-object v0, Lo/zombify;->ICustomTabsCallback:Lo/zombify$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public abstract onMessageChannelReady(Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
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
.end method

.method public abstract onPostMessage(Lo/setSessionPersistenceKey;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setSessionPersistenceKey<",
            "*>;)V"
        }
    .end annotation
.end method
