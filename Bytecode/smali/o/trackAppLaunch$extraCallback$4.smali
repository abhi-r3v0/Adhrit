.class final Lo/trackAppLaunch$extraCallback$4;
.super Lo/releaseGlows$onPostMessage$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trackAppLaunch$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/trackAppLaunch$extraCallback;

.field private synthetic onMessageChannelReady:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lo/trackAppLaunch$extraCallback;Landroid/util/Pair;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    iput-object p2, p0, Lo/trackAppLaunch$extraCallback$4;->onMessageChannelReady:Landroid/util/Pair;

    invoke-direct {p0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 346
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    .line 10161
    invoke-virtual {v0}, Lo/trackAppLaunch$extraCallback;->extraCallback()Ljava/util/List;

    move-result-object v0

    .line 346
    invoke-static {v0}, Lo/setDebugLog;->onMessageChannelReady(Ljava/util/List;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 7

    .line 301
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    .line 1161
    iget-object v1, v1, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 302
    iget-object v2, p0, Lo/trackAppLaunch$extraCallback$4;->onMessageChannelReady:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 304
    iget-object v3, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    .line 2161
    iget-object v3, v3, Lo/trackAppLaunch$extraCallback;->onPostMessage:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 304
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    iget-object v3, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    .line 3161
    iget-object v3, v3, Lo/trackAppLaunch$extraCallback;->extraCallback:Lo/setDebugLog;

    move-object v4, v2

    goto :goto_0

    .line 307
    :cond_0
    iget-object v3, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    .line 4161
    invoke-virtual {v3}, Lo/trackAppLaunch$extraCallback;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v3

    .line 308
    iget-object v4, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    .line 5161
    invoke-virtual {v4}, Lo/trackAppLaunch$extraCallback;->extraCallback()Ljava/util/List;

    move-result-object v4

    .line 309
    iget-object v5, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    .line 6161
    invoke-virtual {v5}, Lo/trackAppLaunch$extraCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object v5

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1

    :cond_1
    move-object v3, v2

    move-object v4, v3

    :goto_0
    move-object v5, v4

    .line 312
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-static {v2}, Lo/setDebugLog;->ICustomTabsCallback(Ljava/util/List;)V

    .line 315
    invoke-static {v4}, Lo/setDebugLog;->onMessageChannelReady(Ljava/util/List;)V

    .line 316
    invoke-static {v5}, Lo/setDebugLog;->onPostMessage(Ljava/util/List;)V

    if-eqz v3, :cond_3

    .line 320
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    iget-object v0, v0, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady:Lo/trackAppLaunch;

    .line 7040
    iget-boolean v0, v0, Lo/trackAppLaunch;->onMessageChannelReady:Z

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {v3}, Lo/setDebugLog;->onRelationshipValidationResult()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    sget-object v0, Lo/getInstallVersion;->onMessageChannelReady:Lo/getInstallVersion;

    .line 322
    invoke-virtual {v3, v0}, Lo/setDebugLog;->onMessageChannelReady(Lo/getInstallVersion;)Ljava/util/List;

    move-result-object v0

    .line 323
    invoke-static {v0}, Lo/setDebugLog;->onMessageChannelReady(Ljava/util/List;)V

    goto :goto_2

    .line 7196
    :cond_2
    invoke-virtual {v3}, Lo/setDebugLog;->ICustomTabsService()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/setDebugLog;->onNavigationEvent(Ljava/util/List;)V

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 329
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback$4;->onMessageChannelReady:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lo/waitForCustomerUserId;

    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 312
    monitor-exit v0

    throw v1
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 335
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    .line 8161
    invoke-virtual {v0}, Lo/trackAppLaunch$extraCallback;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lo/setDebugLog;->ICustomTabsCallback(Ljava/util/List;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 340
    iget-object v0, p0, Lo/trackAppLaunch$extraCallback$4;->extraCallback:Lo/trackAppLaunch$extraCallback;

    .line 9161
    invoke-virtual {v0}, Lo/trackAppLaunch$extraCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lo/setDebugLog;->onPostMessage(Ljava/util/List;)V

    return-void
.end method
