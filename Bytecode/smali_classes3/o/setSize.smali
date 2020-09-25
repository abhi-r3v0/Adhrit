.class final Lo/setSize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic asBinder:Lo/setChipSpacingResource;

.field private final synthetic extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:Lo/setCounterTextAppearance;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setSize;->asBinder:Lo/setChipSpacingResource;

    iput-object p2, p0, Lo/setSize;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lo/setSize;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lo/setSize;->onMessageChannelReady:Ljava/lang/String;

    iput-object p5, p0, Lo/setSize;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p6, p0, Lo/setSize;->onPostMessage:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 2
    iget-object v0, p0, Lo/setSize;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo/setSize;->asBinder:Lo/setChipSpacingResource;

    invoke-static {v1}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lo/setSize;->asBinder:Lo/setChipSpacingResource;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "(legacy) Failed to get conditional properties; not connected to service"

    iget-object v3, p0, Lo/setSize;->onNavigationEvent:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lo/setSize;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, p0, Lo/setSize;->ICustomTabsCallback:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2, v3, v4, v5}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lo/setSize;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v1, p0, Lo/setSize;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 12
    :cond_0
    :try_start_2
    iget-object v2, p0, Lo/setSize;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    iget-object v2, p0, Lo/setSize;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lo/setSize;->onMessageChannelReady:Ljava/lang/String;

    iget-object v4, p0, Lo/setSize;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v5, p0, Lo/setSize;->onPostMessage:Lo/setCounterTextAppearance;

    .line 14
    invoke-interface {v1, v3, v4, v5}, Lo/setStatusBarForeground;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/setCounterTextAppearance;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v2, p0, Lo/setSize;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lo/setSize;->onNavigationEvent:Ljava/lang/String;

    iget-object v4, p0, Lo/setSize;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, p0, Lo/setSize;->ICustomTabsCallback:Ljava/lang/String;

    .line 17
    invoke-interface {v1, v3, v4, v5}, Lo/setStatusBarForeground;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 19
    :goto_0
    iget-object v1, p0, Lo/setSize;->asBinder:Lo/setChipSpacingResource;

    invoke-static {v1}, Lo/setChipSpacingResource;->onPostMessage(Lo/setChipSpacingResource;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    iget-object v1, p0, Lo/setSize;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 23
    :try_start_4
    iget-object v2, p0, Lo/setSize;->asBinder:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "(legacy) Failed to get conditional properties; remote exception"

    iget-object v4, p0, Lo/setSize;->onNavigationEvent:Ljava/lang/String;

    .line 25
    invoke-static {v4}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lo/setSize;->onMessageChannelReady:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v3, v4, v5, v1}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    iget-object v1, p0, Lo/setSize;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    :try_start_5
    iget-object v1, p0, Lo/setSize;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 32
    :goto_1
    monitor-exit v0

    return-void

    .line 30
    :goto_2
    iget-object v2, p0, Lo/setSize;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 31
    throw v1

    :catchall_1
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
