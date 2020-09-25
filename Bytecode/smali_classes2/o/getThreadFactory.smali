.class public final Lo/getThreadFactory;
.super Lo/setRunLoop;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getThreadFactory$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/coroutines/YieldContext;",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "()V",
        "dispatcherWasUnconfined",
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
.field public static final ICustomTabsCallback:Lo/getThreadFactory$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getThreadFactory$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getThreadFactory$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/getThreadFactory;->ICustomTabsCallback:Lo/getThreadFactory$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Lo/getThreadFactory;->ICustomTabsCallback:Lo/getThreadFactory$ICustomTabsCallback;

    check-cast v0, Lo/isZombied$extraCallback;

    invoke-direct {p0, v0}, Lo/setRunLoop;-><init>(Lo/isZombied$extraCallback;)V

    return-void
.end method
