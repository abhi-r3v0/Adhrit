.class public final Lo/updateChildrenInternal$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateChildrenInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "onPostMessage"
.end annotation


# instance fields
.field final ICustomTabsCallback:[Z

.field final synthetic extraCallback:Lo/updateChildrenInternal;

.field onMessageChannelReady:Z

.field final onPostMessage:Lo/updateChildrenInternal$ICustomTabsCallback;


# direct methods
.method private constructor <init>(Lo/updateChildrenInternal;Lo/updateChildrenInternal$ICustomTabsCallback;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput-object p2, p0, Lo/updateChildrenInternal$onPostMessage;->onPostMessage:Lo/updateChildrenInternal$ICustomTabsCallback;

    .line 1927
    iget-boolean p2, p2, Lo/updateChildrenInternal$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 834
    :cond_0
    invoke-static {p1}, Lo/updateChildrenInternal;->asBinder(Lo/updateChildrenInternal;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lo/updateChildrenInternal$onPostMessage;->ICustomTabsCallback:[Z

    return-void
.end method

.method synthetic constructor <init>(Lo/updateChildrenInternal;Lo/updateChildrenInternal$ICustomTabsCallback;B)V
    .locals 0

    .line 826
    invoke-direct {p0, p1, p2}, Lo/updateChildrenInternal$onPostMessage;-><init>(Lo/updateChildrenInternal;Lo/updateChildrenInternal$ICustomTabsCallback;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)Lo/exceptionStacktrace;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    monitor-enter v0

    .line 866
    :try_start_0
    iget-object v1, p0, Lo/updateChildrenInternal$onPostMessage;->onPostMessage:Lo/updateChildrenInternal$ICustomTabsCallback;

    .line 2927
    iget-object v1, v1, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    if-ne v1, p0, :cond_1

    .line 869
    iget-object v1, p0, Lo/updateChildrenInternal$onPostMessage;->onPostMessage:Lo/updateChildrenInternal$ICustomTabsCallback;

    .line 3927
    iget-boolean v1, v1, Lo/updateChildrenInternal$ICustomTabsCallback;->onMessageChannelReady:Z

    if-nez v1, :cond_0

    .line 870
    iget-object v1, p0, Lo/updateChildrenInternal$onPostMessage;->ICustomTabsCallback:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 872
    :cond_0
    iget-object v1, p0, Lo/updateChildrenInternal$onPostMessage;->onPostMessage:Lo/updateChildrenInternal$ICustomTabsCallback;

    .line 4927
    iget-object v1, v1, Lo/updateChildrenInternal$ICustomTabsCallback;->onNavigationEvent:[Ljava/io/File;

    .line 872
    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    :try_start_1
    iget-object v1, p0, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    invoke-static {v1}, Lo/updateChildrenInternal;->onRelationshipValidationResult(Lo/updateChildrenInternal;)Lo/startAt;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/startAt;->onNavigationEvent(Ljava/io/File;)Lo/exceptionStacktrace;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 879
    :try_start_2
    new-instance v1, Lo/updateChildrenInternal$onPostMessage$5;

    invoke-direct {v1, p0, p1}, Lo/updateChildrenInternal$onPostMessage$5;-><init>(Lo/updateChildrenInternal$onPostMessage;Lo/exceptionStacktrace;)V

    monitor-exit v0

    return-object v1

    .line 877
    :catch_0
    invoke-static {}, Lo/updateChildrenInternal;->ICustomTabsCallback()Lo/exceptionStacktrace;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 867
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 886
    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    iget-object v0, p0, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    monitor-enter v0

    .line 911
    :try_start_0
    iget-object v1, p0, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lo/updateChildrenInternal;->onMessageChannelReady(Lo/updateChildrenInternal;Lo/updateChildrenInternal$onPostMessage;Z)V

    .line 912
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onNavigationEvent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    monitor-enter v0

    .line 895
    :try_start_0
    iget-boolean v1, p0, Lo/updateChildrenInternal$onPostMessage;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lo/updateChildrenInternal;->onMessageChannelReady(Lo/updateChildrenInternal;Lo/updateChildrenInternal$onPostMessage;Z)V

    .line 897
    iget-object v1, p0, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    iget-object v2, p0, Lo/updateChildrenInternal$onPostMessage;->onPostMessage:Lo/updateChildrenInternal$ICustomTabsCallback;

    invoke-static {v1, v2}, Lo/updateChildrenInternal;->ICustomTabsCallback(Lo/updateChildrenInternal;Lo/updateChildrenInternal$ICustomTabsCallback;)Z

    goto :goto_0

    .line 899
    :cond_0
    iget-object v1, p0, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lo/updateChildrenInternal;->onMessageChannelReady(Lo/updateChildrenInternal;Lo/updateChildrenInternal$onPostMessage;Z)V

    .line 902
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
