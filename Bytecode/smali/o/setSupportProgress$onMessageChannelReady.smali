.class public final Lo/setSupportProgress$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSupportProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onPostMessage:Lo/setSupportProgress;


# direct methods
.method public constructor <init>(Lo/setSupportProgress;Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lo/setSupportProgress$onMessageChannelReady;->onPostMessage:Lo/setSupportProgress;

    .line 155
    iput-object p2, p0, Lo/setSupportProgress$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 160
    iget-object v0, p0, Lo/setSupportProgress$onMessageChannelReady;->onPostMessage:Lo/setSupportProgress;

    iget-object v0, v0, Lo/setSupportProgress;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lo/setSupportProgress$onMessageChannelReady;->onPostMessage:Lo/setSupportProgress;

    iget-object v1, v1, Lo/setSupportProgress;->onNavigationEvent:Ljava/util/Map;

    iget-object v2, p0, Lo/setSupportProgress$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setSupportProgress$onMessageChannelReady;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lo/setSupportProgress$onMessageChannelReady;->onPostMessage:Lo/setSupportProgress;

    iget-object v1, v1, Lo/setSupportProgress;->onMessageChannelReady:Ljava/util/Map;

    iget-object v2, p0, Lo/setSupportProgress$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setSupportProgress$ICustomTabsCallback;

    if-eqz v1, :cond_1

    .line 166
    iget-object v2, p0, Lo/setSupportProgress$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v1, v2}, Lo/setSupportProgress$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    const-string v2, "WrkTimerRunnable"

    const-string v3, "Timer with %s is already marked as complete."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lo/setSupportProgress$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 172
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
