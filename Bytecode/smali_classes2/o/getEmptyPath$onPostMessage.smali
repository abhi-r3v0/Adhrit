.class public final Lo/getEmptyPath$onPostMessage;
.super Lo/isUserInitiated;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getEmptyPath;->onMessageChannelReady(Lo/nextTransactionOrder;Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H\u0014\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;",
        "label",
        "",
        "invokeSuspend",
        "",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private synthetic ICustomTabsCallback:Ljava/lang/Object;

.field private synthetic onMessageChannelReady:Lo/nextTransactionOrder;

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Lo/setSessionPersistenceKey;Lo/isZombied;Lo/nextTransactionOrder;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, Lo/getEmptyPath$onPostMessage;->onMessageChannelReady:Lo/nextTransactionOrder;

    iput-object p4, p0, Lo/getEmptyPath$onPostMessage;->ICustomTabsCallback:Ljava/lang/Object;

    .line 180
    invoke-direct {p0, p1, p2}, Lo/isUserInitiated;-><init>(Lo/setSessionPersistenceKey;Lo/isZombied;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 184
    iget v0, p0, Lo/getEmptyPath$onPostMessage;->onPostMessage:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 191
    iput v0, p0, Lo/getEmptyPath$onPostMessage;->onPostMessage:I

    .line 2126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 186
    :cond_2
    iput v1, p0, Lo/getEmptyPath$onPostMessage;->onPostMessage:I

    .line 1126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_4

    .line 188
    move-object p1, p0

    check-cast p1, Lo/setSessionPersistenceKey;

    .line 199
    iget-object v0, p0, Lo/getEmptyPath$onPostMessage;->onMessageChannelReady:Lo/nextTransactionOrder;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lo/isDemoHost;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/nextTransactionOrder;

    iget-object v1, p0, Lo/getEmptyPath$onPostMessage;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_4
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method
