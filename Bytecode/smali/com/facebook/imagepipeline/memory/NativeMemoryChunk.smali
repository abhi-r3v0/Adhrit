.class public Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyer2dXConversionCallback;
.implements Ljava/io/Closeable;


# annotations
.annotation build Lo/getGroupName;
.end annotation


# instance fields
.field private final ICustomTabsCallback:J

.field private final onNavigationEvent:I

.field private onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "imagepipeline"

    .line 31
    invoke-static {v0}, Lo/AppsFlyerLibCore$3;->onMessageChannelReady(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent:I

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onPostMessage:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 45
    iput p1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent:I

    .line 46
    invoke-static {p1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeAllocate(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    .line 47
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onPostMessage:Z

    return-void

    .line 1111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static native nativeAllocate(I)J
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static native nativeCopyFromByteArray(J[BII)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static native nativeCopyToByteArray(J[BII)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static native nativeFree(J)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static native nativeMemcpy(JJI)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static native nativeReadByte(J)B
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private onNavigationEvent(ILo/AppsFlyer2dXConversionCallback;II)V
    .locals 2

    .line 172
    instance-of p1, p2, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;

    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->extraCallback()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 176
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->extraCallback()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 177
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->ICustomTabsCallback()I

    move-result p1

    iget p3, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent:I

    const/4 v0, 0x0

    invoke-static {v0, p1, v0, p4, p3}, Lo/onItemHoverEnter$onMessageChannelReady;->ICustomTabsCallback(IIIII)V

    .line 178
    invoke-interface {p2}, Lo/AppsFlyer2dXConversionCallback;->onPostMessage()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    invoke-static {p1, p2, v0, v1, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeMemcpy(JJI)V

    return-void

    .line 10162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 9162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 173
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot copy two incompatible MemoryChunks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent:I

    return v0
.end method

.method public final declared-synchronized ICustomTabsCallback(I[BII)I
    .locals 4

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->extraCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 80
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent:I

    const/4 v1, 0x0

    sub-int/2addr v0, p1

    .line 3019
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3020
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 81
    array-length v0, p2

    iget v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent:I

    invoke-static {p1, v0, p3, p4, v1}, Lo/onItemHoverEnter$onMessageChannelReady;->ICustomTabsCallback(IIIII)V

    .line 83
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeCopyFromByteArray(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
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

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onPostMessage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onPostMessage:Z

    .line 61
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeFree(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback(I)B
    .locals 4

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->extraCallback()Z

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

    .line 103
    iget v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent:I

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 104
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeReadByte(J)B

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

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finalize: Chunk "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " still active. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeMemoryChunk"

    .line 192
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady(I[BII)I
    .locals 4

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->extraCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 92
    iget v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent:I

    const/4 v1, 0x0

    sub-int/2addr v0, p1

    .line 5019
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5020
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 93
    array-length v0, p2

    iget v1, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent:I

    invoke-static {p1, v0, p3, p4, v1}, Lo/onItemHoverEnter$onMessageChannelReady;->ICustomTabsCallback(IIIII)V

    .line 95
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->nativeCopyToByteArray(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
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

    .line 120
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/AppsFlyer2dXConversionCallback;I)V
    .locals 6

    if-eqz p1, :cond_2

    .line 134
    invoke-interface {p1}, Lo/AppsFlyer2dXConversionCallback;->onMessageChannelReady()J

    move-result-wide v0

    .line 8120
    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 149
    invoke-interface {p1}, Lo/AppsFlyer2dXConversionCallback;->onMessageChannelReady()J

    move-result-wide v0

    .line 9120
    iget-wide v2, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 150
    monitor-enter p1

    .line 151
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    :try_start_1
    invoke-direct {p0, v4, p1, v4, p2}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent(ILo/AppsFlyer2dXConversionCallback;II)V

    .line 153
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 153
    monitor-exit p0

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 154
    monitor-exit p1

    throw p2

    .line 159
    :cond_0
    monitor-enter p0

    .line 160
    :try_start_3
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 161
    :try_start_4
    invoke-direct {p0, v4, p1, v4, p2}, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->onNavigationEvent(ILo/AppsFlyer2dXConversionCallback;II)V

    .line 162
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    :try_start_5
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p2

    .line 162
    monitor-exit p1

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 163
    monitor-exit p0

    throw p1

    .line 137
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Copying from NativeMemoryChunk "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to NativeMemoryChunk "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which share the same address "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeMemoryChunk"

    .line 137
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 7215
    throw p1
.end method

.method public final onNavigationEvent()Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/NativeMemoryChunk;->ICustomTabsCallback:J

    return-wide v0
.end method
