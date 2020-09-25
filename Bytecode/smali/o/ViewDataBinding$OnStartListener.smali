.class final Lo/ViewDataBinding$OnStartListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ViewDataBinding$OnStartListener$onNavigationEvent;,
        Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Landroid/graphics/RectF;

.field private static ICustomTabsCallback$Stub:I

.field static final extraCallback:Landroid/graphics/Rect;

.field static final onMessageChannelReady:Landroid/graphics/RectF;

.field static final onNavigationEvent:[F

.field static final onPostMessage:[F

.field static onTransact:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lo/ViewDataBinding$OnStartListener;->extraCallback:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 58
    sput-object v1, Lo/ViewDataBinding$OnStartListener;->onPostMessage:[F

    new-array v0, v0, [F

    .line 63
    sput-object v0, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback([F)F
    .locals 2

    const/4 v0, 0x1

    .line 326
    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x7

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static ICustomTabsCallback(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, p3, :cond_0

    if-le p0, p2, :cond_1

    .line 763
    :cond_0
    :goto_0
    div-int/lit8 v1, p1, 0x2

    div-int/2addr v1, v0

    if-le v1, p3, :cond_1

    div-int/lit8 v1, p0, 0x2

    div-int/2addr v1, v0

    if-le v1, p2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static ICustomTabsCallback(Landroid/content/Context;Landroid/net/Uri;II)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;
    .locals 3

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 126
    invoke-static {p0, p1}, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 128
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "File is not a picture"

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_1
    :goto_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 134
    invoke-static {v1, v2, p2, p3}, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback(IIII)I

    move-result p2

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 136
    invoke-static {p3, v1}, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent(II)I

    move-result p3

    .line 133
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 139
    invoke-static {p0, p1, v0}, Lo/ViewDataBinding$OnStartListener;->extraCallback(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 141
    new-instance p2, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {p2, p0, p3}, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 144
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to load sampled bitmap: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static ICustomTabsCallback(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;
    .locals 16

    const/4 v0, 0x1

    const/4 v15, 0x1

    :goto_0
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v12, p11

    move/from16 v13, p12

    move v14, v15

    .line 269
    :try_start_0
    invoke-static/range {v1 .. v14}, Lo/ViewDataBinding$OnStartListener;->onPostMessage(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    shl-int/lit8 v15, v15, 0x1

    const/16 v0, 0x10

    if-gt v15, v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to handle OOM by sampling ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static ICustomTabsCallback(Landroid/graphics/Bitmap;[FIZIIZZ)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v2, v1

    div-float v8, v0, v2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 170
    :try_start_0
    invoke-static/range {v2 .. v10}, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    new-instance v2, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    invoke-direct {v2, v0, v1}, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    shl-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    throw v0
.end method

.method static asBinder([F)F
    .locals 6

    const/4 v0, 0x1

    .line 4326
    aget v1, p0, v0

    const/4 v2, 0x3

    aget v3, p0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x5

    aget v4, p0, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v4, 0x7

    aget v5, p0, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5312
    aget v0, p0, v0

    aget v2, p0, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget v2, p0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget p0, p0, v4

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    add-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v1, p0

    return v1
.end method

.method static asInterface([F)F
    .locals 6

    const/4 v0, 0x0

    .line 3319
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x4

    aget v4, p0, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v4, 0x6

    aget v5, p0, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 4305
    aget v0, p0, v0

    aget v2, p0, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget v2, p0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget p0, p0, v4

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    add-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v1, p0

    return v1
.end method

.method static extraCallback([F)F
    .locals 6

    const/4 v0, 0x0

    .line 1319
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x4

    aget v4, p0, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v4, 0x6

    aget v5, p0, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2305
    aget v0, p0, v0

    aget v2, p0, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget v2, p0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget p0, p0, v4

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sub-float/2addr v1, p0

    return v1
.end method

.method private static extraCallback(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    .line 660
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 661
    sget-object v1, Lo/ViewDataBinding$OnStartListener;->extraCallback:Landroid/graphics/Rect;

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 10868
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 663
    :catch_1
    :try_start_2
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 11868
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    nop

    .line 667
    :cond_1
    :goto_1
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x200

    if-gt v0, v1, :cond_2

    goto :goto_0

    .line 668
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to decode image: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    if-eqz v0, :cond_3

    .line 12868
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 666
    :catch_3
    :cond_3
    throw p0
.end method

.method static extraCallback(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Lo/ViewDataBinding$OnStartListener$onNavigationEvent;
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 p1, 0xb4

    .line 114
    :goto_0
    new-instance v0, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;

    invoke-direct {v0, p0, p1}, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method static onMessageChannelReady([F)F
    .locals 2

    const/4 v0, 0x0

    .line 319
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x6

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static onMessageChannelReady([FIIZII)Landroid/graphics/Rect;
    .locals 12

    const/4 v0, 0x0

    .line 6305
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v3, 0x4

    aget v4, p0, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v4, 0x6

    aget v5, p0, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v5, 0x0

    .line 368
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v6, 0x1

    .line 6312
    aget v7, p0, v6

    const/4 v8, 0x3

    aget v9, p0, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v9, 0x5

    aget v10, p0, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v10, 0x7

    aget v11, p0, v10

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 369
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v7, p1

    int-to-float v7, v7

    .line 6319
    aget v0, p0, v0

    aget v2, p0, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aget v2, p0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aget v2, p0, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 370
    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v2, p2

    int-to-float v2, v2

    .line 6326
    aget v3, p0, v6

    aget v4, p0, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aget v4, p0, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aget v4, p0, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 371
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 373
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v5, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p3, :cond_0

    move/from16 v0, p4

    move/from16 v1, p5

    .line 375
    invoke-static {v3, v0, v1}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady(Landroid/graphics/Rect;II)V

    :cond_0
    return-object v3
.end method

.method static onMessageChannelReady(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, "aic_state_store_temp"

    const-string v2, ".jpg"

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {p2, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 408
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 410
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 414
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6435
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x5f

    .line 6436
    :try_start_2
    invoke-virtual {p1, v0, v2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    .line 6868
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    .line 7868
    :try_start_4
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 6439
    :catch_0
    :cond_2
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_1
    :cond_3
    :goto_2
    return-object p2

    :catch_2
    move-exception p0

    const-string p1, "AIC"

    const-string p2, "Failed to write bitmap to temp file for image-cropper save instance state"

    .line 418
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static onMessageChannelReady(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;
    .locals 4

    const/4 v0, 0x0

    .line 682
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 686
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 685
    invoke-static {v2, v3, p3, p4}, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback(IIII)I

    move-result p3

    mul-int p5, p5, p3

    iput p5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 688
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p3, 0x0

    .line 689
    :try_start_1
    invoke-static {p0, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 692
    :cond_0
    :try_start_2
    new-instance p4, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    invoke-virtual {p3, p2, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p5

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {p4, p5, v2}, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    .line 13868
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 703
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_2
    return-object p4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    .line 694
    :catch_2
    :try_start_4
    iget p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p5, 0x1

    shl-int/2addr p4, p5

    iput p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 696
    iget p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v2, 0x200

    if-le p4, v2, :cond_0

    if-eqz p0, :cond_3

    .line 14868
    :try_start_5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    nop

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 703
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 706
    :cond_4
    new-instance p0, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    invoke-direct {p0, v0, p5}, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object p3, v0

    :goto_2
    move-object v0, p0

    goto :goto_5

    :catch_4
    move-exception p2

    move-object p3, v0

    :goto_3
    move-object v0, p0

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p3, v0

    goto :goto_5

    :catch_5
    move-exception p2

    move-object p3, v0

    .line 698
    :goto_4
    :try_start_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Failed to load sampled bitmap: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    :goto_5
    if-eqz v0, :cond_5

    .line 15868
    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    nop

    :cond_5
    :goto_6
    if-eqz p3, :cond_6

    .line 703
    invoke-virtual {p3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 705
    :cond_6
    throw p1
.end method

.method private static onMessageChannelReady(Landroid/graphics/Rect;II)V
    .locals 1

    if-ne p1, p2, :cond_1

    .line 386
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 387
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 388
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 390
    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method static onNavigationEvent([F)F
    .locals 2

    const/4 v0, 0x1

    .line 312
    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x7

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private static onNavigationEvent()I
    .locals 11

    const/16 v0, 0x800

    .line 819
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 820
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 824
    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 828
    invoke-interface {v1, v2, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 831
    aget v5, v4, v6

    new-array v5, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 832
    aget v7, v4, v6

    invoke-interface {v1, v2, v5, v7, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    new-array v3, v3, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 838
    :goto_0
    aget v9, v4, v6

    if-ge v7, v9, :cond_1

    .line 840
    aget-object v9, v5, v7

    const/16 v10, 0x302c

    invoke-interface {v1, v2, v9, v10, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 844
    aget v9, v3, v6

    if-ge v8, v9, :cond_0

    .line 845
    aget v8, v3, v6

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 850
    :cond_1
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 853
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private static onNavigationEvent(II)I
    .locals 3

    .line 776
    sget v0, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback$Stub:I

    if-nez v0, :cond_0

    .line 777
    invoke-static {}, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent()I

    move-result v0

    sput v0, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback$Stub:I

    .line 779
    :cond_0
    sget v0, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 780
    :goto_0
    div-int v0, p1, v1

    sget v2, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback$Stub:I

    if-gt v0, v2, :cond_1

    div-int v0, p0, v1

    if-le v0, v2, :cond_2

    :cond_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static onNavigationEvent(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;
    .locals 10

    move-object v7, p0

    move v8, p2

    move/from16 v0, p6

    .line 215
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 216
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 213
    invoke-static/range {v1 .. v6}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady([FIIZII)Landroid/graphics/Rect;

    move-result-object v9

    .line 222
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v8

    .line 223
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    if-eqz p7, :cond_0

    neg-float v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p8, :cond_1

    neg-float v0, v0

    .line 224
    :cond_1
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 225
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    .line 226
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v0, v7, :cond_2

    .line 230
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    :cond_2
    rem-int/lit8 v1, v8, 0x5a

    if-eqz v1, :cond_3

    move-object v1, p1

    move-object v2, v9

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 239
    invoke-static/range {v0 .. v6}, Lo/ViewDataBinding$OnStartListener;->onPostMessage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static onNavigationEvent(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 639
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 640
    :try_start_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 641
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 642
    sget-object v0, Lo/ViewDataBinding$OnStartListener;->extraCallback:Landroid/graphics/Rect;

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 8868
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 9868
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 647
    :catch_1
    :cond_1
    throw p1
.end method

.method private static onNavigationEvent(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const/4 v2, 0x0

    .line 587
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 591
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v5

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-static {v4, v5, v6, v7}, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback(IIII)I

    move-result v4

    mul-int v4, v4, p7

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 593
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Lo/ViewDataBinding$OnStartListener;->extraCallback(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 597
    :try_start_1
    array-length v6, v0

    new-array v7, v6, [F

    .line 598
    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v9, v6, :cond_0

    .line 600
    aget v0, v7, v9

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v8, v8

    div-float/2addr v0, v8

    aput v0, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    move-object v6, v5

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v13, p11

    move/from16 v14, p12

    .line 604
    invoke-static/range {v6 .. v14}, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v5, :cond_2

    .line 616
    :try_start_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 618
    :cond_1
    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 629
    :cond_2
    :goto_1
    new-instance v0, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    invoke-direct {v0, v2, v4}, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0

    :catch_0
    move-exception v0

    .line 626
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load sampled bitmap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    if-eqz v2, :cond_3

    .line 622
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 624
    :cond_3
    throw v0
.end method

.method static onPostMessage([F)F
    .locals 2

    const/4 v0, 0x0

    .line 305
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x6

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static onPostMessage(Landroid/graphics/Bitmap;IILo/setDrawerTitle$onTransact;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p0
.end method

.method private static onPostMessage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    .locals 8

    .line 723
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_6

    int-to-double v0, p3

    .line 726
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const/16 v2, 0x5a

    if-lt p3, v2, :cond_1

    const/16 v2, 0xb4

    if-le p3, v2, :cond_0

    const/16 v2, 0x10e

    if-ge p3, v2, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    iget p3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p3, p2, Landroid/graphics/Rect;->left:I

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 731
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 732
    aget v4, p1, v3

    add-int/lit8 v5, p3, -0x1

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    aget v4, p1, v3

    add-int/lit8 v5, p3, 0x1

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 733
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    add-int/lit8 v3, v3, 0x1

    aget v2, p1, v3

    sub-float/2addr p3, v2

    float-to-double v6, p3

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 734
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aget p3, p1, v3

    iget v6, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr p3, v6

    float-to-double v6, p3

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int p3, v4

    .line 735
    aget v4, p1, v3

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 736
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    aget p1, p1, v3

    sub-float/2addr v5, p1

    float-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_3
    add-int/2addr v4, v2

    add-int/2addr p1, p3

    .line 741
    invoke-virtual {p2, v2, p3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p4, :cond_4

    .line 743
    invoke-static {p2, p5, p6}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady(Landroid/graphics/Rect;II)V

    .line 747
    :cond_4
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p0, p1, p3, p4, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_5

    .line 749
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object p0, p1

    :cond_6
    return-object p0
.end method

.method private static onPostMessage(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;
    .locals 19

    move/from16 v0, p3

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 509
    invoke-static/range {v1 .. v6}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady([FIIZII)Landroid/graphics/Rect;

    move-result-object v9

    if-lez p9, :cond_0

    move/from16 v10, p9

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    move v10, v1

    :goto_0
    if-lez p10, :cond_1

    move/from16 v11, p10

    goto :goto_1

    .line 512
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    move v11, v1

    :goto_1
    const/4 v1, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v9

    move v5, v10

    move v6, v11

    move/from16 v7, p13

    .line 520
    :try_start_0
    invoke-static/range {v2 .. v7}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    move-result-object v2

    .line 521
    iget-object v1, v2, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap;

    .line 522
    iget v8, v2, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;->onPostMessage:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-eqz v1, :cond_9

    if-gtz v0, :cond_3

    if-nez p11, :cond_3

    if-eqz p12, :cond_2

    goto :goto_3

    :cond_2
    move-object v10, v1

    goto :goto_6

    .line 8795
    :cond_3
    :goto_3
    :try_start_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, v0

    .line 8796
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p11, :cond_4

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_4

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_4
    if-eqz p12, :cond_5

    goto :goto_5

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8797
    :goto_5
    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 8799
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v18, 0x0

    move-object v12, v1

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, v1, :cond_6

    .line 8801
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    move-object v10, v2

    .line 532
    :goto_6
    :try_start_2
    rem-int/lit8 v1, v0, 0x5a

    if-eqz v1, :cond_7

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v9

    move/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 537
    invoke-static/range {v1 .. v7}, Lo/ViewDataBinding$OnStartListener;->onPostMessage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 546
    :cond_7
    new-instance v0, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    invoke-direct {v0, v10, v8}, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0

    :catch_1
    move-exception v0

    move-object v1, v10

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_7
    if-eqz v1, :cond_8

    .line 542
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    :cond_8
    throw v0

    :cond_9
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p13

    move/from16 v12, p11

    move/from16 v13, p12

    .line 549
    invoke-static/range {v1 .. v13}, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method

.method static onPostMessage(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lo/ViewDataBinding$OnStartListener$onNavigationEvent;
    .locals 1

    const/4 v0, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    new-instance p2, Landroid/media/ExifInterface;

    invoke-direct {p2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, p2

    goto :goto_0

    :catch_1
    nop

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 88
    invoke-static {p0, v0}, Lo/ViewDataBinding$OnStartListener;->extraCallback(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Lo/ViewDataBinding$OnStartListener$onNavigationEvent;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p1
.end method

.method static onTransact([F)F
    .locals 6

    const/4 v0, 0x1

    .line 2326
    aget v1, p0, v0

    const/4 v2, 0x3

    aget v3, p0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x5

    aget v4, p0, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v4, 0x7

    aget v5, p0, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 3312
    aget v0, p0, v0

    aget v2, p0, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget v2, p0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget p0, p0, v4

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sub-float/2addr v1, p0

    return v1
.end method
