.class final Lo/serializeSessionDevice$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializeSessionDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/exceptionStacktrace;

.field final synthetic extraCallback:Lo/serializeSessionDevice;

.field onMessageChannelReady:Z

.field private onNavigationEvent:Lo/exceptionStacktrace;

.field private final onPostMessage:Lo/updateChildrenInternal$onPostMessage;


# direct methods
.method public constructor <init>(Lo/serializeSessionDevice;Lo/updateChildrenInternal$onPostMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lo/serializeSessionDevice$onPostMessage;->extraCallback:Lo/serializeSessionDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p2, p0, Lo/serializeSessionDevice$onPostMessage;->onPostMessage:Lo/updateChildrenInternal$onPostMessage;

    const/4 p1, 0x1

    .line 431
    invoke-virtual {p2, p1}, Lo/updateChildrenInternal$onPostMessage;->onMessageChannelReady(I)Lo/exceptionStacktrace;

    move-result-object p1

    iput-object p1, p0, Lo/serializeSessionDevice$onPostMessage;->onNavigationEvent:Lo/exceptionStacktrace;

    .line 432
    new-instance v0, Lo/serializeSessionDevice$onPostMessage$3;

    invoke-direct {v0, p0, p1, p2}, Lo/serializeSessionDevice$onPostMessage$3;-><init>(Lo/serializeSessionDevice$onPostMessage;Lo/exceptionStacktrace;Lo/updateChildrenInternal$onPostMessage;)V

    iput-object v0, p0, Lo/serializeSessionDevice$onPostMessage;->ICustomTabsCallback:Lo/exceptionStacktrace;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 448
    iget-object v0, p0, Lo/serializeSessionDevice$onPostMessage;->extraCallback:Lo/serializeSessionDevice;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-boolean v1, p0, Lo/serializeSessionDevice$onPostMessage;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    .line 450
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 452
    iput-boolean v1, p0, Lo/serializeSessionDevice$onPostMessage;->onMessageChannelReady:Z

    .line 453
    iget-object v2, p0, Lo/serializeSessionDevice$onPostMessage;->extraCallback:Lo/serializeSessionDevice;

    .line 1131
    iget v3, v2, Lo/serializeSessionDevice;->onPostMessage:I

    add-int/2addr v3, v1

    iput v3, v2, Lo/serializeSessionDevice;->onPostMessage:I

    .line 454
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object v0, p0, Lo/serializeSessionDevice$onPostMessage;->onNavigationEvent:Lo/exceptionStacktrace;

    invoke-static {v0}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 457
    :try_start_1
    iget-object v0, p0, Lo/serializeSessionDevice$onPostMessage;->onPostMessage:Lo/updateChildrenInternal$onPostMessage;

    invoke-virtual {v0}, Lo/updateChildrenInternal$onPostMessage;->onMessageChannelReady()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 454
    monitor-exit v0

    throw v1
.end method

.method public final onMessageChannelReady()Lo/exceptionStacktrace;
    .locals 1

    .line 463
    iget-object v0, p0, Lo/serializeSessionDevice$onPostMessage;->ICustomTabsCallback:Lo/exceptionStacktrace;

    return-object v0
.end method
