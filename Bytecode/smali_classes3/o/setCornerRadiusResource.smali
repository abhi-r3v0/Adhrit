.class final Lo/setCornerRadiusResource;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private extraCallback:Z

.field private final synthetic onMessageChannelReady:Lo/setShapeAppearanceModel;

.field private final onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/setCheckedIconTint<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setShapeAppearanceModel;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/setCheckedIconTint<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lo/setCornerRadiusResource;->extraCallback:Z

    .line 3
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCornerRadiusResource;->onNavigationEvent:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lo/setCornerRadiusResource;->onPostMessage:Ljava/util/concurrent/BlockingQueue;

    .line 7
    invoke-virtual {p0, p2}, Lo/setCornerRadiusResource;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/InterruptedException;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    invoke-virtual {p0}, Lo/setCornerRadiusResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final onPostMessage()V
    .locals 3

    .line 40
    iget-object v0, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-static {v0}, Lo/setShapeAppearanceModel;->onPostMessage(Lo/setShapeAppearanceModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 41
    :try_start_0
    iget-boolean v1, p0, Lo/setCornerRadiusResource;->extraCallback:Z

    if-nez v1, :cond_2

    .line 42
    iget-object v1, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-static {v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Lo/setShapeAppearanceModel;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 43
    iget-object v1, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-static {v1}, Lo/setShapeAppearanceModel;->onPostMessage(Lo/setShapeAppearanceModel;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 44
    iget-object v1, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-static {v1}, Lo/setShapeAppearanceModel;->extraCallback(Lo/setShapeAppearanceModel;)Lo/setCornerRadiusResource;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-static {v1, v2}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Lo/setShapeAppearanceModel;Lo/setCornerRadiusResource;)Lo/setCornerRadiusResource;

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-static {v1}, Lo/setShapeAppearanceModel;->onMessageChannelReady(Lo/setShapeAppearanceModel;)Lo/setCornerRadiusResource;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-static {v1, v2}, Lo/setShapeAppearanceModel;->onMessageChannelReady(Lo/setShapeAppearanceModel;Lo/setCornerRadiusResource;)Lo/setCornerRadiusResource;

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lo/setCornerRadiusResource;->extraCallback:Z

    .line 50
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 51
    iget-object v0, p0, Lo/setCornerRadiusResource;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lo/setCornerRadiusResource;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 11
    :try_start_0
    iget-object v1, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-static {v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Lo/setShapeAppearanceModel;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-direct {p0, v1}, Lo/setCornerRadiusResource;->ICustomTabsCallback(Ljava/lang/InterruptedException;)V

    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 18
    :goto_1
    iget-object v1, p0, Lo/setCornerRadiusResource;->onPostMessage:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setCheckedIconTint;

    if-eqz v1, :cond_2

    .line 19
    iget-boolean v2, v1, Lo/setCheckedIconTint;->ICustomTabsCallback:Z

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_2

    :cond_1
    const/16 v2, 0xa

    .line 20
    :goto_2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 21
    invoke-virtual {v1}, Lo/setCheckedIconTint;->run()V

    goto :goto_1

    .line 22
    :cond_2
    iget-object v1, p0, Lo/setCornerRadiusResource;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 23
    :try_start_2
    iget-object v2, p0, Lo/setCornerRadiusResource;->onPostMessage:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 24
    iget-object v2, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-static {v2}, Lo/setShapeAppearanceModel;->onNavigationEvent(Lo/setShapeAppearanceModel;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_3

    .line 25
    :try_start_3
    iget-object v2, p0, Lo/setCornerRadiusResource;->onNavigationEvent:Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 28
    :try_start_4
    invoke-direct {p0, v2}, Lo/setCornerRadiusResource;->ICustomTabsCallback(Ljava/lang/InterruptedException;)V

    .line 29
    :cond_3
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 30
    :try_start_5
    iget-object v1, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-static {v1}, Lo/setShapeAppearanceModel;->onPostMessage(Lo/setShapeAppearanceModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 31
    :try_start_6
    iget-object v2, p0, Lo/setCornerRadiusResource;->onPostMessage:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 32
    iget-object v0, p0, Lo/setCornerRadiusResource;->onMessageChannelReady:Lo/setShapeAppearanceModel;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v2, Lo/zziq;->MediaBrowserCompat$CustomActionResultReceiver:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    invoke-direct {p0}, Lo/setCornerRadiusResource;->onPostMessage()V

    .line 34
    :cond_4
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 35
    invoke-direct {p0}, Lo/setCornerRadiusResource;->onPostMessage()V

    return-void

    .line 37
    :cond_5
    :try_start_7
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_1
    move-exception v0

    .line 29
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    .line 38
    invoke-direct {p0}, Lo/setCornerRadiusResource;->onPostMessage()V

    .line 39
    throw v0
.end method
