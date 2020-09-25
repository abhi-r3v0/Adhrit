.class final Lo/nextRequestNumber$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getMaxEntry$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nextRequestNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/nextRequestNumber;


# direct methods
.method constructor <init>(Lo/nextRequestNumber;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 3

    .line 190
    invoke-static {}, Lo/freeze;->onMessageChannelReady()V

    .line 192
    :try_start_0
    iget-object v0, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {v0}, Lo/nextRequestNumber;->extraCallback(Lo/nextRequestNumber;)Lo/nextRequestNumber$onNavigationEvent;

    move-result-object v0

    invoke-static {v0}, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsCallback(Lo/nextRequestNumber$onNavigationEvent;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 193
    :try_start_1
    iget-object v1, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {v1}, Lo/nextRequestNumber;->extraCallback(Lo/nextRequestNumber;)Lo/nextRequestNumber$onNavigationEvent;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3205
    :try_start_2
    iget-object v2, v1, Lo/getLeft$onPostMessage;->extraCallback:Lo/getHashes;

    invoke-interface {v2, p1}, Lo/getHashes;->onPostMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3207
    :try_start_3
    invoke-virtual {v1, p1}, Lo/getLeft$onPostMessage;->extraCallback(Ljava/lang/Throwable;)V

    .line 194
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    return-void

    :catchall_1
    move-exception p1

    .line 194
    :try_start_4
    monitor-exit v0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 196
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    throw p1
.end method

.method public final extraCallback(Lo/getPredecessorKey;[B)V
    .locals 3

    .line 148
    invoke-static {}, Lo/freeze;->onMessageChannelReady()V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {v1}, Lo/nextRequestNumber;->ICustomTabsCallback(Lo/nextRequestNumber;)Lo/reverseIterator;

    move-result-object v1

    .line 1253
    iget-object v1, v1, Lo/reverseIterator;->extraCallback:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 151
    iget-object v1, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {v1}, Lo/nextRequestNumber;->onPostMessage(Lo/nextRequestNumber;)Z

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->onNavigationEvent()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    .line 2148
    array-length v2, p2

    invoke-virtual {v0, p2, v2}, Lcom/google/common/io/BaseEncoding;->onMessageChannelReady([BI)Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    :try_start_0
    iget-object p2, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {p2}, Lo/nextRequestNumber;->extraCallback(Lo/nextRequestNumber;)Lo/nextRequestNumber$onNavigationEvent;

    move-result-object p2

    invoke-static {p2}, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsCallback(Lo/nextRequestNumber$onNavigationEvent;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    iget-object v1, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {v1}, Lo/nextRequestNumber;->extraCallback(Lo/nextRequestNumber;)Lo/nextRequestNumber$onNavigationEvent;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsCallback(Lo/nextRequestNumber$onNavigationEvent;Lo/getPredecessorKey;Ljava/lang/String;)V

    .line 157
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    return-void

    :catchall_0
    move-exception p1

    .line 157
    :try_start_2
    monitor-exit p2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 159
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    throw p1
.end method

.method public final extraCallback(Lo/sendPut;ZZI)V
    .locals 3

    .line 166
    invoke-static {}, Lo/freeze;->onMessageChannelReady()V

    if-nez p1, :cond_0

    .line 169
    invoke-static {}, Lo/nextRequestNumber;->getInterfaceDescriptor()Lo/updatePriority;

    move-result-object p1

    goto :goto_0

    .line 171
    :cond_0
    check-cast p1, Lo/queryForTag$extraCallback$onPostMessage;

    .line 3062
    iget-object p1, p1, Lo/queryForTag$extraCallback$onPostMessage;->onMessageChannelReady:Lo/updatePriority;

    .line 3067
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    long-to-int v1, v0

    if-lez v1, :cond_1

    .line 174
    iget-object v0, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {v0, v1}, Lo/nextRequestNumber;->extraCallback(Lo/nextRequestNumber;I)V

    .line 179
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {v0}, Lo/nextRequestNumber;->extraCallback(Lo/nextRequestNumber;)Lo/nextRequestNumber$onNavigationEvent;

    move-result-object v0

    invoke-static {v0}, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsCallback(Lo/nextRequestNumber$onNavigationEvent;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    :try_start_1
    iget-object v1, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {v1}, Lo/nextRequestNumber;->extraCallback(Lo/nextRequestNumber;)Lo/nextRequestNumber$onNavigationEvent;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsCallback(Lo/nextRequestNumber$onNavigationEvent;Lo/updatePriority;ZZ)V

    .line 181
    iget-object p1, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {p1}, Lo/nextRequestNumber;->onNavigationEvent(Lo/nextRequestNumber;)Lo/putInternal;

    move-result-object p1

    if-eqz p4, :cond_2

    .line 3112
    iget-wide p2, p1, Lo/putInternal;->asBinder:J

    int-to-long v1, p4

    add-long/2addr p2, v1

    iput-wide p2, p1, Lo/putInternal;->asBinder:J

    .line 3113
    iget-object p1, p1, Lo/putInternal;->onNavigationEvent:Lo/sendUnauth;

    invoke-interface {p1}, Lo/sendUnauth;->onMessageChannelReady()J

    .line 182
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    return-void

    :catchall_0
    move-exception p1

    .line 182
    :try_start_2
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 184
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    throw p1
.end method

.method public final onNavigationEvent(Lo/emptyMap;)V
    .locals 2

    .line 202
    invoke-static {}, Lo/freeze;->onMessageChannelReady()V

    .line 204
    :try_start_0
    iget-object v0, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {v0}, Lo/nextRequestNumber;->extraCallback(Lo/nextRequestNumber;)Lo/nextRequestNumber$onNavigationEvent;

    move-result-object v0

    invoke-static {v0}, Lo/nextRequestNumber$onNavigationEvent;->ICustomTabsCallback(Lo/nextRequestNumber$onNavigationEvent;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    :try_start_1
    iget-object v1, p0, Lo/nextRequestNumber$onMessageChannelReady;->onPostMessage:Lo/nextRequestNumber;

    invoke-static {v1}, Lo/nextRequestNumber;->extraCallback(Lo/nextRequestNumber;)Lo/nextRequestNumber$onNavigationEvent;

    move-result-object v1

    invoke-static {v1, p1}, Lo/nextRequestNumber$onNavigationEvent;->onPostMessage(Lo/nextRequestNumber$onNavigationEvent;Lo/emptyMap;)V

    .line 206
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    return-void

    :catchall_0
    move-exception p1

    .line 206
    :try_start_2
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 208
    invoke-static {}, Lo/freeze;->onNavigationEvent()V

    throw p1
.end method
