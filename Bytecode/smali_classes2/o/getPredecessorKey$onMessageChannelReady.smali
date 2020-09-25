.class final Lo/getPredecessorKey$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPredecessorKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile onPostMessage:[B


# virtual methods
.method final onNavigationEvent()[B
    .locals 1

    .line 927
    iget-object v0, p0, Lo/getPredecessorKey$onMessageChannelReady;->onPostMessage:[B

    if-nez v0, :cond_1

    .line 928
    monitor-enter p0

    .line 929
    :try_start_0
    iget-object v0, p0, Lo/getPredecessorKey$onMessageChannelReady;->onPostMessage:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1923
    invoke-interface {v0}, Lo/getPredecessorKey$extraCallback;->onPostMessage()Ljava/io/InputStream;

    move-result-object v0

    .line 930
    invoke-static {v0}, Lo/getPredecessorKey;->onNavigationEvent(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lo/getPredecessorKey$onMessageChannelReady;->onPostMessage:[B

    .line 932
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 934
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getPredecessorKey$onMessageChannelReady;->onPostMessage:[B

    return-object v0
.end method
