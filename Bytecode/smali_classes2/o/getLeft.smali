.class public abstract Lo/getLeft;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/upgradeAuth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getLeft$onPostMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lo/getLeft;->onMessageChannelReady()Lo/isPersistenceEnabled;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/isPersistenceEnabled;->onPostMessage(Z)Lo/isPersistenceEnabled;

    return-void
.end method

.method public final asBinder()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lo/getLeft;->onMessageChannelReady()Lo/isPersistenceEnabled;

    move-result-object v0

    invoke-interface {v0}, Lo/isPersistenceEnabled;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lo/getLeft;->onMessageChannelReady()Lo/isPersistenceEnabled;

    move-result-object v0

    invoke-interface {v0}, Lo/isPersistenceEnabled;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method protected final asInterface()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lo/getLeft;->onMessageChannelReady()Lo/isPersistenceEnabled;

    move-result-object v0

    invoke-interface {v0}, Lo/isPersistenceEnabled;->ICustomTabsCallback()V

    return-void
.end method

.method public final extraCallback(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lo/getLeft;->onMessageChannelReady()Lo/isPersistenceEnabled;

    move-result-object v0

    invoke-interface {v0}, Lo/isPersistenceEnabled;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lo/getLeft;->onMessageChannelReady()Lo/isPersistenceEnabled;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/isPersistenceEnabled;->onMessageChannelReady(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    invoke-static {p1}, Lo/getAuthTokenProvider;->extraCallback(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lo/getAuthTokenProvider;->extraCallback(Ljava/io/InputStream;)V

    throw v0

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "message"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extraCallback()Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lo/getLeft;->onMessageChannelReady()Lo/isPersistenceEnabled;

    move-result-object v0

    invoke-interface {v0}, Lo/isPersistenceEnabled;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lo/getLeft;->onRelationshipValidationResult()Lo/getLeft$onPostMessage;

    move-result-object v0

    .line 3102
    invoke-virtual {v0}, Lo/getLeft$onPostMessage;->onPostMessage()Z

    move-result v0

    return v0
.end method

.method protected abstract onMessageChannelReady()Lo/isPersistenceEnabled;
.end method

.method public final onPostMessage(I)V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lo/getLeft;->onRelationshipValidationResult()Lo/getLeft$onPostMessage;

    move-result-object v0

    .line 4260
    iget-object v1, v0, Lo/getLeft$onPostMessage;->asBinder:Ljava/lang/Object;

    monitor-enter v1

    .line 4261
    :try_start_0
    iget v2, v0, Lo/getLeft$onPostMessage;->ICustomTabsCallback$Stub:I

    add-int/2addr v2, p1

    iput v2, v0, Lo/getLeft$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 4262
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final onPostMessage(Lo/pruneTreeRecursive;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lo/getLeft;->onMessageChannelReady()Lo/isPersistenceEnabled;

    move-result-object v0

    if-eqz p1, :cond_0

    check-cast p1, Lo/pruneTreeRecursive;

    invoke-interface {v0, p1}, Lo/isPersistenceEnabled;->extraCallback(Lo/pruneTreeRecursive;)Lo/isPersistenceEnabled;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "compressor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract onRelationshipValidationResult()Lo/getLeft$onPostMessage;
.end method
