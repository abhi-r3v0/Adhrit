.class public final Lo/validateWritableObject;
.super Lo/validateDoubleValue;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\nH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/DefaultScheduler;",
        "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;",
        "()V",
        "IO",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getIO",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "close",
        "",
        "toDebugString",
        "",
        "toString",
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
.field private static final onMessageChannelReady:Lo/zombifyForRemove;

.field public static final onNavigationEvent:Lo/validateWritableObject;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lo/validateWritableObject;

    invoke-direct {v0}, Lo/validateWritableObject;-><init>()V

    sput-object v0, Lo/validateWritableObject;->onNavigationEvent:Lo/validateWritableObject;

    .line 1001
    invoke-static {}, Lo/compareLongs;->ICustomTabsCallback()I

    move-result v1

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    :goto_0
    const/16 v2, 0xc

    const/4 v3, 0x0

    const-string v4, "kotlinx.coroutines.io.parallelism"

    .line 17
    invoke-static {v4, v1, v3, v3, v2}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;IIII)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    .line 2088
    new-instance v2, Lo/validateWritableKey;

    invoke-direct {v2, v0, v1}, Lo/validateWritableKey;-><init>(Lo/validateDoubleValue;I)V

    check-cast v2, Lo/zombifyForRemove;

    .line 17
    sput-object v2, Lo/validateWritableObject;->onMessageChannelReady:Lo/zombifyForRemove;

    return-void

    .line 2087
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expected positive parallelism level, but have "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/validateDoubleValue;-><init>()V

    return-void
.end method

.method public static extraCallback()Lo/zombifyForRemove;
    .locals 1

    .line 17
    sget-object v0, Lo/validateWritableObject;->onMessageChannelReady:Lo/zombifyForRemove;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DefaultDispatcher cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DefaultDispatcher"

    return-object v0
.end method
