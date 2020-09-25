.class final Lo/onDataMessage$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rotateRight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onDataMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# static fields
.field private static synthetic onNavigationEvent:Z


# instance fields
.field private final ICustomTabsCallback:Lo/rotateRight;

.field private volatile onMessageChannelReady:Z

.field private onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 400
    const-class v0, Lo/onDataMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/onDataMessage$extraCallback;->onNavigationEvent:Z

    return-void
.end method

.method public constructor <init>(Lo/rotateRight;)V
    .locals 1

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/onDataMessage$extraCallback;->onPostMessage:Ljava/util/List;

    .line 407
    iput-object p1, p0, Lo/onDataMessage$extraCallback;->ICustomTabsCallback:Lo/rotateRight;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/onDataMessage$extraCallback;)Lo/rotateRight;
    .locals 0

    .line 400
    iget-object p0, p0, Lo/onDataMessage$extraCallback;->ICustomTabsCallback:Lo/rotateRight;

    return-object p0
.end method

.method private onNavigationEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iget-boolean v0, p0, Lo/onDataMessage$extraCallback;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lo/onDataMessage$extraCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 416
    :cond_0
    monitor-exit p0

    .line 417
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 416
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 481
    sget-boolean v0, Lo/onDataMessage$extraCallback;->onNavigationEvent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/onDataMessage$extraCallback;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 482
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    :goto_1
    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v1, p0, Lo/onDataMessage$extraCallback;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lo/onDataMessage$extraCallback;->onPostMessage:Ljava/util/List;

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lo/onDataMessage$extraCallback;->onMessageChannelReady:Z

    .line 488
    monitor-exit p0

    return-void

    .line 494
    :cond_2
    iget-object v1, p0, Lo/onDataMessage$extraCallback;->onPostMessage:Ljava/util/List;

    .line 495
    iput-object v0, p0, Lo/onDataMessage$extraCallback;->onPostMessage:Ljava/util/List;

    .line 496
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 500
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 502
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 496
    monitor-exit p0

    throw v0
.end method

.method public final ICustomTabsCallback(Lo/getPredecessorKey;)V
    .locals 1

    .line 450
    new-instance v0, Lo/onDataMessage$extraCallback$1;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$extraCallback$1;-><init>(Lo/onDataMessage$extraCallback;Lo/getPredecessorKey;)V

    invoke-direct {p0, v0}, Lo/onDataMessage$extraCallback;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    .line 436
    iget-boolean v0, p0, Lo/onDataMessage$extraCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lo/onDataMessage$extraCallback;->ICustomTabsCallback:Lo/rotateRight;

    invoke-interface {v0}, Lo/rotateRight;->extraCallback()V

    return-void

    .line 439
    :cond_0
    new-instance v0, Lo/onDataMessage$extraCallback$2;

    invoke-direct {v0, p0}, Lo/onDataMessage$extraCallback$2;-><init>(Lo/onDataMessage$extraCallback;)V

    invoke-direct {p0, v0}, Lo/onDataMessage$extraCallback;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 1

    .line 460
    new-instance v0, Lo/onDataMessage$extraCallback$5;

    invoke-direct {v0, p0, p1, p2}, Lo/onDataMessage$extraCallback$5;-><init>(Lo/onDataMessage$extraCallback;Lo/emptyMap;Lo/getPredecessorKey;)V

    invoke-direct {p0, v0}, Lo/onDataMessage$extraCallback;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V
    .locals 1

    .line 422
    iget-boolean v0, p0, Lo/onDataMessage$extraCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lo/onDataMessage$extraCallback;->ICustomTabsCallback:Lo/rotateRight;

    invoke-interface {v0, p1}, Lo/rotateRight;->onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V

    return-void

    .line 425
    :cond_0
    new-instance v0, Lo/onDataMessage$extraCallback$4;

    invoke-direct {v0, p0, p1}, Lo/onDataMessage$extraCallback$4;-><init>(Lo/onDataMessage$extraCallback;Lo/sendAuthHelper$onMessageChannelReady;)V

    invoke-direct {p0, v0}, Lo/onDataMessage$extraCallback;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
    .locals 1

    .line 472
    new-instance v0, Lo/onDataMessage$extraCallback$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/onDataMessage$extraCallback$3;-><init>(Lo/onDataMessage$extraCallback;Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    invoke-direct {p0, v0}, Lo/onDataMessage$extraCallback;->onNavigationEvent(Ljava/lang/Runnable;)V

    return-void
.end method
