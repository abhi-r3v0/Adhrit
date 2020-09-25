.class final Lo/onDataPush$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataPush;->onPostMessage(Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onDataPush;

.field private synthetic onMessageChannelReady:Ljava/lang/Object;

.field private synthetic onNavigationEvent:Lo/onDataPush$extraCallback;

.field private synthetic onPostMessage:Lo/onDataPush$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/onDataPush;Lo/onDataPush$extraCallback;Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lo/onDataPush$1;->extraCallback:Lo/onDataPush;

    iput-object p2, p0, Lo/onDataPush$1;->onNavigationEvent:Lo/onDataPush$extraCallback;

    iput-object p3, p0, Lo/onDataPush$1;->onPostMessage:Lo/onDataPush$onNavigationEvent;

    iput-object p4, p0, Lo/onDataPush$1;->onMessageChannelReady:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 135
    iget-object v0, p0, Lo/onDataPush$1;->extraCallback:Lo/onDataPush;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lo/onDataPush$1;->onNavigationEvent:Lo/onDataPush$extraCallback;

    iget v1, v1, Lo/onDataPush$extraCallback;->ICustomTabsCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 139
    :try_start_1
    iget-object v1, p0, Lo/onDataPush$1;->onPostMessage:Lo/onDataPush$onNavigationEvent;

    iget-object v2, p0, Lo/onDataPush$1;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lo/onDataPush$onNavigationEvent;->extraCallback(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    iget-object v1, p0, Lo/onDataPush$1;->extraCallback:Lo/onDataPush;

    invoke-static {v1}, Lo/onDataPush;->onPostMessage(Lo/onDataPush;)Ljava/util/IdentityHashMap;

    move-result-object v1

    iget-object v2, p0, Lo/onDataPush$1;->onPostMessage:Lo/onDataPush$onNavigationEvent;

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lo/onDataPush$1;->extraCallback:Lo/onDataPush;

    invoke-static {v1}, Lo/onDataPush;->onPostMessage(Lo/onDataPush;)Ljava/util/IdentityHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lo/onDataPush$1;->extraCallback:Lo/onDataPush;

    invoke-static {v1}, Lo/onDataPush;->extraCallback(Lo/onDataPush;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 144
    iget-object v1, p0, Lo/onDataPush$1;->extraCallback:Lo/onDataPush;

    invoke-static {v1}, Lo/onDataPush;->onNavigationEvent(Lo/onDataPush;)Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 141
    iget-object v2, p0, Lo/onDataPush$1;->extraCallback:Lo/onDataPush;

    invoke-static {v2}, Lo/onDataPush;->onPostMessage(Lo/onDataPush;)Ljava/util/IdentityHashMap;

    move-result-object v2

    iget-object v3, p0, Lo/onDataPush$1;->onPostMessage:Lo/onDataPush$onNavigationEvent;

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v2, p0, Lo/onDataPush$1;->extraCallback:Lo/onDataPush;

    invoke-static {v2}, Lo/onDataPush;->onPostMessage(Lo/onDataPush;)Ljava/util/IdentityHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lo/onDataPush$1;->extraCallback:Lo/onDataPush;

    invoke-static {v2}, Lo/onDataPush;->extraCallback(Lo/onDataPush;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 144
    iget-object v2, p0, Lo/onDataPush$1;->extraCallback:Lo/onDataPush;

    invoke-static {v2}, Lo/onDataPush;->onNavigationEvent(Lo/onDataPush;)Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    throw v1

    .line 148
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
