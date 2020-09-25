.class public final Lo/getTriggerTimeoutInMillis;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:J

.field private onMessageChannelReady:J

.field private final onPostMessage:Ljava/lang/Object;


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getTriggerTimeoutInMillis;->onPostMessage:Ljava/lang/Object;

    const-wide/high16 p1, -0x8000000000000000L

    .line 3
    iput-wide p1, p0, Lo/getTriggerTimeoutInMillis;->onMessageChannelReady:J

    const-wide p1, 0x40dd4c0000000000L    # 30000.0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    iput-wide p1, p0, Lo/getTriggerTimeoutInMillis;->ICustomTabsCallback:J

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Z
    .locals 7

    .line 6
    iget-object v0, p0, Lo/getTriggerTimeoutInMillis;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 8
    iget-wide v3, p0, Lo/getTriggerTimeoutInMillis;->onMessageChannelReady:J

    iget-wide v5, p0, Lo/getTriggerTimeoutInMillis;->ICustomTabsCallback:J

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    const/4 v1, 0x0

    .line 9
    monitor-exit v0

    return v1

    .line 10
    :cond_0
    iput-wide v1, p0, Lo/getTriggerTimeoutInMillis;->onMessageChannelReady:J

    const/4 v1, 0x1

    .line 11
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
