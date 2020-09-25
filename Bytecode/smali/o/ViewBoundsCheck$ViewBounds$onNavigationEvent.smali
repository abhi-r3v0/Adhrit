.class final Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ViewBoundsCheck$ViewBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:J

.field private onNavigationEvent:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->ICustomTabsCallback:Z

    const-wide/16 v0, -0x1

    .line 93
    iput-wide v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->onNavigationEvent:J

    .line 94
    iput-wide v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()J
    .locals 2

    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ICustomTabsCallback(JJ)V
    .locals 0

    monitor-enter p0

    .line 107
    :try_start_0
    iput-wide p3, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback:J

    .line 108
    iput-wide p1, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->onNavigationEvent:J

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->ICustomTabsCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback()J
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    iget-wide v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->onNavigationEvent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 101
    :try_start_0
    iput-boolean v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->ICustomTabsCallback:Z

    const-wide/16 v0, -0x1

    .line 102
    iput-wide v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback:J

    .line 103
    iput-wide v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->onNavigationEvent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage(JJ)V
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 114
    iget-wide v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->onNavigationEvent:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->onNavigationEvent:J

    .line 115
    iget-wide p1, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->extraCallback:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage()Z
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lo/ViewBoundsCheck$ViewBounds$onNavigationEvent;->ICustomTabsCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
