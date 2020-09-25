.class final Lo/onListenRevoked$onPostMessage;
.super Lo/onListenRevoked$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onListenRevoked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, v0}, Lo/onListenRevoked$extraCallback;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lo/onListenRevoked$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/onListenRevoked;)Z
    .locals 1

    .line 166
    monitor-enter p1

    .line 167
    :try_start_0
    invoke-static {p1}, Lo/onListenRevoked;->extraCallback(Lo/onListenRevoked;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 168
    invoke-static {p1, v0}, Lo/onListenRevoked;->onMessageChannelReady(Lo/onListenRevoked;I)I

    const/4 v0, 0x1

    .line 169
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 171
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 172
    monitor-exit p1

    throw v0
.end method

.method public final onPostMessage(Lo/onListenRevoked;)V
    .locals 1

    .line 177
    monitor-enter p1

    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-static {p1, v0}, Lo/onListenRevoked;->onMessageChannelReady(Lo/onListenRevoked;I)I

    .line 179
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method
