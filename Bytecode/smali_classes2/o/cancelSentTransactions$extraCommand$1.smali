.class final Lo/cancelSentTransactions$extraCommand$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cancelSentTransactions$extraCommand;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;


# direct methods
.method constructor <init>(Lo/cancelSentTransactions$extraCommand;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 399
    iget-object v0, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v0, v0, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    iget-object v1, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v1, v1, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v1}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v1

    iget v1, v1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    invoke-static {v0, v1}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;I)Lo/cancelSentTransactions$validateRelationship;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v1, v1, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v1}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v2, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v2, v2, Lo/cancelSentTransactions$extraCommand;->extraCallback:Lo/cancelSentTransactions$requestPostMessageChannel;

    .line 2397
    iget-boolean v2, v2, Lo/cancelSentTransactions$requestPostMessageChannel;->extraCallback:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 410
    :cond_0
    iget-object v2, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v2, v2, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    iget-object v6, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v6, v6, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v6}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v6

    invoke-virtual {v6, v0}, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback(Lo/cancelSentTransactions$validateRelationship;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v6

    invoke-static {v2, v6}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;Lo/cancelSentTransactions$ICustomTabsService$Stub;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 411
    iget-object v2, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v2, v2, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    iget-object v6, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v6, v6, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v6}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v6

    invoke-static {v2, v6}, Lo/cancelSentTransactions;->onPostMessage(Lo/cancelSentTransactions;Lo/cancelSentTransactions$ICustomTabsService$Stub;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v2, v2, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    .line 412
    invoke-static {v2}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v2, v2, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v2}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    move-result-object v2

    .line 3294
    iget-object v6, v2, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget v2, v2, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:I

    if-le v6, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 413
    :cond_2
    iget-object v2, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v2, v2, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    new-instance v4, Lo/cancelSentTransactions$requestPostMessageChannel;

    iget-object v3, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v3, v3, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v3}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v4, v3}, Lo/cancelSentTransactions$requestPostMessageChannel;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$requestPostMessageChannel;)Lo/cancelSentTransactions$requestPostMessageChannel;

    goto :goto_1

    .line 415
    :cond_3
    iget-object v2, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v2, v2, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    iget-object v3, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v3, v3, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v3}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v3

    invoke-virtual {v3}, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback()Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v3

    invoke-static {v2, v3}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;Lo/cancelSentTransactions$ICustomTabsService$Stub;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 416
    iget-object v2, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v2, v2, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v2, v4}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$requestPostMessageChannel;)Lo/cancelSentTransactions$requestPostMessageChannel;

    :goto_1
    const/4 v3, 0x0

    .line 419
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_4

    .line 422
    iget-object v0, v0, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    sget-object v1, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    const-string v2, "Unneeded hedging"

    invoke-virtual {v1, v2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    return-void

    :cond_4
    if-eqz v4, :cond_6

    .line 426
    iget-object v1, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v1, v1, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    .line 427
    invoke-static {v1}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lo/cancelSentTransactions$extraCommand;

    iget-object v3, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v3, v3, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-direct {v2, v3, v4}, Lo/cancelSentTransactions$extraCommand;-><init>(Lo/cancelSentTransactions;Lo/cancelSentTransactions$requestPostMessageChannel;)V

    iget-object v3, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v3, v3, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    .line 429
    invoke-static {v3}, Lo/cancelSentTransactions;->onPostMessage(Lo/cancelSentTransactions;)Lo/getSslCacheDirectory;

    move-result-object v3

    iget-wide v5, v3, Lo/getSslCacheDirectory;->onNavigationEvent:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 427
    invoke-interface {v1, v2, v5, v6, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 3381
    iget-object v2, v4, Lo/cancelSentTransactions$requestPostMessageChannel;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v2

    .line 3382
    :try_start_1
    iget-boolean v3, v4, Lo/cancelSentTransactions$requestPostMessageChannel;->extraCallback:Z

    if-nez v3, :cond_5

    .line 3383
    iput-object v1, v4, Lo/cancelSentTransactions$requestPostMessageChannel;->onMessageChannelReady:Ljava/util/concurrent/Future;

    .line 3385
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 432
    :cond_6
    :goto_3
    iget-object v1, p0, Lo/cancelSentTransactions$extraCommand$1;->onMessageChannelReady:Lo/cancelSentTransactions$extraCommand;

    iget-object v1, v1, Lo/cancelSentTransactions$extraCommand;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v1, v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V

    return-void

    :catchall_1
    move-exception v0

    .line 419
    monitor-exit v1

    throw v0
.end method
