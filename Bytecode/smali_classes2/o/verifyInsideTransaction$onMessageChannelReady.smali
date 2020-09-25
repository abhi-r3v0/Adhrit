.class public final Lo/verifyInsideTransaction$onMessageChannelReady;
.super Lo/verifyInsideTransaction;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/verifyInsideTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/lang/Throwable;

.field private extraCallback:Z


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Throwable;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lo/verifyInsideTransaction;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lo/verifyInsideTransaction$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/verifyInsideTransaction;)V
    .locals 1

    const/4 v0, 0x0

    .line 788
    invoke-virtual {v0, p1}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/Throwable;)Z
    .locals 2

    .line 818
    monitor-enter p0

    .line 819
    :try_start_0
    iget-boolean v0, p0, Lo/verifyInsideTransaction$onMessageChannelReady;->extraCallback:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 820
    iput-boolean v1, p0, Lo/verifyInsideTransaction$onMessageChannelReady;->extraCallback:Z

    .line 826
    iput-object p1, p0, Lo/verifyInsideTransaction$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 829
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 831
    invoke-virtual {p0}, Lo/verifyInsideTransaction$onMessageChannelReady;->asBinder()V

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    .line 829
    monitor-exit p0

    throw p1
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    .line 889
    invoke-virtual {p0, v0}, Lo/verifyInsideTransaction$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onNavigationEvent()Lo/verifyInsideTransaction;
    .locals 1

    const/4 v0, 0x0

    .line 783
    invoke-virtual {v0}, Lo/verifyInsideTransaction;->onNavigationEvent()Lo/verifyInsideTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Z
    .locals 2

    .line 852
    monitor-enter p0

    .line 853
    :try_start_0
    iget-boolean v0, p0, Lo/verifyInsideTransaction$onMessageChannelReady;->extraCallback:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 854
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 856
    :cond_0
    monitor-exit p0

    .line 859
    invoke-super {p0}, Lo/verifyInsideTransaction;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    invoke-super {p0}, Lo/verifyInsideTransaction;->ICustomTabsCallback()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/verifyInsideTransaction$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Throwable;)Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 856
    monitor-exit p0

    throw v0
.end method
