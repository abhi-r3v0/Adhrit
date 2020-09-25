.class final Lo/setLastBaselineToBottomHeight$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLastBaselineToBottomHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:Z

.field private onNavigationEvent:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final declared-synchronized ICustomTabsCallback()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 658
    :try_start_0
    iput-boolean v0, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->ICustomTabsCallback:Z

    .line 659
    iput-boolean v0, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->onNavigationEvent:Z

    .line 660
    iput-boolean v0, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->extraCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized extraCallback()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 648
    :try_start_0
    iput-boolean v0, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->ICustomTabsCallback:Z

    .line 2664
    iget-boolean v1, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->extraCallback:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->onNavigationEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 649
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized onMessageChannelReady()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 653
    :try_start_0
    iput-boolean v0, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->extraCallback:Z

    if-nez v0, :cond_0

    .line 3664
    iget-boolean v1, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->onNavigationEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 654
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized onPostMessage(Z)Z
    .locals 1

    monitor-enter p0

    const/4 p1, 0x1

    .line 643
    :try_start_0
    iput-boolean p1, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->onNavigationEvent:Z

    .line 1664
    iget-boolean v0, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->extraCallback:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lo/setLastBaselineToBottomHeight$extraCallback;->onNavigationEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 644
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
