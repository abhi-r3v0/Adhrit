.class final Lo/IResultReceiver$Stub$Proxy$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IResultReceiver$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onPostMessage:Lo/IResultReceiver$Stub$Proxy;


# direct methods
.method constructor <init>(Lo/IResultReceiver$Stub$Proxy;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lo/IResultReceiver$Stub$Proxy$ICustomTabsCallback;->onPostMessage:Lo/IResultReceiver$Stub$Proxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 335
    iget-object v0, p0, Lo/IResultReceiver$Stub$Proxy$ICustomTabsCallback;->onPostMessage:Lo/IResultReceiver$Stub$Proxy;

    .line 1199
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    const-string v5, "Checking if commands are complete."

    invoke-virtual {v1, v2, v5, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1318
    iget-object v1, v0, Lo/IResultReceiver$Stub$Proxy;->asBinder:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 1202
    iget-object v1, v0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    monitor-enter v1

    .line 1219
    :try_start_0
    iget-object v2, v0, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 1220
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v2

    sget-object v4, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    const-string v5, "Removing command %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v5, v6}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1221
    iget-object v2, v0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iget-object v4, v0, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1224
    iput-object v2, v0, Lo/IResultReceiver$Stub$Proxy;->asInterface:Landroid/content/Intent;

    goto :goto_0

    .line 1222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Dequeue-d command is not the first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_1
    :goto_0
    iget-object v2, v0, Lo/IResultReceiver$Stub$Proxy;->onPostMessage:Lo/supportShouldUpRecreateTask;

    invoke-interface {v2}, Lo/supportShouldUpRecreateTask;->onMessageChannelReady()Lo/onSupportActionModeFinished;

    move-result-object v2

    .line 1227
    iget-object v4, v0, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback$Stub:Lo/send;

    invoke-virtual {v4}, Lo/send;->extraCallback()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    .line 1228
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1229
    invoke-virtual {v2}, Lo/onSupportActionModeFinished;->extraCallback()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1233
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v2

    sget-object v4, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    const-string v5, "No more commands & intents."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v5, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1234
    iget-object v2, v0, Lo/IResultReceiver$Stub$Proxy;->getInterfaceDescriptor:Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;

    if-eqz v2, :cond_3

    .line 1235
    iget-object v0, v0, Lo/IResultReceiver$Stub$Proxy;->getInterfaceDescriptor:Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;

    invoke-interface {v0}, Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;->onPostMessage()V

    goto :goto_1

    .line 1237
    :cond_2
    iget-object v2, v0, Lo/IResultReceiver$Stub$Proxy;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1239
    invoke-virtual {v0}, Lo/IResultReceiver$Stub$Proxy;->extraCallback()V

    .line 1241
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1319
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Needs to be invoked on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
