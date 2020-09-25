.class public final Lo/AFFacebookDeferredDeeplink;
.super Lo/convertToJsonObject;
.source ""


# instance fields
.field private extraCallback:Lo/layoutChildLeft$extraCallback;


# direct methods
.method public constructor <init>(Lo/layoutChildLeft$extraCallback;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/convertToJsonObject;-><init>()V

    .line 23
    iput-object p1, p0, Lo/AFFacebookDeferredDeeplink;->extraCallback:Lo/layoutChildLeft$extraCallback;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()I
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lo/convertToJsonObject;->onNavigationEvent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/AFFacebookDeferredDeeplink;->extraCallback:Lo/layoutChildLeft$extraCallback;

    .line 3065
    iget-object v0, v0, Lo/layoutChildLeft$extraCallback;->onMessageChannelReady:Lo/setSafeMode;

    .line 56
    invoke-interface {v0}, Lo/setSafeMode;->asInterface()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 2

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lo/AFFacebookDeferredDeeplink;->extraCallback:Lo/layoutChildLeft$extraCallback;

    if-nez v0, :cond_0

    .line 41
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lo/AFFacebookDeferredDeeplink;->extraCallback:Lo/layoutChildLeft$extraCallback;

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lo/AFFacebookDeferredDeeplink;->extraCallback:Lo/layoutChildLeft$extraCallback;

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Lo/layoutChildLeft$extraCallback;->onPostMessage()V

    return-void

    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized onMessageChannelReady()I
    .locals 1

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lo/convertToJsonObject;->onNavigationEvent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/AFFacebookDeferredDeeplink;->extraCallback:Lo/layoutChildLeft$extraCallback;

    .line 1065
    iget-object v0, v0, Lo/layoutChildLeft$extraCallback;->onMessageChannelReady:Lo/setSafeMode;

    .line 28
    invoke-interface {v0}, Lo/setSafeMode;->extraCallback()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent()Z
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lo/AFFacebookDeferredDeeplink;->extraCallback:Lo/layoutChildLeft$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage()I
    .locals 1

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lo/convertToJsonObject;->onNavigationEvent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/AFFacebookDeferredDeeplink;->extraCallback:Lo/layoutChildLeft$extraCallback;

    .line 2065
    iget-object v0, v0, Lo/layoutChildLeft$extraCallback;->onMessageChannelReady:Lo/setSafeMode;

    .line 33
    invoke-interface {v0}, Lo/setSafeMode;->onNavigationEvent()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onRelationshipValidationResult()Lo/layoutChildLeft$extraCallback;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lo/AFFacebookDeferredDeeplink;->extraCallback:Lo/layoutChildLeft$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
