.class public Lcom/facebook/animated/gif/GifImage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setSafeMode;
.implements Lo/clearComposition;


# annotations
.annotation build Lo/getGroupName;
.end annotation


# static fields
.field private static volatile ICustomTabsCallback:Z


# instance fields
.field private mNativeContext:J
    .annotation build Lo/getGroupName;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lo/getGroupName;
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .annotation build Lo/getGroupName;
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide p1, p0, Lcom/facebook/animated/gif/GifImage;->mNativeContext:J

    return-void
.end method

.method private static native nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/gif/GifImage;
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static native nativeCreateFromNativeMemory(JI)Lcom/facebook/animated/gif/GifImage;
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeDispose()V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeFinalize()V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeGetDuration()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeGetFrame(I)Lcom/facebook/animated/gif/GifFrame;
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeGetFrameCount()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeGetFrameDurations()[I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeGetHeight()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeGetLoopCount()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeGetSizeInBytes()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeGetWidth()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static declared-synchronized onTransact()V
    .locals 2

    const-class v0, Lcom/facebook/animated/gif/GifImage;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-boolean v1, Lcom/facebook/animated/gif/GifImage;->ICustomTabsCallback:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 41
    sput-boolean v1, Lcom/facebook/animated/gif/GifImage;->ICustomTabsCallback:Z

    const-string v1, "gifimage"

    .line 42
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->onPostMessage(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 3

    .line 146
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetLoopCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    add-int/2addr v0, v2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public final asInterface()I
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetSizeInBytes()I

    move-result v0

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeFinalize()V

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrameCount()I

    move-result v0

    return v0
.end method

.method public final synthetic onMessageChannelReady(I)Lo/getPerformanceTracker;
    .locals 0

    .line 6161
    invoke-direct {p0, p1}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrame(I)Lcom/facebook/animated/gif/GifFrame;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/nio/ByteBuffer;)Lo/setSafeMode;
    .locals 0

    .line 2070
    invoke-static {}, Lcom/facebook/animated/gif/GifImage;->onTransact()V

    .line 2071
    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 2073
    invoke-static {p1}, Lcom/facebook/animated/gif/GifImage;->nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/gif/GifImage;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public final onPostMessage(I)Lo/getProgress;
    .locals 8

    .line 2161
    invoke-direct {p0, p1}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrame(I)Lcom/facebook/animated/gif/GifFrame;

    move-result-object p1

    .line 178
    :try_start_0
    new-instance v7, Lo/getProgress;

    .line 3068
    invoke-virtual {p1}, Lcom/facebook/animated/gif/GifFrame;->nativeGetXOffset()I

    move-result v1

    .line 3073
    invoke-virtual {p1}, Lcom/facebook/animated/gif/GifFrame;->nativeGetYOffset()I

    move-result v2

    .line 4058
    invoke-virtual {p1}, Lcom/facebook/animated/gif/GifFrame;->nativeGetWidth()I

    move-result v3

    .line 4063
    invoke-virtual {p1}, Lcom/facebook/animated/gif/GifFrame;->nativeGetHeight()I

    move-result v4

    .line 183
    sget-object v5, Lo/getProgress$ICustomTabsCallback;->onNavigationEvent:Lo/getProgress$ICustomTabsCallback;

    .line 4085
    invoke-virtual {p1}, Lcom/facebook/animated/gif/GifFrame;->nativeGetDisposalMode()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 4197
    sget-object v0, Lo/getProgress$onMessageChannelReady;->extraCallback:Lo/getProgress$onMessageChannelReady;

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    if-ne v0, v6, :cond_1

    .line 4199
    sget-object v0, Lo/getProgress$onMessageChannelReady;->onPostMessage:Lo/getProgress$onMessageChannelReady;

    goto :goto_0

    .line 4201
    :cond_1
    sget-object v0, Lo/getProgress$onMessageChannelReady;->onNavigationEvent:Lo/getProgress$onMessageChannelReady;

    :goto_0
    move-object v6, v0

    move-object v0, v7

    .line 185
    invoke-direct/range {v0 .. v6}, Lo/getProgress;-><init>(IIIILo/getProgress$ICustomTabsCallback;Lo/getProgress$onMessageChannelReady;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5043
    invoke-virtual {p1}, Lcom/facebook/animated/gif/GifFrame;->nativeDispose()V

    return-object v7

    :catchall_0
    move-exception v0

    .line 6043
    invoke-virtual {p1}, Lcom/facebook/animated/gif/GifFrame;->nativeDispose()V

    .line 187
    throw v0
.end method

.method public final onPostMessage(JI)Lo/setSafeMode;
    .locals 3

    .line 1077
    invoke-static {}, Lcom/facebook/animated/gif/GifImage;->onTransact()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1079
    invoke-static {p1, p2, p3}, Lcom/facebook/animated/gif/GifImage;->nativeCreateFromNativeMemory(JI)Lcom/facebook/animated/gif/GifImage;

    move-result-object p1

    return-object p1

    .line 1111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final onPostMessage()[I
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifImage;->nativeGetFrameDurations()[I

    move-result-object v0

    return-object v0
.end method
