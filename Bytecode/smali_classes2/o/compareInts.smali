.class public final Lo/compareInts;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001a\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"$\u0010\u0002\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\",\u0010\u0006\u001a \u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00070\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\" \u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\" \u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "ZERO",
        "Lkotlinx/coroutines/internal/Symbol;",
        "countAll",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "findOne",
        "Lkotlinx/coroutines/ThreadContextElement;",
        "restoreState",
        "Lkotlinx/coroutines/internal/ThreadState;",
        "updateState",
        "restoreThreadContext",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "oldState",
        "threadContextElements",
        "updateThreadContext",
        "countOrElement",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/nextTransactionOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nextTransactionOrder<",
            "Lo/verifyCache<",
            "*>;",
            "Lo/isZombied$onNavigationEvent;",
            "Lo/verifyCache<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final extraCallback:Lo/AppCompatDrawableManager;

.field private static final onMessageChannelReady:Lo/nextTransactionOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nextTransactionOrder<",
            "Ljava/lang/Object;",
            "Lo/isZombied$onNavigationEvent;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Lo/nextTransactionOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nextTransactionOrder<",
            "Lo/isValidPathString;",
            "Lo/isZombied$onNavigationEvent;",
            "Lo/isValidPathString;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/nextTransactionOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nextTransactionOrder<",
            "Lo/isValidPathString;",
            "Lo/isZombied$onNavigationEvent;",
            "Lo/isValidPathString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lo/AppCompatDrawableManager;

    const-string v1, "ZERO"

    invoke-direct {v0, v1}, Lo/AppCompatDrawableManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/compareInts;->extraCallback:Lo/AppCompatDrawableManager;

    .line 26
    sget-object v0, Lo/compareInts$ICustomTabsCallback;->extraCallback:Lo/compareInts$ICustomTabsCallback;

    check-cast v0, Lo/nextTransactionOrder;

    sput-object v0, Lo/compareInts;->onMessageChannelReady:Lo/nextTransactionOrder;

    .line 36
    sget-object v0, Lo/compareInts$onPostMessage;->extraCallback:Lo/compareInts$onPostMessage;

    check-cast v0, Lo/nextTransactionOrder;

    sput-object v0, Lo/compareInts;->ICustomTabsCallback:Lo/nextTransactionOrder;

    .line 43
    sget-object v0, Lo/compareInts$extraCallback;->ICustomTabsCallback:Lo/compareInts$extraCallback;

    check-cast v0, Lo/nextTransactionOrder;

    sput-object v0, Lo/compareInts;->onPostMessage:Lo/nextTransactionOrder;

    .line 52
    sget-object v0, Lo/compareInts$onMessageChannelReady;->onPostMessage:Lo/compareInts$onMessageChannelReady;

    check-cast v0, Lo/nextTransactionOrder;

    sput-object v0, Lo/compareInts;->onNavigationEvent:Lo/nextTransactionOrder;

    return-void
.end method

.method public static final ICustomTabsCallback(Lo/isZombied;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lo/compareInts;->onMessageChannelReady:Lo/nextTransactionOrder;

    invoke-interface {p0, v0, v1}, Lo/isZombied;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    return-object p0
.end method

.method public static final ICustomTabsCallback(Lo/isZombied;Ljava/lang/Object;)V
    .locals 2

    .line 85
    sget-object v0, Lo/compareInts;->extraCallback:Lo/AppCompatDrawableManager;

    if-ne p1, v0, :cond_0

    return-void

    .line 86
    :cond_0
    instance-of v0, p1, Lo/isValidPathString;

    if-eqz v0, :cond_1

    .line 88
    move-object v0, p1

    check-cast v0, Lo/isValidPathString;

    const/4 v1, 0x0

    .line 2020
    iput v1, v0, Lo/isValidPathString;->extraCallback:I

    .line 89
    sget-object v0, Lo/compareInts;->onNavigationEvent:Lo/nextTransactionOrder;

    invoke-interface {p0, p1, v0}, Lo/isZombied;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 94
    sget-object v1, Lo/compareInts;->ICustomTabsCallback:Lo/nextTransactionOrder;

    invoke-interface {p0, v0, v1}, Lo/isZombied;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Lo/verifyCache;

    .line 95
    invoke-interface {p0, p1}, Lo/verifyCache;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void

    .line 94
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final onNavigationEvent(Lo/isZombied;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1060
    sget-object p1, Lo/compareInts;->onMessageChannelReady:Lo/nextTransactionOrder;

    invoke-interface {p0, v0, p1}, Lo/isZombied;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    if-ne p1, v0, :cond_1

    .line 68
    sget-object p0, Lo/compareInts;->extraCallback:Lo/AppCompatDrawableManager;

    return-object p0

    .line 70
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Lo/isValidPathString;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lo/isValidPathString;-><init>(Lo/isZombied;I)V

    sget-object p1, Lo/compareInts;->onPostMessage:Lo/nextTransactionOrder;

    invoke-interface {p0, v0, p1}, Lo/isZombied;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    .line 77
    check-cast p1, Lo/verifyCache;

    .line 78
    invoke-interface {p1, p0}, Lo/verifyCache;->onMessageChannelReady(Lo/isZombied;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 77
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
