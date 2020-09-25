.class public Lo/removeQueueItemAt;
.super Landroid/widget/ProgressBar;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Runnable;

.field private final asBinder:Ljava/lang/Runnable;

.field extraCallback:J

.field onMessageChannelReady:Z

.field onNavigationEvent:Z

.field onPostMessage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lo/removeQueueItemAt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 37
    iput-wide p1, p0, Lo/removeQueueItemAt;->extraCallback:J

    .line 39
    iput-boolean v0, p0, Lo/removeQueueItemAt;->onPostMessage:Z

    .line 41
    iput-boolean v0, p0, Lo/removeQueueItemAt;->onNavigationEvent:Z

    .line 43
    iput-boolean v0, p0, Lo/removeQueueItemAt;->onMessageChannelReady:Z

    .line 45
    new-instance p1, Lo/removeQueueItemAt$5;

    invoke-direct {p1, p0}, Lo/removeQueueItemAt$5;-><init>(Lo/removeQueueItemAt;)V

    iput-object p1, p0, Lo/removeQueueItemAt;->ICustomTabsCallback:Ljava/lang/Runnable;

    .line 55
    new-instance p1, Lo/removeQueueItemAt$1;

    invoke-direct {p1, p0}, Lo/removeQueueItemAt$1;-><init>(Lo/removeQueueItemAt;)V

    iput-object p1, p0, Lo/removeQueueItemAt;->asBinder:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x1

    .line 98
    :try_start_0
    iput-boolean v0, p0, Lo/removeQueueItemAt;->onMessageChannelReady:Z

    .line 99
    iget-object v1, p0, Lo/removeQueueItemAt;->asBinder:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lo/removeQueueItemAt;->onNavigationEvent:Z

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lo/removeQueueItemAt;->extraCallback:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 102
    iget-wide v5, p0, Lo/removeQueueItemAt;->extraCallback:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-boolean v5, p0, Lo/removeQueueItemAt;->onPostMessage:Z

    if-nez v5, :cond_1

    .line 112
    iget-object v5, p0, Lo/removeQueueItemAt;->ICustomTabsCallback:Ljava/lang/Runnable;

    sub-long/2addr v3, v1

    invoke-virtual {p0, v5, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    iput-boolean v0, p0, Lo/removeQueueItemAt;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    const/16 v0, 0x8

    .line 106
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 1088
    iget-object v0, p0, Lo/removeQueueItemAt;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1089
    iget-object v0, p0, Lo/removeQueueItemAt;->asBinder:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 2088
    iget-object v0, p0, Lo/removeQueueItemAt;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2089
    iget-object v0, p0, Lo/removeQueueItemAt;->asBinder:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized onMessageChannelReady()V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 124
    :try_start_0
    iput-wide v0, p0, Lo/removeQueueItemAt;->extraCallback:J

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lo/removeQueueItemAt;->onMessageChannelReady:Z

    .line 126
    iget-object v1, p0, Lo/removeQueueItemAt;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    iput-boolean v0, p0, Lo/removeQueueItemAt;->onPostMessage:Z

    .line 128
    iget-boolean v0, p0, Lo/removeQueueItemAt;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lo/removeQueueItemAt;->asBinder:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lo/removeQueueItemAt;->onNavigationEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
