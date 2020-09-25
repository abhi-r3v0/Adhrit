.class public final Lo/removeTrackedQuery;
.super Lo/ensureCompleteTrackedQuery;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\'\u0010\u0004\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u00a2\u0006\u0002\u0008\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\r\u001a\u00020\u0008H\u0014R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/LazyStandaloneCoroutine;",
        "Lkotlinx/coroutines/StandaloneCoroutine;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V",
        "continuation",
        "onStart",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/setSessionPersistenceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/isZombied;Lo/nextTransactionOrder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isZombied;",
            "Lo/nextTransactionOrder<",
            "-",
            "Lo/isFromUser;",
            "-",
            "Lo/setSessionPersistenceKey<",
            "-",
            "Lo/addWrites;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, v0}, Lo/ensureCompleteTrackedQuery;-><init>(Lo/isZombied;Z)V

    .line 198
    move-object p1, p0

    check-cast p1, Lo/setSessionPersistenceKey;

    invoke-static {p2, p0, p1}, Lo/onZombied;->onMessageChannelReady(Lo/nextTransactionOrder;Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    iput-object p1, p0, Lo/removeTrackedQuery;->onPostMessage:Lo/setSessionPersistenceKey;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback$Stub()V
    .locals 3

    .line 201
    iget-object v0, p0, Lo/removeTrackedQuery;->onPostMessage:Lo/setSessionPersistenceKey;

    move-object v1, p0

    check-cast v1, Lo/setSessionPersistenceKey;

    .line 1035
    :try_start_0
    invoke-static {v0}, Lo/onZombied;->onNavigationEvent(Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object v0

    sget-object v2, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    sget-object v2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-static {v2}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lo/shouldCheckCacheSize;->onNavigationEvent(Lo/setSessionPersistenceKey;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1067
    sget-object v2, Lo/emptyWrite;->extraCallback:Lo/emptyWrite$onPostMessage;

    const-string v2, "exception"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    new-instance v2, Lo/emptyWrite$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/emptyWrite$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    .line 1067
    invoke-static {v2}, Lo/emptyWrite;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/setSessionPersistenceKey;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method
