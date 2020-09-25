.class final Lo/serializeSessionDevice$onPostMessage$3;
.super Lo/getEndPost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/serializeSessionDevice$onPostMessage;-><init>(Lo/serializeSessionDevice;Lo/updateChildrenInternal$onPostMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/serializeSessionDevice$onPostMessage;

.field private synthetic onPostMessage:Lo/updateChildrenInternal$onPostMessage;


# direct methods
.method constructor <init>(Lo/serializeSessionDevice$onPostMessage;Lo/exceptionStacktrace;Lo/updateChildrenInternal$onPostMessage;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lo/serializeSessionDevice$onPostMessage$3;->onMessageChannelReady:Lo/serializeSessionDevice$onPostMessage;

    iput-object p3, p0, Lo/serializeSessionDevice$onPostMessage$3;->onPostMessage:Lo/updateChildrenInternal$onPostMessage;

    invoke-direct {p0, p2}, Lo/getEndPost;-><init>(Lo/exceptionStacktrace;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lo/serializeSessionDevice$onPostMessage$3;->onMessageChannelReady:Lo/serializeSessionDevice$onPostMessage;

    iget-object v0, v0, Lo/serializeSessionDevice$onPostMessage;->extraCallback:Lo/serializeSessionDevice;

    monitor-enter v0

    .line 435
    :try_start_0
    iget-object v1, p0, Lo/serializeSessionDevice$onPostMessage$3;->onMessageChannelReady:Lo/serializeSessionDevice$onPostMessage;

    .line 1423
    iget-boolean v1, v1, Lo/serializeSessionDevice$onPostMessage;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    .line 436
    monitor-exit v0

    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Lo/serializeSessionDevice$onPostMessage$3;->onMessageChannelReady:Lo/serializeSessionDevice$onPostMessage;

    const/4 v2, 0x1

    .line 2423
    iput-boolean v2, v1, Lo/serializeSessionDevice$onPostMessage;->onMessageChannelReady:Z

    .line 439
    iget-object v1, p0, Lo/serializeSessionDevice$onPostMessage$3;->onMessageChannelReady:Lo/serializeSessionDevice$onPostMessage;

    iget-object v1, v1, Lo/serializeSessionDevice$onPostMessage;->extraCallback:Lo/serializeSessionDevice;

    .line 3131
    iget v3, v1, Lo/serializeSessionDevice;->onMessageChannelReady:I

    add-int/2addr v3, v2

    iput v3, v1, Lo/serializeSessionDevice;->onMessageChannelReady:I

    .line 440
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-super {p0}, Lo/getEndPost;->close()V

    .line 442
    iget-object v0, p0, Lo/serializeSessionDevice$onPostMessage$3;->onPostMessage:Lo/updateChildrenInternal$onPostMessage;

    invoke-virtual {v0}, Lo/updateChildrenInternal$onPostMessage;->onNavigationEvent()V

    return-void

    :catchall_0
    move-exception v1

    .line 440
    monitor-exit v0

    throw v1
.end method
