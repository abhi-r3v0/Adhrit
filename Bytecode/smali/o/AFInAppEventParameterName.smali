.class public final Lo/AFInAppEventParameterName;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyer2dXConversionCallback;
.implements Ljava/io/Closeable;


# instance fields
.field private ICustomTabsCallback:Landroid/os/SharedMemory;

.field private onNavigationEvent:Ljava/nio/ByteBuffer;

.field private final onPostMessage:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;

    .line 45
    iput-object v0, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 46
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lo/AFInAppEventParameterName;->onPostMessage:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "AshmemMemoryChunk"

    .line 34
    invoke-static {v0, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p1

    iput-object p1, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;

    .line 35
    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lo/AFInAppEventParameterName;->onPostMessage:J

    return-void

    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to create AshmemMemory"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private onPostMessage(ILo/AppsFlyer2dXConversionCallback;II)V
    .locals 1

    .line 168
    instance-of p1, p2, Lo/AFInAppEventParameterName;

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 172
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->extraCallback()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 173
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->ICustomTabsCallback()I

    move-result p1

    .line 16066
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 16067
    iget-object p3, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;

    invoke-virtual {p3}, Landroid/os/SharedMemory;->getSize()I

    move-result p3

    const/4 v0, 0x0

    .line 173
    invoke-static {v0, p1, v0, p4, p3}, Lo/onItemHoverEnter$onMessageChannelReady;->ICustomTabsCallback(IIIII)V

    .line 174
    iget-object p1, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 176
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->onNavigationEvent()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 179
    new-array p1, p4, [B

    .line 180
    iget-object p3, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, v0, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 181
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->onNavigationEvent()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 16162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 15162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 14162
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 169
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot copy two incompatible MemoryChunks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    return v0

    .line 1162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized ICustomTabsCallback(I[BII)I
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_3

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3066
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3067
    iget-object v0, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    const/4 v1, 0x0

    sub-int/2addr v0, p1

    .line 4019
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4020
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 76
    array-length v0, p2

    .line 4066
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4067
    iget-object v1, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->getSize()I

    move-result v1

    .line 76
    invoke-static {p1, v0, p3, p4, v1}, Lo/onItemHoverEnter$onMessageChannelReady;->ICustomTabsCallback(IIIII)V

    .line 78
    iget-object v0, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget-object p1, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return p4

    .line 4162
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 3162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 2162
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1215
    :cond_3
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

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 53
    iget-object v0, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 55
    iput-object v0, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
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

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 10066
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 10067
    iget-object v2, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;

    invoke-virtual {v2}, Landroid/os/SharedMemory;->getSize()I

    move-result v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 101
    iget-object v0, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 11111
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 10162
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 9111
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 8162
    :cond_5
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

    .line 61
    :try_start_0
    iget-object v0, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady(I[BII)I
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_3

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 6066
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 6067
    iget-object v0, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    const/4 v1, 0x0

    sub-int/2addr v0, p1

    .line 7019
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7020
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 89
    array-length v0, p2

    .line 7066
    invoke-virtual {p0}, Lo/AFInAppEventParameterName;->extraCallback()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7067
    iget-object v1, p0, Lo/AFInAppEventParameterName;->ICustomTabsCallback:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->getSize()I

    move-result v1

    .line 89
    invoke-static {p1, v0, p3, p4, v1}, Lo/onItemHoverEnter$onMessageChannelReady;->ICustomTabsCallback(IIIII)V

    .line 91
    iget-object v0, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 92
    iget-object p1, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return p4

    .line 7162
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5162
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4215
    :cond_3
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

    .line 117
    iget-wide v0, p0, Lo/AFInAppEventParameterName;->onPostMessage:J

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/AppsFlyer2dXConversionCallback;I)V
    .locals 6

    if-eqz p1, :cond_2

    .line 131
    invoke-interface {p1}, Lo/AppsFlyer2dXConversionCallback;->onMessageChannelReady()J

    move-result-wide v0

    .line 12117
    iget-wide v2, p0, Lo/AFInAppEventParameterName;->onPostMessage:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 145
    invoke-interface {p1}, Lo/AppsFlyer2dXConversionCallback;->onMessageChannelReady()J

    move-result-wide v0

    .line 14117
    iget-wide v2, p0, Lo/AFInAppEventParameterName;->onPostMessage:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 146
    monitor-enter p1

    .line 147
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    invoke-direct {p0, v4, p1, v4, p2}, Lo/AFInAppEventParameterName;->onPostMessage(ILo/AppsFlyer2dXConversionCallback;II)V

    .line 149
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 149
    monitor-exit p0

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 150
    monitor-exit p1

    throw p2

    .line 155
    :cond_0
    monitor-enter p0

    .line 156
    :try_start_3
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 157
    :try_start_4
    invoke-direct {p0, v4, p1, v4, p2}, Lo/AFInAppEventParameterName;->onPostMessage(ILo/AppsFlyer2dXConversionCallback;II)V

    .line 158
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 159
    :try_start_5
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p2

    .line 158
    monitor-exit p1

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 159
    monitor-exit p0

    throw p1

    .line 134
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Copying from AshmemMemoryChunk "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13117
    iget-wide v0, p0, Lo/AFInAppEventParameterName;->onPostMessage:J

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to AshmemMemoryChunk "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-interface {p1}, Lo/AppsFlyer2dXConversionCallback;->onMessageChannelReady()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which are the same "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AshmemMemoryChunk"

    .line 134
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 11215
    throw p1
.end method

.method public final onNavigationEvent()Ljava/nio/ByteBuffer;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/AFInAppEventParameterName;->onNavigationEvent:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot get the pointer of an  AshmemMemoryChunk"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
