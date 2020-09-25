.class final Lo/setRevealInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic onNavigationEvent:Lo/setCounterTextAppearance;

.field private final synthetic onPostMessage:Lo/setChipSpacingResource;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;Ljava/util/concurrent/atomic/AtomicReference;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    iput-object p2, p0, Lo/setRevealInfo;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lo/setRevealInfo;->onNavigationEvent:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setRevealInfo;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    .line 4
    invoke-virtual {v1}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    .line 5
    invoke-virtual {v1}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy()Lo/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lo/zzq;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Analytics storage consent denied; will not get app instance id"

    .line 8
    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->asInterface:Lo/setStrokeWidthResource;

    invoke-virtual {v1, v2}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lo/setRevealInfo;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    iget-object v1, p0, Lo/setRevealInfo;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 14
    :cond_0
    :try_start_2
    iget-object v1, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    invoke-static {v1}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;

    move-result-object v1

    if-nez v1, :cond_1

    .line 16
    iget-object v1, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    iget-object v1, p0, Lo/setRevealInfo;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 19
    :cond_1
    :try_start_4
    iget-object v2, p0, Lo/setRevealInfo;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lo/setRevealInfo;->onNavigationEvent:Lo/setCounterTextAppearance;

    invoke-interface {v1, v3}, Lo/setStatusBarForeground;->onMessageChannelReady(Lo/setCounterTextAppearance;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lo/setRevealInfo;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 22
    iget-object v2, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v2

    iget-object v2, v2, Lo/setBackgroundTintList;->asInterface:Lo/setStrokeWidthResource;

    invoke-virtual {v2, v1}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 24
    :cond_2
    iget-object v1, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    invoke-static {v1}, Lo/setChipSpacingResource;->onPostMessage(Lo/setChipSpacingResource;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    :try_start_5
    iget-object v1, p0, Lo/setRevealInfo;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 28
    :try_start_6
    iget-object v2, p0, Lo/setRevealInfo;->onPostMessage:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 29
    :try_start_7
    iget-object v1, p0, Lo/setRevealInfo;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 33
    :goto_0
    monitor-exit v0

    return-void

    .line 31
    :goto_1
    iget-object v2, p0, Lo/setRevealInfo;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 32
    throw v1

    :catchall_1
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method
