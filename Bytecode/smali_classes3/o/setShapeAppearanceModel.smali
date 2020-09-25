.class public final Lo/setShapeAppearanceModel;
.super Lo/setChipIconEnabled;
.source ""


# static fields
.field private static final asInterface:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lo/setCheckedIconTint<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Ljava/lang/Object;

.field private volatile asBinder:Z

.field private extraCallback:Lo/setCornerRadiusResource;

.field private final onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/setCheckedIconTint<",
            "*>;>;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/setCornerRadiusResource;

.field private final onPostMessage:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final onRelationshipValidationResult:Ljava/util/concurrent/Semaphore;

.field private final onTransact:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lo/setShapeAppearanceModel;->asInterface:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo/setChipIconEnabled;-><init>(Lo/setCheckedIcon;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setShapeAppearanceModel;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lo/setShapeAppearanceModel;->onRelationshipValidationResult:Ljava/util/concurrent/Semaphore;

    .line 4
    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lo/setShapeAppearanceModel;->ICustomTabsCallback:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lo/setShapeAppearanceModel;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    .line 6
    new-instance p1, Lo/setDragged;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lo/setDragged;-><init>(Lo/setShapeAppearanceModel;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setShapeAppearanceModel;->onPostMessage:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 7
    new-instance p1, Lo/setDragged;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lo/setDragged;-><init>(Lo/setShapeAppearanceModel;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setShapeAppearanceModel;->onTransact:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setShapeAppearanceModel;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 83
    iget-object p0, p0, Lo/setShapeAppearanceModel;->onRelationshipValidationResult:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/setShapeAppearanceModel;Lo/setCornerRadiusResource;)Lo/setCornerRadiusResource;
    .locals 0

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lo/setShapeAppearanceModel;->onNavigationEvent:Lo/setCornerRadiusResource;

    return-object p1
.end method

.method static synthetic extraCallback(Lo/setShapeAppearanceModel;)Lo/setCornerRadiusResource;
    .locals 0

    .line 86
    iget-object p0, p0, Lo/setShapeAppearanceModel;->onNavigationEvent:Lo/setCornerRadiusResource;

    return-object p0
.end method

.method private final extraCallback(Lo/setCheckedIconTint;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCheckedIconTint<",
            "*>;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/setShapeAppearanceModel;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lo/setShapeAppearanceModel;->ICustomTabsCallback:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lo/setShapeAppearanceModel;->onNavigationEvent:Lo/setCornerRadiusResource;

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Lo/setCornerRadiusResource;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Lo/setShapeAppearanceModel;->ICustomTabsCallback:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Lo/setCornerRadiusResource;-><init>(Lo/setShapeAppearanceModel;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lo/setShapeAppearanceModel;->onNavigationEvent:Lo/setCornerRadiusResource;

    .line 57
    iget-object v1, p0, Lo/setShapeAppearanceModel;->onPostMessage:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v1}, Lo/setCornerRadiusResource;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 58
    iget-object p1, p0, Lo/setShapeAppearanceModel;->onNavigationEvent:Lo/setCornerRadiusResource;

    invoke-virtual {p1}, Lo/setCornerRadiusResource;->start()V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lo/setShapeAppearanceModel;->onNavigationEvent:Lo/setCornerRadiusResource;

    invoke-virtual {p1}, Lo/setCornerRadiusResource;->ICustomTabsCallback()V

    .line 60
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic onMessageChannelReady(Lo/setShapeAppearanceModel;)Lo/setCornerRadiusResource;
    .locals 0

    .line 88
    iget-object p0, p0, Lo/setShapeAppearanceModel;->extraCallback:Lo/setCornerRadiusResource;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/setShapeAppearanceModel;Lo/setCornerRadiusResource;)Lo/setCornerRadiusResource;
    .locals 0

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lo/setShapeAppearanceModel;->extraCallback:Lo/setCornerRadiusResource;

    return-object p1
.end method

.method static synthetic onNavigationEvent(Lo/setShapeAppearanceModel;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lo/setShapeAppearanceModel;->asBinder:Z

    return p0
.end method

.method static synthetic onPostMessage(Lo/setShapeAppearanceModel;)Ljava/lang/Object;
    .locals 0

    .line 85
    iget-object p0, p0, Lo/setShapeAppearanceModel;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onRelationshipValidationResult()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 90
    sget-object v0, Lo/setShapeAppearanceModel;->asInterface:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0, p5}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Timed out waiting for "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, p4

    :goto_0
    invoke-virtual {p2, p3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_1
    return-object p1

    .line 42
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Interrupted waiting for "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, p4

    :goto_1
    invoke-virtual {p2, p3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 43
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 44
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public final ICustomTabsCallback(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 18
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v0, Lo/setCheckedIconTint;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lo/setCheckedIconTint;-><init>(Lo/setShapeAppearanceModel;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lo/setShapeAppearanceModel;->onNavigationEvent:Lo/setCornerRadiusResource;

    if-ne p1, v1, :cond_1

    .line 21
    iget-object p1, p0, Lo/setShapeAppearanceModel;->ICustomTabsCallback:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 23
    :cond_0
    invoke-virtual {v0}, Lo/setCheckedIconTint;->run()V

    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0, v0}, Lo/setShapeAppearanceModel;->extraCallback(Lo/setCheckedIconTint;)V

    :goto_0
    return-object v0
.end method

.method public final ICustomTabsCallback()V
    .locals 2

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lo/setShapeAppearanceModel;->onNavigationEvent:Lo/setCornerRadiusResource;

    if-ne v0, v1, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 34
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lo/setCheckedIconTint;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lo/setCheckedIconTint;-><init>(Lo/setShapeAppearanceModel;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lo/setShapeAppearanceModel;->extraCallback(Lo/setCheckedIconTint;)V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 74
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 76
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()V
    .locals 2

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lo/setShapeAppearanceModel;->extraCallback:Lo/setCornerRadiusResource;

    if-ne v0, v1, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 62
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lo/setCheckedIconTint;

    const/4 v1, 0x0

    const-string v2, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lo/setCheckedIconTint;-><init>(Lo/setShapeAppearanceModel;Ljava/lang/Runnable;ZLjava/lang/String;)V

    .line 64
    iget-object p1, p0, Lo/setShapeAppearanceModel;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter p1

    .line 65
    :try_start_0
    iget-object v1, p0, Lo/setShapeAppearanceModel;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lo/setShapeAppearanceModel;->extraCallback:Lo/setCornerRadiusResource;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lo/setCornerRadiusResource;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Lo/setShapeAppearanceModel;->onMessageChannelReady:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Lo/setCornerRadiusResource;-><init>(Lo/setShapeAppearanceModel;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lo/setShapeAppearanceModel;->extraCallback:Lo/setCornerRadiusResource;

    .line 68
    iget-object v1, p0, Lo/setShapeAppearanceModel;->onTransact:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Lo/setCornerRadiusResource;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 69
    iget-object v0, p0, Lo/setShapeAppearanceModel;->extraCallback:Lo/setCornerRadiusResource;

    invoke-virtual {v0}, Lo/setCornerRadiusResource;->start()V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lo/setShapeAppearanceModel;->extraCallback:Lo/setCornerRadiusResource;

    invoke-virtual {v0}, Lo/setCornerRadiusResource;->ICustomTabsCallback()V

    .line 71
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 80
    invoke-super {p0}, Lo/setChipIconEnabled;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 73
    invoke-super {p0}, Lo/setChipIconEnabled;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 79
    invoke-super {p0}, Lo/setChipIconEnabled;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 77
    invoke-super {p0}, Lo/setChipIconEnabled;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 72
    invoke-super {p0}, Lo/setChipIconEnabled;->onMessageChannelReady()V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 50
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lo/setCheckedIconTint;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lo/setCheckedIconTint;-><init>(Lo/setShapeAppearanceModel;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lo/setShapeAppearanceModel;->extraCallback(Lo/setCheckedIconTint;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 27
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lo/setCheckedIconTint;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lo/setCheckedIconTint;-><init>(Lo/setShapeAppearanceModel;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lo/setShapeAppearanceModel;->onNavigationEvent:Lo/setCornerRadiusResource;

    if-ne p1, v1, :cond_0

    .line 30
    invoke-virtual {v0}, Lo/setCheckedIconTint;->run()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, v0}, Lo/setShapeAppearanceModel;->extraCallback(Lo/setCheckedIconTint;)V

    :goto_0
    return-object v0
.end method

.method protected final onPostMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()Z
    .locals 2

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lo/setShapeAppearanceModel;->onNavigationEvent:Lo/setCornerRadiusResource;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 78
    invoke-super {p0}, Lo/setChipIconEnabled;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 81
    invoke-super {p0}, Lo/setChipIconEnabled;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 82
    invoke-super {p0}, Lo/setChipIconEnabled;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 75
    invoke-super {p0}, Lo/setChipIconEnabled;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
