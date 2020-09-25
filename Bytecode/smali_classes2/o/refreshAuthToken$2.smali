.class final Lo/refreshAuthToken$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/refreshAuthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/refreshAuthToken;


# direct methods
.method constructor <init>(Lo/refreshAuthToken;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 70
    iget-object v0, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/refreshAuthToken;->onNavigationEvent(Lo/refreshAuthToken;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 72
    iget-object v1, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-static {v1}, Lo/refreshAuthToken;->onNavigationEvent(Lo/refreshAuthToken;)Lo/refreshAuthToken$onNavigationEvent;

    move-result-object v1

    sget-object v2, Lo/refreshAuthToken$onNavigationEvent;->extraCallback:Lo/refreshAuthToken$onNavigationEvent;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 74
    iget-object v2, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    sget-object v3, Lo/refreshAuthToken$onNavigationEvent;->onPostMessage:Lo/refreshAuthToken$onNavigationEvent;

    invoke-static {v2, v3}, Lo/refreshAuthToken;->ICustomTabsCallback(Lo/refreshAuthToken;Lo/refreshAuthToken$onNavigationEvent;)Lo/refreshAuthToken$onNavigationEvent;

    .line 76
    iget-object v2, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    iget-object v3, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-static {v3}, Lo/refreshAuthToken;->onPostMessage(Lo/refreshAuthToken;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-object v4, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-static {v4}, Lo/refreshAuthToken;->extraCallback(Lo/refreshAuthToken;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-static {v5}, Lo/refreshAuthToken;->onMessageChannelReady(Lo/refreshAuthToken;)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v2, v3}, Lo/refreshAuthToken;->extraCallback(Lo/refreshAuthToken;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-static {v1}, Lo/refreshAuthToken;->onNavigationEvent(Lo/refreshAuthToken;)Lo/refreshAuthToken$onNavigationEvent;

    move-result-object v1

    sget-object v2, Lo/refreshAuthToken$onNavigationEvent;->onNavigationEvent:Lo/refreshAuthToken$onNavigationEvent;

    if-ne v1, v2, :cond_1

    .line 80
    iget-object v1, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    iget-object v2, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-static {v2}, Lo/refreshAuthToken;->onPostMessage(Lo/refreshAuthToken;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iget-object v3, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    .line 81
    invoke-static {v3}, Lo/refreshAuthToken;->asInterface(Lo/refreshAuthToken;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    .line 82
    invoke-static {v4}, Lo/refreshAuthToken;->onRelationshipValidationResult(Lo/refreshAuthToken;)J

    move-result-wide v4

    iget-object v6, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-static {v6}, Lo/refreshAuthToken;->asBinder(Lo/refreshAuthToken;)Lo/Onboarding$3;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7}, Lo/Onboarding$3;->onPostMessage(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 80
    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v1, v2}, Lo/refreshAuthToken;->onNavigationEvent(Lo/refreshAuthToken;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 84
    iget-object v1, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    sget-object v2, Lo/refreshAuthToken$onNavigationEvent;->extraCallback:Lo/refreshAuthToken$onNavigationEvent;

    invoke-static {v1, v2}, Lo/refreshAuthToken;->ICustomTabsCallback(Lo/refreshAuthToken;Lo/refreshAuthToken$onNavigationEvent;)Lo/refreshAuthToken$onNavigationEvent;

    :cond_1
    const/4 v1, 0x0

    .line 86
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 89
    iget-object v0, p0, Lo/refreshAuthToken$2;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-static {v0}, Lo/refreshAuthToken;->ICustomTabsCallback(Lo/refreshAuthToken;)Lo/refreshAuthToken$onPostMessage;

    move-result-object v0

    invoke-interface {v0}, Lo/refreshAuthToken$onPostMessage;->ICustomTabsCallback()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 86
    monitor-exit v0

    throw v1
.end method
