.class public Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;
.super Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;
.source ""


# annotations
.annotation build Lo/getGroupName;
.end annotation


# static fields
.field private static onMessageChannelReady:Ljava/lang/reflect/Method;


# instance fields
.field private final ICustomTabsCallback:Lo/ArrayCreatingInputMerger;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lo/getGroupName;
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;-><init>()V

    .line 50
    invoke-static {}, Lo/ListenableWorker;->extraCallback()Lo/ArrayCreatingInputMerger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->ICustomTabsCallback:Lo/ArrayCreatingInputMerger;

    return-void
.end method

.method private extraCallback(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;
    .locals 2

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->extraCallback()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 123
    check-cast p1, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2151
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 2152
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private declared-synchronized extraCallback()Ljava/lang/reflect/Method;
    .locals 3

    monitor-enter p0

    .line 110
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->onMessageChannelReady:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 112
    :try_start_1
    const-class v0, Landroid/os/MemoryFile;

    const-string v1, "getFileDescriptor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->onMessageChannelReady:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1151
    :try_start_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 1152
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 117
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->onMessageChannelReady:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static onNavigationEvent(Lo/getRootAlpha;I[B)Landroid/os/MemoryFile;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;I[B)",
            "Landroid/os/MemoryFile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 86
    :cond_0
    array-length v1, p2

    :goto_0
    add-int/2addr v1, p1

    .line 87
    new-instance v2, Landroid/os/MemoryFile;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v2, v0}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    .line 93
    :try_start_0
    new-instance v1, Lo/getAlpha;

    invoke-virtual {p0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-direct {v1, v4}, Lo/getAlpha;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 94
    :try_start_1
    new-instance v4, Lo/setPageMarginDrawable;

    invoke-direct {v4, v1, p1}, Lo/setPageMarginDrawable;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    :try_start_2
    invoke-virtual {v2}, Landroid/os/MemoryFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 96
    invoke-static {v4, v3}, Lo/getTrimPathOffset;->onMessageChannelReady(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    if-eqz p2, :cond_1

    .line 98
    array-length v5, p2

    invoke-virtual {v2, p2, v0, p1, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :cond_1
    invoke-static {p0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 103
    invoke-static {v1}, Lo/getTrimPathStart;->onNavigationEvent(Ljava/io/InputStream;)V

    .line 104
    invoke-static {v4}, Lo/getTrimPathStart;->onNavigationEvent(Ljava/io/InputStream;)V

    .line 105
    invoke-static {v3}, Lo/getTrimPathStart;->onMessageChannelReady(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception p1

    move-object p2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v3

    move-object v4, p2

    :goto_1
    move-object v3, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p2, v3

    move-object v4, p2

    .line 102
    :goto_2
    invoke-static {p0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 103
    invoke-static {v3}, Lo/getTrimPathStart;->onNavigationEvent(Ljava/io/InputStream;)V

    .line 104
    invoke-static {v4}, Lo/getTrimPathStart;->onNavigationEvent(Ljava/io/InputStream;)V

    .line 105
    invoke-static {p2}, Lo/getTrimPathStart;->onMessageChannelReady(Ljava/io/Closeable;)V

    throw p1
.end method

.method private onPostMessage(Lo/getRootAlpha;I[B)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;I[B)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->onNavigationEvent(Lo/getRootAlpha;I[B)Landroid/os/MemoryFile;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->extraCallback(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;

    .line 138
    iget-object p1, p0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->ICustomTabsCallback:Lo/ArrayCreatingInputMerger;

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->ICustomTabsCallback:Lo/ArrayCreatingInputMerger;

    invoke-interface {p1}, Lo/ArrayCreatingInputMerger;->onNavigationEvent()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapFactory returned null"

    if-eqz p1, :cond_0

    .line 140
    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    return-object p1

    .line 2231
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WebpBitmapFactory is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3151
    :try_start_2
    move-object p2, p1

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p2}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 3152
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    :cond_2
    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getRootAlpha;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;I",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 79
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->ICustomTabsCallback(Lo/getRootAlpha;I)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->extraCallback:[B

    .line 80
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->onPostMessage(Lo/getRootAlpha;I[B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Lo/getRootAlpha;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {p2}, Lcom/facebook/common/memory/PooledByteBuffer;->onNavigationEvent()I

    move-result p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/platform/GingerbreadPurgeableDecoder;->onPostMessage(Lo/getRootAlpha;I[B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
