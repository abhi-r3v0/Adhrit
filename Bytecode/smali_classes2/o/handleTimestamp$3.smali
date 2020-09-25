.class final Lo/handleTimestamp$3;
.super Lo/handleTimestamp$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/handleTimestamp;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private onMessageChannelReady:Lo/isValidKey$ICustomTabsCallback;

.field private synthetic onPostMessage:Lo/handleTimestamp;


# direct methods
.method constructor <init>(Lo/handleTimestamp;)V
    .locals 1

    .line 128
    iput-object p1, p0, Lo/handleTimestamp$3;->onPostMessage:Lo/handleTimestamp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/handleTimestamp$onPostMessage;-><init>(Lo/handleTimestamp;B)V

    .line 129
    invoke-static {}, Lo/freeze;->ICustomTabsCallback$Stub()Lo/isValidKey$ICustomTabsCallback;

    move-result-object p1

    iput-object p1, p0, Lo/handleTimestamp$3;->onMessageChannelReady:Lo/isValidKey$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-static {}, Lo/freeze;->onMessageChannelReady()V

    .line 133
    invoke-static {}, Lo/freeze;->onTransact()V

    .line 134
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 136
    :try_start_0
    iget-object v1, p0, Lo/handleTimestamp$3;->onPostMessage:Lo/handleTimestamp;

    .line 1038
    iget-object v1, v1, Lo/handleTimestamp;->ICustomTabsCallback:Ljava/lang/Object;

    .line 136
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :try_start_1
    iget-object v2, p0, Lo/handleTimestamp$3;->onPostMessage:Lo/handleTimestamp;

    .line 2038
    iget-object v2, v2, Lo/handleTimestamp;->extraCallback:Lo/updatePriority;

    .line 137
    iget-object v3, p0, Lo/handleTimestamp$3;->onPostMessage:Lo/handleTimestamp;

    .line 3038
    iget-object v3, v3, Lo/handleTimestamp;->extraCallback:Lo/updatePriority;

    .line 3067
    iget-wide v3, v3, Lo/updatePriority;->ICustomTabsCallback:J

    .line 137
    invoke-virtual {v0, v2, v3, v4}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    .line 138
    iget-object v2, p0, Lo/handleTimestamp$3;->onPostMessage:Lo/handleTimestamp;

    const/4 v3, 0x0

    .line 4038
    iput-boolean v3, v2, Lo/handleTimestamp;->onMessageChannelReady:Z

    .line 139
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    iget-object v1, p0, Lo/handleTimestamp$3;->onPostMessage:Lo/handleTimestamp;

    .line 5038
    iget-object v1, v1, Lo/handleTimestamp;->onTransact:Lo/exceptionStacktrace;

    .line 5067
    iget-wide v2, v0, Lo/updatePriority;->ICustomTabsCallback:J

    .line 140
    invoke-interface {v1, v0, v2, v3}, Lo/exceptionStacktrace;->onPostMessage(Lo/updatePriority;J)V

    .line 141
    iget-object v0, p0, Lo/handleTimestamp$3;->onPostMessage:Lo/handleTimestamp;

    .line 6038
    iget-object v0, v0, Lo/handleTimestamp;->onTransact:Lo/exceptionStacktrace;

    .line 141
    invoke-interface {v0}, Lo/exceptionStacktrace;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    return-void

    :catchall_0
    move-exception v0

    .line 139
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 143
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    throw v0
.end method
