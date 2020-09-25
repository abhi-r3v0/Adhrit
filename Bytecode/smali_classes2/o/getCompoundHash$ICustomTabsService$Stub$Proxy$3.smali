.class final Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;


# direct methods
.method constructor <init>(Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;)V
    .locals 0

    .line 1615
    iput-object p1, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$3;->ICustomTabsCallback:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1618
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$3;->ICustomTabsCallback:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    .line 2624
    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    iget-object v1, v1, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v1}, Lo/unionWith;->onPostMessage()V

    .line 2625
    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2627
    iput-boolean v2, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Z

    return-void

    .line 2630
    :cond_0
    iget-boolean v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Z

    if-eqz v1, :cond_2

    .line 2631
    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v1}, Lo/getCompoundHash;->MediaBrowserCompat(Lo/getCompoundHash;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->extraCallback:Lo/unionWith$extraCallback;

    if-eqz v1, :cond_1

    .line 2634
    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->extraCallback:Lo/unionWith$extraCallback;

    .line 3206
    iget-object v3, v1, Lo/unionWith$extraCallback;->ICustomTabsCallback:Lo/unionWith$ICustomTabsCallback;

    iput-boolean v2, v3, Lo/unionWith$ICustomTabsCallback;->onNavigationEvent:Z

    .line 3207
    iget-object v1, v1, Lo/unionWith$extraCallback;->onPostMessage:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v1, 0x0

    .line 2635
    iput-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->extraCallback:Lo/unionWith$extraCallback;

    goto :goto_0

    :cond_1
    return-void

    .line 2641
    :cond_2
    iput-boolean v2, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Z

    .line 2651
    :goto_0
    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v1}, Lo/getCompoundHash;->MediaBrowserCompat(Lo/getCompoundHash;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2659
    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    iget-object v2, v1, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v3, Lo/compareAndPut;

    new-instance v1, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onNavigationEvent;

    invoke-direct {v1, v0}, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onNavigationEvent;-><init>(Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;)V

    invoke-direct {v3, v1}, Lo/compareAndPut;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    .line 2662
    invoke-static {v1}, Lo/getCompoundHash;->postMessage(Lo/getCompoundHash;)Lo/fixUp;

    move-result-object v1

    invoke-interface {v1}, Lo/fixUp;->onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 2659
    invoke-virtual/range {v2 .. v7}, Lo/unionWith;->extraCallback(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/unionWith$extraCallback;

    move-result-object v1

    iput-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->extraCallback:Lo/unionWith$extraCallback;

    return-void

    .line 2667
    :cond_3
    iget-object v0, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    sget-object v1, Lo/getCompoundHash;->onNavigationEvent:Lo/emptyMap;

    .line 3374
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v3, Lo/shouldIncludeCompoundHash$1;

    invoke-direct {v3, v0, v1}, Lo/shouldIncludeCompoundHash$1;-><init>(Lo/shouldIncludeCompoundHash;Lo/emptyMap;)V

    invoke-virtual {v2, v3}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
