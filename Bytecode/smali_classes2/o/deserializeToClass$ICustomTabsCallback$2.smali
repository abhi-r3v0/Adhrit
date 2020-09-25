.class final Lo/deserializeToClass$ICustomTabsCallback$2;
.super Lo/getEndPost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/deserializeToClass$ICustomTabsCallback;-><init>(Lo/deserializeToClass;Lo/getPrevName$onMessageChannelReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/deserializeToClass$ICustomTabsCallback;

.field private synthetic onNavigationEvent:Lo/getPrevName$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/deserializeToClass$ICustomTabsCallback;Lo/exceptionStacktrace;Lo/getPrevName$onMessageChannelReady;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lo/deserializeToClass$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/deserializeToClass$ICustomTabsCallback;

    iput-object p3, p0, Lo/deserializeToClass$ICustomTabsCallback$2;->onNavigationEvent:Lo/getPrevName$onMessageChannelReady;

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

    .line 445
    iget-object v0, p0, Lo/deserializeToClass$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/deserializeToClass$ICustomTabsCallback;

    iget-object v0, v0, Lo/deserializeToClass$ICustomTabsCallback;->onMessageChannelReady:Lo/deserializeToClass;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lo/deserializeToClass$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/deserializeToClass$ICustomTabsCallback;

    iget-boolean v1, v1, Lo/deserializeToClass$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v1, :cond_0

    .line 447
    monitor-exit v0

    return-void

    .line 449
    :cond_0
    iget-object v1, p0, Lo/deserializeToClass$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/deserializeToClass$ICustomTabsCallback;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lo/deserializeToClass$ICustomTabsCallback;->onPostMessage:Z

    .line 450
    iget-object v1, p0, Lo/deserializeToClass$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/deserializeToClass$ICustomTabsCallback;

    iget-object v1, v1, Lo/deserializeToClass$ICustomTabsCallback;->onMessageChannelReady:Lo/deserializeToClass;

    iget v3, v1, Lo/deserializeToClass;->onNavigationEvent:I

    add-int/2addr v3, v2

    iput v3, v1, Lo/deserializeToClass;->onNavigationEvent:I

    .line 451
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-super {p0}, Lo/getEndPost;->close()V

    .line 453
    iget-object v0, p0, Lo/deserializeToClass$ICustomTabsCallback$2;->onNavigationEvent:Lo/getPrevName$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getPrevName$onMessageChannelReady;->onPostMessage()V

    return-void

    :catchall_0
    move-exception v1

    .line 451
    monitor-exit v0

    throw v1
.end method
