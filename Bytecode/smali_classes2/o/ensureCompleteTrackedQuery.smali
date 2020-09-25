.class public Lo/ensureCompleteTrackedQuery;
.super Lo/node;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/node<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\u0008\u0012\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/StandaloneCoroutine;",
        "Lkotlinx/coroutines/AbstractCoroutine;",
        "",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "active",
        "",
        "(Lkotlin/coroutines/CoroutineContext;Z)V",
        "handleJobException",
        "exception",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/isZombied;Z)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2}, Lo/node;-><init>(Lo/isZombied;Z)V

    return-void
.end method


# virtual methods
.method protected final extraCallback(Ljava/lang/Throwable;)Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Lo/node;->onNavigationEvent()Lo/isZombied;

    move-result-object v0

    invoke-static {v0, p1}, Lo/extraCallback;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
