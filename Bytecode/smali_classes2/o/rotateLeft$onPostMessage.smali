.class final Lo/rotateLeft$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rotateRight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/rotateLeft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field extraCallback:Z

.field final onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field final synthetic onNavigationEvent:Lo/rotateLeft;


# direct methods
.method public constructor <init>(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 581
    iput-object p1, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 582
    check-cast p2, Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    iput-object p2, p0, Lo/rotateLeft$onPostMessage;->onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "observer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/rotateLeft$onPostMessage;Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 4

    const/4 v0, 0x1

    .line 4686
    iput-boolean v0, p0, Lo/rotateLeft$onPostMessage;->extraCallback:Z

    .line 4687
    iget-object v1, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->ICustomTabsCallback$Stub(Lo/rotateLeft;)Z

    const/4 v1, 0x0

    .line 4689
    :try_start_0
    iget-object v2, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    iget-object v3, p0, Lo/rotateLeft$onPostMessage;->onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    invoke-static {v2, v3, p1, p2}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/emptyMap;Lo/getPredecessorKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4691
    iget-object p2, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p2}, Lo/rotateLeft;->asInterface(Lo/rotateLeft;)V

    .line 4692
    iget-object p0, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p0}, Lo/rotateLeft;->asBinder(Lo/rotateLeft;)Lo/moveRedLeft;

    move-result-object p0

    .line 5516
    sget-object p2, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object p1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6045
    iget-object p0, p0, Lo/moveRedLeft;->onMessageChannelReady:Lo/listen;

    invoke-interface {p0}, Lo/listen;->onPostMessage()V

    return-void

    .line 6047
    :cond_1
    iget-object p0, p0, Lo/moveRedLeft;->onNavigationEvent:Lo/listen;

    invoke-interface {p0}, Lo/listen;->onPostMessage()V

    return-void

    :catchall_0
    move-exception p2

    .line 4691
    iget-object v2, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v2}, Lo/rotateLeft;->asInterface(Lo/rotateLeft;)V

    .line 4692
    iget-object p0, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p0}, Lo/rotateLeft;->asBinder(Lo/rotateLeft;)Lo/moveRedLeft;

    move-result-object p0

    .line 6516
    sget-object v2, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object p1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 7045
    iget-object p0, p0, Lo/moveRedLeft;->onMessageChannelReady:Lo/listen;

    invoke-interface {p0}, Lo/listen;->onPostMessage()V

    goto :goto_2

    .line 7047
    :cond_3
    iget-object p0, p0, Lo/moveRedLeft;->onNavigationEvent:Lo/listen;

    invoke-interface {p0}, Lo/listen;->onPostMessage()V

    .line 4692
    :goto_2
    throw p2
.end method

.method private onPostMessage(Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 3

    .line 713
    iget-object v0, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->onTransact(Lo/rotateLeft;)Lo/saveNode;

    move-result-object v0

    .line 2492
    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 714
    sget-object v2, Lo/emptyMap$onPostMessage;->extraCallback:Lo/emptyMap$onPostMessage;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Lo/saveNode;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    new-instance p1, Lo/assertValidTrackedQuery$onPostMessage;

    invoke-direct {p1}, Lo/assertValidTrackedQuery$onPostMessage;-><init>()V

    .line 720
    iget-object p2, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p2}, Lo/rotateLeft;->onPostMessage(Lo/rotateLeft;)Lo/colorFlip;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/colorFlip;->ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V

    .line 721
    sget-object p2, Lo/emptyMap;->onNavigationEvent:Lo/emptyMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClientCall was cancelled at or after deadline. "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 724
    new-instance p2, Lo/getPredecessorKey;

    invoke-direct {p2}, Lo/getPredecessorKey;-><init>()V

    .line 729
    :cond_0
    invoke-static {}, Lo/freeze;->ICustomTabsCallback$Stub()Lo/isValidKey$ICustomTabsCallback;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->onNavigationEvent(Lo/rotateLeft;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lo/rotateLeft$onPostMessage$onMessageChannelReady;

    invoke-direct {v2, p0, v0, p1, p2}, Lo/rotateLeft$onPostMessage$onMessageChannelReady;-><init>(Lo/rotateLeft$onPostMessage;Lo/isValidKey$ICustomTabsCallback;Lo/emptyMap;Lo/getPredecessorKey;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getPredecessorKey;)V
    .locals 3

    .line 587
    iget-object v0, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 588
    invoke-static {}, Lo/freeze;->ICustomTabsCallback$Stub()Lo/isValidKey$ICustomTabsCallback;

    move-result-object v0

    .line 622
    :try_start_0
    iget-object v1, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->onNavigationEvent(Lo/rotateLeft;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lo/rotateLeft$onPostMessage$onNavigationEvent;

    invoke-direct {v2, p0, v0, p1}, Lo/rotateLeft$onPostMessage$onNavigationEvent;-><init>(Lo/rotateLeft$onPostMessage;Lo/isValidKey$ICustomTabsCallback;Lo/getPredecessorKey;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    iget-object p1, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p1}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw p1
.end method

.method public final extraCallback()V
    .locals 3

    .line 760
    iget-object v0, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->extraCallback(Lo/rotateLeft;)Lo/reverseIterator;

    move-result-object v0

    .line 3244
    iget-object v0, v0, Lo/reverseIterator;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    .line 4116
    sget-object v1, Lo/reverseIterator$ICustomTabsCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    if-eq v0, v1, :cond_1

    sget-object v1, Lo/reverseIterator$ICustomTabsCallback;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 764
    :cond_2
    iget-object v0, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 765
    invoke-static {}, Lo/freeze;->ICustomTabsCallback$Stub()Lo/isValidKey$ICustomTabsCallback;

    move-result-object v0

    .line 796
    :try_start_0
    iget-object v1, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->onNavigationEvent(Lo/rotateLeft;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lo/rotateLeft$onPostMessage$onPostMessage;

    invoke-direct {v2, p0, v0}, Lo/rotateLeft$onPostMessage$onPostMessage;-><init>(Lo/rotateLeft$onPostMessage;Lo/isValidKey$ICustomTabsCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    iget-object v0, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw v0
.end method

.method public final extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 1

    .line 698
    sget-object v0, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    invoke-virtual {p0, p1, v0, p2}, Lo/rotateLeft$onPostMessage;->onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V
    .locals 3

    .line 630
    iget-object v0, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 631
    invoke-static {}, Lo/freeze;->ICustomTabsCallback$Stub()Lo/isValidKey$ICustomTabsCallback;

    move-result-object v0

    .line 676
    :try_start_0
    iget-object v1, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v1}, Lo/rotateLeft;->onNavigationEvent(Lo/rotateLeft;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lo/rotateLeft$onPostMessage$extraCallback;

    invoke-direct {v2, p0, v0, p1}, Lo/rotateLeft$onPostMessage$extraCallback;-><init>(Lo/rotateLeft$onPostMessage;Lo/isValidKey$ICustomTabsCallback;Lo/sendAuthHelper$onMessageChannelReady;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    iget-object p1, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p1}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw p1
.end method

.method public final onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
    .locals 0

    .line 703
    iget-object p2, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p2}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->extraCallback()V

    .line 705
    :try_start_0
    invoke-direct {p0, p1, p3}, Lo/rotateLeft$onPostMessage;->onPostMessage(Lo/emptyMap;Lo/getPredecessorKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    iget-object p1, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p1}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/rotateLeft$onPostMessage;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {p2}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;)Lo/currentStringRemainingChars;

    invoke-static {}, Lo/freeze;->ICustomTabsCallback()V

    throw p1
.end method
