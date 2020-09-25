.class final Lo/updateChildrenInternal$onPostMessage$5;
.super Lo/getDatabase;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateChildrenInternal$onPostMessage;->onMessageChannelReady(I)Lo/exceptionStacktrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/updateChildrenInternal$onPostMessage;


# direct methods
.method constructor <init>(Lo/updateChildrenInternal$onPostMessage;Lo/exceptionStacktrace;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lo/updateChildrenInternal$onPostMessage$5;->onPostMessage:Lo/updateChildrenInternal$onPostMessage;

    invoke-direct {p0, p2}, Lo/getDatabase;-><init>(Lo/exceptionStacktrace;)V

    return-void
.end method


# virtual methods
.method protected final extraCallback()V
    .locals 3

    .line 881
    iget-object v0, p0, Lo/updateChildrenInternal$onPostMessage$5;->onPostMessage:Lo/updateChildrenInternal$onPostMessage;

    iget-object v0, v0, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    monitor-enter v0

    .line 882
    :try_start_0
    iget-object v1, p0, Lo/updateChildrenInternal$onPostMessage$5;->onPostMessage:Lo/updateChildrenInternal$onPostMessage;

    const/4 v2, 0x1

    .line 1826
    iput-boolean v2, v1, Lo/updateChildrenInternal$onPostMessage;->onMessageChannelReady:Z

    .line 883
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
