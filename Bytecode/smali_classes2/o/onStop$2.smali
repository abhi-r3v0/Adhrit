.class final Lo/onStop$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onStop;->onMessageChannelReady(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field private ICustomTabsCallback$Stub:Ljava/lang/Runnable;

.field extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

.field final synthetic onNavigationEvent:Lo/onStop;

.field final onPostMessage:Lo/onStop$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/onStop;Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lo/onStop$2;->onNavigationEvent:Lo/onStop;

    iput-object p2, p0, Lo/onStop$2;->onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance p1, Lo/onStop$onNavigationEvent;

    invoke-direct {p1}, Lo/onStop$onNavigationEvent;-><init>()V

    iput-object p1, p0, Lo/onStop$2;->onPostMessage:Lo/onStop$onNavigationEvent;

    .line 90
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/onStop$2;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 91
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/onStop$2;->extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance p1, Lo/onStop$2$2;

    invoke-direct {p1, p0}, Lo/onStop$2$2;-><init>(Lo/onStop$2;)V

    iput-object p1, p0, Lo/onStop$2;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final loadTile(II)V
    .locals 1

    const/4 v0, 0x3

    .line 112
    invoke-static {v0, p1, p2}, Lo/onStop$extraCallback;->onMessageChannelReady(III)Lo/onStop$extraCallback;

    move-result-object p1

    .line 3121
    iget-object p2, p0, Lo/onStop$2;->onPostMessage:Lo/onStop$onNavigationEvent;

    invoke-virtual {p2, p1}, Lo/onStop$onNavigationEvent;->ICustomTabsCallback(Lo/onStop$extraCallback;)V

    .line 3131
    iget-object p1, p0, Lo/onStop$2;->extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3132
    iget-object p1, p0, Lo/onStop$2;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lo/onStop$2;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 117
    invoke-static {v1, v0, p1}, Lo/onStop$extraCallback;->ICustomTabsCallback(IILjava/lang/Object;)Lo/onStop$extraCallback;

    move-result-object p1

    .line 4121
    iget-object v1, p0, Lo/onStop$2;->onPostMessage:Lo/onStop$onNavigationEvent;

    invoke-virtual {v1, p1}, Lo/onStop$onNavigationEvent;->ICustomTabsCallback(Lo/onStop$extraCallback;)V

    .line 4131
    iget-object p1, p0, Lo/onStop$2;->extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4132
    iget-object p1, p0, Lo/onStop$2;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lo/onStop$2;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final refresh(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-static {v0, p1, v1}, Lo/onStop$extraCallback;->ICustomTabsCallback(IILjava/lang/Object;)Lo/onStop$extraCallback;

    move-result-object p1

    .line 1126
    iget-object v1, p0, Lo/onStop$2;->onPostMessage:Lo/onStop$onNavigationEvent;

    invoke-virtual {v1, p1}, Lo/onStop$onNavigationEvent;->onPostMessage(Lo/onStop$extraCallback;)V

    .line 1131
    iget-object p1, p0, Lo/onStop$2;->extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1132
    iget-object p1, p0, Lo/onStop$2;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lo/onStop$2;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final updateRange(IIIII)V
    .locals 7

    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 106
    invoke-static/range {v0 .. v6}, Lo/onStop$extraCallback;->onMessageChannelReady(IIIIIILjava/lang/Object;)Lo/onStop$extraCallback;

    move-result-object p1

    .line 2126
    iget-object p2, p0, Lo/onStop$2;->onPostMessage:Lo/onStop$onNavigationEvent;

    invoke-virtual {p2, p1}, Lo/onStop$onNavigationEvent;->onPostMessage(Lo/onStop$extraCallback;)V

    .line 2131
    iget-object p1, p0, Lo/onStop$2;->extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2132
    iget-object p1, p0, Lo/onStop$2;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lo/onStop$2;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
