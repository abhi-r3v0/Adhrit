.class final Lo/getIndexedFilter$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getIndexedFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/toLog;

.field private synthetic onMessageChannelReady:Lo/getIndexedFilter;


# direct methods
.method constructor <init>(Lo/getIndexedFilter;Lo/toLog;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lo/getIndexedFilter$4;->onMessageChannelReady:Lo/getIndexedFilter;

    iput-object p2, p0, Lo/getIndexedFilter$4;->extraCallback:Lo/toLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lo/getIndexedFilter$4;->onMessageChannelReady:Lo/getIndexedFilter;

    invoke-virtual {v0}, Lo/getIndexedFilter;->onMessageChannelReady()V

    .line 237
    :try_start_0
    iget-object v0, p0, Lo/getIndexedFilter$4;->extraCallback:Lo/toLog;

    invoke-interface {v0, p1, p2, p3}, Lo/toLog;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    iget-object p3, p0, Lo/getIndexedFilter$4;->onMessageChannelReady:Lo/getIndexedFilter;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lo/getIndexedFilter;->onMessageChannelReady(Z)V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    :try_start_1
    iget-object p2, p0, Lo/getIndexedFilter$4;->onMessageChannelReady:Lo/getIndexedFilter;

    invoke-virtual {p2, p1}, Lo/getIndexedFilter;->onPostMessage(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :goto_0
    iget-object p2, p0, Lo/getIndexedFilter$4;->onMessageChannelReady:Lo/getIndexedFilter;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lo/getIndexedFilter;->onMessageChannelReady(Z)V

    throw p1
.end method

.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 261
    iget-object v0, p0, Lo/getIndexedFilter$4;->onMessageChannelReady:Lo/getIndexedFilter;

    return-object v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lo/getIndexedFilter$4;->onMessageChannelReady:Lo/getIndexedFilter;

    invoke-virtual {v0}, Lo/getIndexedFilter;->onMessageChannelReady()V

    .line 251
    :try_start_0
    iget-object v0, p0, Lo/getIndexedFilter$4;->extraCallback:Lo/toLog;

    invoke-interface {v0}, Lo/toLog;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v0, p0, Lo/getIndexedFilter$4;->onMessageChannelReady:Lo/getIndexedFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/getIndexedFilter;->onMessageChannelReady(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 254
    :try_start_1
    iget-object v1, p0, Lo/getIndexedFilter$4;->onMessageChannelReady:Lo/getIndexedFilter;

    invoke-virtual {v1, v0}, Lo/getIndexedFilter;->onPostMessage(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :goto_0
    iget-object v1, p0, Lo/getIndexedFilter$4;->onMessageChannelReady:Lo/getIndexedFilter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/getIndexedFilter;->onMessageChannelReady(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getIndexedFilter$4;->extraCallback:Lo/toLog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
