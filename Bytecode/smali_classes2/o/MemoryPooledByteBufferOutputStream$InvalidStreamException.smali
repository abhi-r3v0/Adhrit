.class final Lo/MemoryPooledByteBufferOutputStream$InvalidStreamException;
.super Ljava/lang/Object;

# interfaces
.implements Lo/PreverificationHelper;


# static fields
.field private static final extraCallback:Lo/nativePinBitmap;


# instance fields
.field private final onMessageChannelReady:Lo/nativePinBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/NativeMemoryChunkPool;

    invoke-direct {v0}, Lo/NativeMemoryChunkPool;-><init>()V

    sput-object v0, Lo/MemoryPooledByteBufferOutputStream$InvalidStreamException;->extraCallback:Lo/nativePinBitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lo/nativeCopyFromByteArray;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/nativePinBitmap;

    invoke-static {}, Lo/AwakeTimeSinceBootClock;->onMessageChannelReady()Lo/AwakeTimeSinceBootClock;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lo/MemoryPooledByteBufferOutputStream$InvalidStreamException;->ICustomTabsCallback()Lo/nativePinBitmap;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lo/nativeCopyFromByteArray;-><init>([Lo/nativePinBitmap;)V

    invoke-direct {p0, v0}, Lo/MemoryPooledByteBufferOutputStream$InvalidStreamException;-><init>(Lo/nativePinBitmap;)V

    return-void
.end method

.method private constructor <init>(Lo/nativePinBitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lo/ExceptionWithNoStacktrace;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/nativePinBitmap;

    iput-object p1, p0, Lo/MemoryPooledByteBufferOutputStream$InvalidStreamException;->onMessageChannelReady:Lo/nativePinBitmap;

    return-void
.end method

.method private static ICustomTabsCallback()Lo/nativePinBitmap;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/nativePinBitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lo/MemoryPooledByteBufferOutputStream$InvalidStreamException;->extraCallback:Lo/nativePinBitmap;

    return-object v0
.end method

.method private static ICustomTabsCallback(Lo/Bitmaps;)Z
    .locals 1

    invoke-interface {p0}, Lo/Bitmaps;->onNavigationEvent()I

    move-result p0

    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->asInterface:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Class;)Lo/nativeAddRoundedCornersFilter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/nativeAddRoundedCornersFilter<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lo/Api18TraceUtils;->onNavigationEvent(Ljava/lang/Class;)V

    iget-object v0, p0, Lo/MemoryPooledByteBufferOutputStream$InvalidStreamException;->onMessageChannelReady:Lo/nativePinBitmap;

    invoke-interface {v0, p1}, Lo/nativePinBitmap;->onNavigationEvent(Ljava/lang/Class;)Lo/Bitmaps;

    move-result-object v2

    invoke-interface {v2}, Lo/Bitmaps;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lo/RealtimeSinceBootClock;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lo/Api18TraceUtils;->onMessageChannelReady()Lo/shouldShowFaqCategoriesAsGrid;

    move-result-object p1

    invoke-static {}, Lo/FileUtils$CreateDirectoryException;->extraCallback()Lo/nativeCreateFromDirectByteBuffer;

    move-result-object v0

    invoke-interface {v2}, Lo/Bitmaps;->ICustomTabsCallback()Lo/NativeBlurFilter;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lo/NativeRoundingFilter;->onMessageChannelReady(Lo/shouldShowFaqCategoriesAsGrid;Lo/nativeCreateFromDirectByteBuffer;Lo/NativeBlurFilter;)Lo/NativeRoundingFilter;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lo/Api18TraceUtils;->extraCallback()Lo/shouldShowFaqCategoriesAsGrid;

    move-result-object p1

    invoke-static {}, Lo/FileUtils$CreateDirectoryException;->onMessageChannelReady()Lo/nativeCreateFromDirectByteBuffer;

    move-result-object v0

    invoke-interface {v2}, Lo/Bitmaps;->ICustomTabsCallback()Lo/NativeBlurFilter;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lo/NativeRoundingFilter;->onMessageChannelReady(Lo/shouldShowFaqCategoriesAsGrid;Lo/nativeCreateFromDirectByteBuffer;Lo/NativeBlurFilter;)Lo/NativeRoundingFilter;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lo/RealtimeSinceBootClock;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lo/MemoryPooledByteBufferOutputStream$InvalidStreamException;->ICustomTabsCallback(Lo/Bitmaps;)Z

    move-result v0

    invoke-static {}, Lo/toCircle;->onPostMessage()Lo/nativeTranscodeJpegWithExifOrientation;

    move-result-object v3

    invoke-static {}, Lo/BasePool$SizeTooLargeException;->ICustomTabsCallback()Lo/BasePool$SizeTooLargeException;

    move-result-object v4

    invoke-static {}, Lo/Api18TraceUtils;->onMessageChannelReady()Lo/shouldShowFaqCategoriesAsGrid;

    move-result-object v5

    if-eqz v0, :cond_2

    invoke-static {}, Lo/FileUtils$CreateDirectoryException;->extraCallback()Lo/nativeCreateFromDirectByteBuffer;

    move-result-object v6

    invoke-static {}, Lo/nativeCopyBitmap;->onPostMessage()Lo/copyBitmap;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lo/NativeCodeInitializer;->onMessageChannelReady(Ljava/lang/Class;Lo/Bitmaps;Lo/nativeTranscodeJpegWithExifOrientation;Lo/BasePool$SizeTooLargeException;Lo/shouldShowFaqCategoriesAsGrid;Lo/nativeCreateFromDirectByteBuffer;Lo/copyBitmap;)Lo/NativeCodeInitializer;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v6, 0x0

    invoke-static {}, Lo/nativeCopyBitmap;->onPostMessage()Lo/copyBitmap;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lo/NativeCodeInitializer;->onMessageChannelReady(Ljava/lang/Class;Lo/Bitmaps;Lo/nativeTranscodeJpegWithExifOrientation;Lo/BasePool$SizeTooLargeException;Lo/shouldShowFaqCategoriesAsGrid;Lo/nativeCreateFromDirectByteBuffer;Lo/copyBitmap;)Lo/NativeCodeInitializer;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lo/MemoryPooledByteBufferOutputStream$InvalidStreamException;->ICustomTabsCallback(Lo/Bitmaps;)Z

    move-result v0

    invoke-static {}, Lo/toCircle;->onNavigationEvent()Lo/nativeTranscodeJpegWithExifOrientation;

    move-result-object v3

    invoke-static {}, Lo/BasePool$SizeTooLargeException;->onMessageChannelReady()Lo/BasePool$SizeTooLargeException;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-static {}, Lo/Api18TraceUtils;->extraCallback()Lo/shouldShowFaqCategoriesAsGrid;

    move-result-object v5

    invoke-static {}, Lo/FileUtils$CreateDirectoryException;->onMessageChannelReady()Lo/nativeCreateFromDirectByteBuffer;

    move-result-object v6

    invoke-static {}, Lo/nativeCopyBitmap;->extraCallback()Lo/copyBitmap;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lo/NativeCodeInitializer;->onMessageChannelReady(Ljava/lang/Class;Lo/Bitmaps;Lo/nativeTranscodeJpegWithExifOrientation;Lo/BasePool$SizeTooLargeException;Lo/shouldShowFaqCategoriesAsGrid;Lo/nativeCreateFromDirectByteBuffer;Lo/copyBitmap;)Lo/NativeCodeInitializer;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lo/Api18TraceUtils;->onPostMessage()Lo/shouldShowFaqCategoriesAsGrid;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lo/nativeCopyBitmap;->extraCallback()Lo/copyBitmap;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lo/NativeCodeInitializer;->onMessageChannelReady(Ljava/lang/Class;Lo/Bitmaps;Lo/nativeTranscodeJpegWithExifOrientation;Lo/BasePool$SizeTooLargeException;Lo/shouldShowFaqCategoriesAsGrid;Lo/nativeCreateFromDirectByteBuffer;Lo/copyBitmap;)Lo/NativeCodeInitializer;

    move-result-object p1

    return-object p1
.end method
