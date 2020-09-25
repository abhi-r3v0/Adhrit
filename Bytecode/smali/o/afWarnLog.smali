.class public final Lo/afWarnLog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyer2dXConversionCallback;
.implements Ljava/io/Closeable;


# instance fields
.field private final onMessageChannelReady:I

.field private onNavigationEvent:Ljava/nio/ByteBuffer;

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 37
    iput p1, p0, Lo/afWarnLog;->onMessageChannelReady:I

    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lo/afWarnLog;->onPostMessage:J

    return-void
.end method

.method private onMessageChannelReady(ILo/AppsFlyer2dXConversionCallback;II)V
    .locals 1

    .line 154
    instance-of p1, p2, Lo/afWarnLog;

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p0}, Lo/afWarnLog;->extraCallback()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 158
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->extraCallback()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->ICustomTabsCallback()I

    move-result p1

    iget p3, p0, Lo/afWarnLog;->onMessageChannelReady:I

    const/4 v0, 0x0

    invoke-static {v0, p1, v0, p4, p3}, Lo/onItemHoverEnter$onMessageChannelReady;->ICustomTabsCallback(IIIII)V

    .line 160
    iget-object p1, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 162
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->onNavigationEvent()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 165
    new-array p1, p4, [B

    .line 166
    iget-object p3, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, v0, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 167
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->onNavigationEvent()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 11162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 10162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot copy two incompatible MemoryChunks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 53
    iget v0, p0, Lo/afWarnLog;->onMessageChannelReady:I

    return v0
.end method

.method public final declared-synchronized ICustomTabsCallback(I[BII)I
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lo/afWarnLog;->extraCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 61
    iget v0, p0, Lo/afWarnLog;->onMessageChannelReady:I

    const/4 v1, 0x0

    sub-int/2addr v0, p1

    .line 3019
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3020
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 62
    array-length v0, p2

    iget v1, p0, Lo/afWarnLog;->onMessageChannelReady:I

    invoke-static {p1, v0, p3, p4, v1}, Lo/onItemHoverEnter$onMessageChannelReady;->ICustomTabsCallback(IIIII)V

    .line 64
    iget-object v0, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 65
    iget-object p1, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return p4

    .line 2162
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1215
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 43
    :try_start_0
    iput-object v0, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback(I)B
    .locals 3

    monitor-enter p0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lo/afWarnLog;->extraCallback()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 86
    iget v2, p0, Lo/afWarnLog;->onMessageChannelReady:I

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 87
    iget-object v0, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 7111
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 6111
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5162
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback()Z
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady(I[BII)I
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lo/afWarnLog;->extraCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 74
    iget v0, p0, Lo/afWarnLog;->onMessageChannelReady:I

    const/4 v1, 0x0

    sub-int/2addr v0, p1

    .line 5019
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5020
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 75
    array-length v0, p2

    iget v1, p0, Lo/afWarnLog;->onMessageChannelReady:I

    invoke-static {p1, v0, p3, p4, v1}, Lo/onItemHoverEnter$onMessageChannelReady;->ICustomTabsCallback(IIIII)V

    .line 77
    iget-object v0, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 78
    iget-object p1, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return p4

    .line 4162
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3215
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lo/afWarnLog;->onPostMessage:J

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/AppsFlyer2dXConversionCallback;I)V
    .locals 6

    if-eqz p1, :cond_2

    .line 101
    invoke-interface {p1}, Lo/AppsFlyer2dXConversionCallback;->onMessageChannelReady()J

    move-result-wide v0

    .line 8145
    iget-wide v2, p0, Lo/afWarnLog;->onPostMessage:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 115
    invoke-interface {p1}, Lo/AppsFlyer2dXConversionCallback;->onMessageChannelReady()J

    move-result-wide v0

    .line 10145
    iget-wide v2, p0, Lo/afWarnLog;->onPostMessage:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 116
    monitor-enter p1

    .line 117
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    invoke-direct {p0, v4, p1, v4, p2}, Lo/afWarnLog;->onMessageChannelReady(ILo/AppsFlyer2dXConversionCallback;II)V

    .line 119
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 119
    monitor-exit p0

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 120
    monitor-exit p1

    throw p2

    .line 125
    :cond_0
    monitor-enter p0

    .line 126
    :try_start_3
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 127
    :try_start_4
    invoke-direct {p0, v4, p1, v4, p2}, Lo/afWarnLog;->onMessageChannelReady(ILo/AppsFlyer2dXConversionCallback;II)V

    .line 128
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    :try_start_5
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p2

    .line 128
    monitor-exit p1

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 129
    monitor-exit p0

    throw p1

    .line 104
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Copying from BufferMemoryChunk "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9145
    iget-wide v0, p0, Lo/afWarnLog;->onPostMessage:J

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to BufferMemoryChunk "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {p1}, Lo/AppsFlyer2dXConversionCallback;->onMessageChannelReady()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which are the same "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BufferMemoryChunk"

    .line 104
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 7215
    throw p1
.end method

.method public final declared-synchronized onNavigationEvent()Ljava/nio/ByteBuffer;
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lo/afWarnLog;->onNavigationEvent:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot get the pointer of a BufferMemoryChunk"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
