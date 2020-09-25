.class final Lo/handleTimestamp$2;
.super Lo/handleTimestamp$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/handleTimestamp;->onPostMessage(Lo/updatePriority;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/handleTimestamp;

.field private extraCallback:Lo/isValidKey$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/handleTimestamp;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lo/handleTimestamp$2;->ICustomTabsCallback:Lo/handleTimestamp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/handleTimestamp$onPostMessage;-><init>(Lo/handleTimestamp;B)V

    .line 93
    invoke-static {}, Lo/freeze;->ICustomTabsCallback$Stub()Lo/isValidKey$ICustomTabsCallback;

    move-result-object p1

    iput-object p1, p0, Lo/handleTimestamp$2;->extraCallback:Lo/isValidKey$ICustomTabsCallback;

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

    .line 96
    invoke-static {}, Lo/freeze;->onMessageChannelReady()V

    .line 97
    invoke-static {}, Lo/freeze;->onTransact()V

    .line 98
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 100
    :try_start_0
    iget-object v1, p0, Lo/handleTimestamp$2;->ICustomTabsCallback:Lo/handleTimestamp;

    .line 1038
    iget-object v1, v1, Lo/handleTimestamp;->ICustomTabsCallback:Ljava/lang/Object;

    .line 100
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    iget-object v2, p0, Lo/handleTimestamp$2;->ICustomTabsCallback:Lo/handleTimestamp;

    .line 2038
    iget-object v2, v2, Lo/handleTimestamp;->extraCallback:Lo/updatePriority;

    .line 101
    iget-object v3, p0, Lo/handleTimestamp$2;->ICustomTabsCallback:Lo/handleTimestamp;

    .line 3038
    iget-object v3, v3, Lo/handleTimestamp;->extraCallback:Lo/updatePriority;

    .line 101
    invoke-virtual {v3}, Lo/updatePriority;->asBinder()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    .line 102
    iget-object v2, p0, Lo/handleTimestamp$2;->ICustomTabsCallback:Lo/handleTimestamp;

    const/4 v3, 0x0

    .line 4038
    iput-boolean v3, v2, Lo/handleTimestamp;->onPostMessage:Z

    .line 103
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    iget-object v1, p0, Lo/handleTimestamp$2;->ICustomTabsCallback:Lo/handleTimestamp;

    .line 5038
    iget-object v1, v1, Lo/handleTimestamp;->onTransact:Lo/exceptionStacktrace;

    .line 5067
    iget-wide v2, v0, Lo/updatePriority;->ICustomTabsCallback:J

    .line 104
    invoke-interface {v1, v0, v2, v3}, Lo/exceptionStacktrace;->onPostMessage(Lo/updatePriority;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    return-void

    :catchall_0
    move-exception v0

    .line 103
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 106
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    throw v0
.end method
