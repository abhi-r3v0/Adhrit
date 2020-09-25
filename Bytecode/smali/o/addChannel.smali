.class public abstract Lo/addChannel;
.super Lo/WorkerParameters;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/WorkerParameters<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/isPreInstalledApp;

.field private final onMessageChannelReady:Lo/AFLogger;


# direct methods
.method protected constructor <init>(Lo/setDeviceTrackingDisabled;Lo/isPreInstalledApp;Lo/AFLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;",
            "Lo/isPreInstalledApp;",
            "Lo/AFLogger;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lo/WorkerParameters;-><init>()V

    .line 41
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 44
    iput-object p2, p0, Lo/addChannel;->ICustomTabsCallback:Lo/isPreInstalledApp;

    .line 45
    iput-object p3, p0, Lo/addChannel;->onMessageChannelReady:Lo/AFLogger;

    .line 1353
    iget-object p3, p2, Lo/setDebugLog;->onMessageChannelReady:Ljava/util/Map;

    .line 1132
    invoke-virtual {p0, p3}, Lo/addChannel;->onPostMessage(Ljava/util/Map;)V

    .line 47
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 50
    iget-object p3, p0, Lo/addChannel;->onMessageChannelReady:Lo/AFLogger;

    iget-object v0, p0, Lo/addChannel;->ICustomTabsCallback:Lo/isPreInstalledApp;

    invoke-interface {p3, v0}, Lo/AFLogger;->extraCallback(Lo/setPreinstallAttribution;)V

    .line 51
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 54
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 2067
    new-instance p3, Lo/addChannel$2;

    invoke-direct {p3, p0}, Lo/addChannel$2;-><init>(Lo/addChannel;)V

    .line 57
    invoke-interface {p1, p3, p2}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    .line 58
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 61
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method

.method static synthetic extraCallback(Lo/addChannel;Ljava/lang/Throwable;)V
    .locals 1

    .line 4105
    iget-object v0, p0, Lo/addChannel;->ICustomTabsCallback:Lo/isPreInstalledApp;

    .line 5101
    invoke-interface {v0}, Lo/setPreinstallAttribution;->newSession()Ljava/util/Map;

    move-result-object v0

    .line 4105
    invoke-super {p0, p1, v0}, Lo/WorkerParameters;->extraCallback(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4106
    iget-object v0, p0, Lo/addChannel;->onMessageChannelReady:Lo/AFLogger;

    iget-object p0, p0, Lo/addChannel;->ICustomTabsCallback:Lo/isPreInstalledApp;

    invoke-interface {v0, p0, p1}, Lo/AFLogger;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final asInterface()Z
    .locals 2

    .line 121
    invoke-super {p0}, Lo/WorkerParameters;->asInterface()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    invoke-super {p0}, Lo/WorkerParameters;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lo/addChannel;->onMessageChannelReady:Lo/AFLogger;

    iget-object v1, p0, Lo/addChannel;->ICustomTabsCallback:Lo/isPreInstalledApp;

    invoke-interface {v0, v1}, Lo/AFLogger;->ICustomTabsCallback(Lo/setPreinstallAttribution;)V

    .line 126
    iget-object v0, p0, Lo/addChannel;->ICustomTabsCallback:Lo/isPreInstalledApp;

    .line 3196
    invoke-virtual {v0}, Lo/setDebugLog;->ICustomTabsService()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/setDebugLog;->onNavigationEvent(Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected extraCallback(Ljava/lang/Object;ILo/setPreinstallAttribution;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3101
    :goto_0
    invoke-interface {p3}, Lo/setPreinstallAttribution;->newSession()Ljava/util/Map;

    move-result-object p2

    .line 93
    invoke-super {p0, p1, v0, p2}, Lo/WorkerParameters;->onNavigationEvent(Ljava/lang/Object;ZLjava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 95
    iget-object p1, p0, Lo/addChannel;->onMessageChannelReady:Lo/AFLogger;

    iget-object p2, p0, Lo/addChannel;->ICustomTabsCallback:Lo/isPreInstalledApp;

    invoke-interface {p1, p2}, Lo/AFLogger;->onNavigationEvent(Lo/setPreinstallAttribution;)V

    :cond_1
    return-void
.end method

.method final declared-synchronized onRelationshipValidationResult()V
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lo/WorkerParameters;->onPostMessage()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 112
    monitor-exit p0

    return-void

    .line 3162
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
