.class public abstract Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyerLib;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder$OreoUtils;
    }
.end annotation

.annotation build Lo/getGroupName;
.end annotation


# static fields
.field protected static final extraCallback:[B


# instance fields
.field private final onPostMessage:Lo/resetDeltaTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lo/onConversionDataFail;->onPostMessage()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 45
    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->extraCallback:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lo/afRDLog;->onMessageChannelReady()Lo/resetDeltaTime;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->onPostMessage:Lo/resetDeltaTime;

    return-void
.end method

.method private ICustomTabsCallback(Landroid/graphics/Bitmap;)Lo/getRootAlpha;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 212
    :try_start_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->nativePinBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    iget-object v0, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->onPostMessage:Lo/resetDeltaTime;

    invoke-virtual {v0, p1}, Lo/resetDeltaTime;->onPostMessage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->onPostMessage:Lo/resetDeltaTime;

    .line 6100
    iget-object v0, v0, Lo/resetDeltaTime;->onMessageChannelReady:Lo/setPageMargin;

    .line 233
    invoke-static {p1, v0}, Lo/getRootAlpha;->extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    invoke-static {p1}, Lo/setDeepLinkData;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->onPostMessage:Lo/resetDeltaTime;

    .line 227
    invoke-virtual {v2}, Lo/resetDeltaTime;->onMessageChannelReady()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->onPostMessage:Lo/resetDeltaTime;

    .line 228
    invoke-virtual {v2}, Lo/resetDeltaTime;->onNavigationEvent()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->onPostMessage:Lo/resetDeltaTime;

    .line 229
    invoke-virtual {v2}, Lo/resetDeltaTime;->onPostMessage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->onPostMessage:Lo/resetDeltaTime;

    .line 230
    invoke-virtual {v2}, Lo/resetDeltaTime;->extraCallback()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Attempted to pin a bitmap of size %d bytes. The current pool count is %d, the current pool size is %d bytes. The current pool max count is %d, the current pool max size is %d bytes."

    .line 221
    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 231
    new-instance v0, Lcom/facebook/imagepipeline/common/TooManyBitmapsException;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/common/TooManyBitmapsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 5151
    move-object p1, v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 5152
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 4215
    throw p1
.end method

.method public static ICustomTabsCallback(Lo/getRootAlpha;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;I)Z"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/common/memory/PooledByteBuffer;

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x2

    .line 187
    invoke-interface {p0, v0}, Lcom/facebook/common/memory/PooledByteBuffer;->onMessageChannelReady(I)B

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 188
    invoke-interface {p0, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->onMessageChannelReady(I)B

    move-result p0

    const/16 p1, -0x27

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static extraCallback(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 168
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 169
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 170
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 172
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 174
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 176
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 177
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xb

    if-lt p0, p1, :cond_0

    .line 178
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_0
    return-object v0
.end method

.method private static native nativePinBitmap(Landroid/graphics/Bitmap;)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(Lo/getRootAlpha;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
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
.end method

.method public final ICustomTabsCallback(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;I)Lo/getRootAlpha;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCardBackgroundColor;",
            "Landroid/graphics/Bitmap$Config;",
            "I)",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->ICustomTabsCallback(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCardBackgroundColor;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "I",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2255
    iget p3, p1, Lo/getCardBackgroundColor;->onRelationshipValidationResult:I

    .line 128
    invoke-static {p3, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->extraCallback(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    .line 129
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_0

    .line 130
    invoke-static {p2, p5}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder$OreoUtils;->extraCallback(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 3138
    :cond_0
    iget-object p1, p1, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 135
    :try_start_0
    invoke-virtual {p0, p1, p4, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->ICustomTabsCallback(Lo/getRootAlpha;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 136
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->ICustomTabsCallback(Landroid/graphics/Bitmap;)Lo/getRootAlpha;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    .line 3215
    throw p1
.end method

.method protected abstract extraCallback(Lo/getRootAlpha;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
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
.end method

.method public final onMessageChannelReady(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCardBackgroundColor;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1255
    iget p3, p1, Lo/getCardBackgroundColor;->onRelationshipValidationResult:I

    .line 91
    invoke-static {p3, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->extraCallback(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    .line 92
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_0

    .line 93
    invoke-static {p2, p4}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder$OreoUtils;->extraCallback(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 2138
    :cond_0
    iget-object p1, p1, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->extraCallback(Lo/getRootAlpha;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 99
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->ICustomTabsCallback(Landroid/graphics/Bitmap;)Lo/getRootAlpha;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    .line 2215
    throw p1
.end method
