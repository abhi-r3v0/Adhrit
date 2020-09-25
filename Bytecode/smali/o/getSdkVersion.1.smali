.class public abstract Lo/getSdkVersion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyerLib;


# static fields
.field private static final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:[B


# instance fields
.field private final ICustomTabsCallback:Lcom/facebook/imagepipeline/platform/PreverificationHelper;

.field private extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$onMessageChannelReady<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/afDebugLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lo/getSdkVersion;

    sput-object v0, Lo/getSdkVersion;->onMessageChannelReady:Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 60
    fill-array-data v0, :array_0

    sput-object v0, Lo/getSdkVersion;->onNavigationEvent:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method public constructor <init>(Lo/afDebugLog;ILo/RatingCompat$StarStyle$onMessageChannelReady;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/facebook/imagepipeline/platform/PreverificationHelper;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/platform/PreverificationHelper;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/getSdkVersion;->ICustomTabsCallback:Lcom/facebook/imagepipeline/platform/PreverificationHelper;

    .line 64
    iput-object p1, p0, Lo/getSdkVersion;->onPostMessage:Lo/afDebugLog;

    .line 65
    iput-object p3, p0, Lo/getSdkVersion;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_1

    .line 67
    iget-object p3, p0, Lo/getSdkVersion;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lo/RatingCompat$StarStyle$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private onNavigationEvent(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lo/getRootAlpha;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/graphics/BitmapFactory$Options;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 195
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 196
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz p3, :cond_0

    .line 198
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v2

    .line 199
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v3

    .line 203
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_1

    .line 204
    iget-object v3, p0, Lo/getSdkVersion;->ICustomTabsCallback:Lcom/facebook/imagepipeline/platform/PreverificationHelper;

    if-eqz v3, :cond_1

    iget-object v7, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 206
    invoke-virtual {v3, v7}, Lcom/facebook/imagepipeline/platform/PreverificationHelper;->shouldUseHardwareBitmapConfig(Landroid/graphics/Bitmap$Config;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez p3, :cond_2

    if-eqz v3, :cond_2

    .line 210
    iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    move-object v3, v0

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    if-eqz v3, :cond_3

    .line 214
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 216
    :cond_3
    invoke-virtual {p0, v1, v2, p2}, Lo/getSdkVersion;->onNavigationEvent(IILandroid/graphics/BitmapFactory$Options;)I

    move-result v3

    .line 217
    iget-object v7, p0, Lo/getSdkVersion;->onPostMessage:Lo/afDebugLog;

    invoke-interface {v7, v3}, Lo/afDebugLog;->extraCallback(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_11

    .line 224
    :goto_1
    iput-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 227
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v4, :cond_5

    if-nez p4, :cond_4

    .line 228
    sget-object p4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 229
    invoke-static {p4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p4

    :cond_4
    iput-object p4, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 233
    :cond_5
    iget-object p4, p0, Lo/getSdkVersion;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {p4}, Lo/RatingCompat$StarStyle$onPostMessage;->onPostMessage()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/nio/ByteBuffer;

    if-nez p4, :cond_6

    const/16 p4, 0x4000

    .line 235
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 238
    :cond_6
    :try_start_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iput-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 239
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v7, 0x13

    if-lt v4, v7, :cond_8

    if-eqz p3, :cond_8

    if-eqz v3, :cond_8

    .line 244
    :try_start_1
    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v1, v2, v4}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 245
    invoke-static {p1, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    invoke-virtual {v1, p3, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_9

    .line 251
    :try_start_3
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-object v1, v0

    .line 248
    :catch_1
    :try_start_4
    sget-object v2, Lo/getSdkVersion;->onMessageChannelReady:Ljava/lang/Class;

    const-string v4, "Could not decode region %s, decoding full bitmap instead."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v6

    invoke-static {v2, v4, v5}, Lo/setTranslateX;->extraCallback(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_8

    .line 251
    :try_start_5
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_7
    throw p2

    :cond_8
    :goto_3
    move-object p3, v0

    :cond_9
    :goto_4
    if-nez p3, :cond_a

    .line 256
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 284
    :cond_a
    iget-object p1, p0, Lo/getSdkVersion;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {p1, p4}, Lo/RatingCompat$StarStyle$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;)Z

    if-eqz v3, :cond_c

    if-ne v3, p3, :cond_b

    goto :goto_5

    .line 290
    :cond_b
    iget-object p1, p0, Lo/getSdkVersion;->onPostMessage:Lo/afDebugLog;

    invoke-interface {p1, v3}, Lo/afDebugLog;->extraCallback(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 295
    :cond_c
    :goto_5
    iget-object p1, p0, Lo/getSdkVersion;->onPostMessage:Lo/afDebugLog;

    invoke-static {p3, p1}, Lo/getRootAlpha;->extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1

    :catchall_2
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    if-eqz v3, :cond_d

    .line 280
    :try_start_6
    iget-object p2, p0, Lo/getSdkVersion;->onPostMessage:Lo/afDebugLog;

    invoke-interface {p2, v3}, Lo/afDebugLog;->extraCallback(Ljava/lang/Object;)V

    .line 282
    :cond_d
    throw p1

    :catch_3
    move-exception p2

    if-eqz v3, :cond_e

    .line 260
    iget-object p3, p0, Lo/getSdkVersion;->onPostMessage:Lo/afDebugLog;

    invoke-interface {p3, v3}, Lo/afDebugLog;->extraCallback(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 266
    :cond_e
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 268
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 5019
    sget-object p3, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    if-nez p3, :cond_f

    .line 5020
    new-instance p3, Lo/setSelectionAnimationInterpolator;

    invoke-direct {p3}, Lo/setSelectionAnimationInterpolator;-><init>()V

    sput-object p3, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    .line 5022
    :cond_f
    sget-object p3, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    .line 272
    invoke-static {p1, p3}, Lo/getRootAlpha;->extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;

    move-result-object p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 284
    iget-object p2, p0, Lo/getSdkVersion;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {p2, p4}, Lo/RatingCompat$StarStyle$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;)Z

    return-object p1

    .line 270
    :cond_10
    :try_start_8
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 276
    :catch_4
    :try_start_9
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 284
    :goto_6
    iget-object p2, p0, Lo/getSdkVersion;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {p2, p4}, Lo/RatingCompat$StarStyle$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;)Z

    throw p1

    .line 219
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "BitmapPool.get returned null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4215
    :cond_12
    throw v0
.end method

.method private static onPostMessage(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .line 303
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5255
    iget v1, p0, Lo/getCardBackgroundColor;->onRelationshipValidationResult:I

    .line 305
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    .line 306
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 309
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    .line 313
    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 314
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 315
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 316
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-object v0

    .line 310
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
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

    .line 83
    invoke-virtual/range {v0 .. v5}, Lo/getSdkVersion;->ICustomTabsCallback(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lo/getRootAlpha;
    .locals 5
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

    .line 1268
    :goto_0
    iget-object p3, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    sget-object v0, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v0, :cond_0

    iget-object p3, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    sget-object v0, Lo/getFrame;->newSession:Lo/setProgress;

    if-eq p3, v0, :cond_0

    goto :goto_1

    .line 1272
    :cond_0
    iget-object p3, p1, Lo/getCardBackgroundColor;->onPostMessage:Lo/setPivotX;

    if-eqz p3, :cond_1

    :goto_1
    const/4 p3, 0x1

    goto :goto_2

    .line 1276
    :cond_1
    iget-object p3, p1, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    if-eqz p3, :cond_8

    .line 1277
    iget-object p3, p1, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-virtual {p3}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/facebook/common/memory/PooledByteBuffer;

    add-int/lit8 v0, p4, -0x2

    .line 1278
    invoke-interface {p3, v0}, Lcom/facebook/common/memory/PooledByteBuffer;->onMessageChannelReady(I)B

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    add-int/lit8 v0, p4, -0x1

    .line 1279
    invoke-interface {p3, v0}, Lcom/facebook/common/memory/PooledByteBuffer;->onMessageChannelReady(I)B

    move-result p3

    const/16 v0, -0x27

    if-ne p3, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 141
    :goto_2
    invoke-static {p1, p2}, Lo/getSdkVersion;->onPostMessage(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    .line 142
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 147
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v4

    if-le v4, p4, :cond_3

    .line 148
    new-instance v4, Lo/setPageMarginDrawable;

    invoke-direct {v4, v0, p4}, Lo/setPageMarginDrawable;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v4

    :cond_3
    if-nez p3, :cond_4

    .line 151
    new-instance p3, Lo/FragmentStateAdapter$5;

    sget-object v4, Lo/getSdkVersion;->onNavigationEvent:[B

    invoke-direct {p3, v0, v4}, Lo/FragmentStateAdapter$5;-><init>(Ljava/io/InputStream;[B)V

    move-object v0, p3

    .line 153
    :cond_4
    iget-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p3, v4, :cond_5

    const/4 v1, 0x1

    .line 155
    :cond_5
    :try_start_0
    invoke-direct {p0, v0, p2, v2, p5}, Lo/getSdkVersion;->onNavigationEvent(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lo/getRootAlpha;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    if-eqz v1, :cond_6

    .line 158
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 161
    :cond_6
    throw p2

    .line 3215
    :cond_7
    throw v2

    .line 2215
    :cond_8
    throw v2
.end method

.method public final onMessageChannelReady(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lo/getRootAlpha;
    .locals 2
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

    .line 106
    :goto_0
    invoke-static {p1, p2}, Lo/getSdkVersion;->onPostMessage(Lo/getCardBackgroundColor;Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    .line 107
    iget-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    .line 109
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1, p4}, Lo/getSdkVersion;->onNavigationEvent(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lo/getRootAlpha;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    if-eqz p3, :cond_1

    .line 112
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 115
    :cond_1
    throw p2
.end method

.method public abstract onNavigationEvent(IILandroid/graphics/BitmapFactory$Options;)I
.end method
