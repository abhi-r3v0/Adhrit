.class public abstract Lo/setAuthTokenProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isZombied$extraCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lo/isZombied$onNavigationEvent;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lo/isZombied$extraCallback<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u0002H\u00012\u0008\u0012\u0004\u0012\u0002H\u00030\u0004B8\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012#\u0010\u0006\u001a\u001f\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0004H\u0000\u00a2\u0006\u0002\u0008\u0010J\u0019\u0010\u0011\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R+\u0010\u0006\u001a\u001f\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlin/coroutines/AbstractCoroutineContextKey;",
        "B",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "E",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "baseKey",
        "safeCast",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "element",
        "(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V",
        "topmostKey",
        "isSubKey",
        "",
        "key",
        "isSubKey$kotlin_stdlib",
        "tryCast",
        "tryCast$kotlin_stdlib",
        "(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/coroutines/CoroutineContext$Element;",
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
.field public final extraCallback:Lo/isZombied$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isZombied$extraCallback<",
            "*>;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "Lo/isZombied$onNavigationEvent;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/isZombied$extraCallback;Lo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isZombied$extraCallback<",
            "TB;>;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lo/isZombied$onNavigationEvent;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/setAuthTokenProvider;->onMessageChannelReady:Lo/onDisconnectSetValue;

    .line 52
    instance-of p2, p1, Lo/setAuthTokenProvider;

    if-eqz p2, :cond_0

    check-cast p1, Lo/setAuthTokenProvider;

    iget-object p1, p1, Lo/setAuthTokenProvider;->extraCallback:Lo/isZombied$extraCallback;

    :cond_0
    iput-object p1, p0, Lo/setAuthTokenProvider;->extraCallback:Lo/isZombied$extraCallback;

    return-void
.end method
