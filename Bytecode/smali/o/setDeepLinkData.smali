.class public final Lo/setDeepLinkData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$onMessageChannelReady<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lo/RatingCompat$StarStyle$onMessageChannelReady;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lo/RatingCompat$StarStyle$onMessageChannelReady;-><init>(I)V

    sput-object v0, Lo/setDeepLinkData;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/graphics/Bitmap;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_1

    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    nop

    .line 59
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0

    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method public static ICustomTabsCallback(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lo/setDeepLinkData;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {v0}, Lo/RatingCompat$StarStyle$onPostMessage;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    .line 106
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 109
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v2, 0x0

    .line 112
    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 114
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, -0x1

    if-eq p0, v3, :cond_2

    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne p0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/util/Pair;

    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_2
    :goto_0
    sget-object p0, Lo/setDeepLinkData;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/RatingCompat$StarStyle$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;)Z

    return-object v2

    :catchall_0
    move-exception p0

    sget-object v1, Lo/setDeepLinkData;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {v1, v0}, Lo/RatingCompat$StarStyle$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;)Z

    throw p0
.end method

.method public static extraCallback(Landroid/graphics/Bitmap$Config;)I
    .locals 3

    .line 161
    sget-object v0, Lo/setDeepLinkData$2;->ICustomTabsCallback:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    return p0

    .line 173
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The provided Bitmap.Config is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public static onMessageChannelReady(Ljava/io/InputStream;)Lo/initState$onPostMessage;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 131
    sget-object v1, Lo/setDeepLinkData;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {v1}, Lo/RatingCompat$StarStyle$onPostMessage;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/16 v1, 0x4000

    .line 133
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 135
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 136
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 139
    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 142
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p0, v3, :cond_1

    .line 143
    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 145
    :cond_1
    new-instance p0, Lo/initState$onPostMessage;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v3, v2, v0}, Lo/initState$onPostMessage;-><init>(IILandroid/graphics/ColorSpace;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    sget-object v0, Lo/setDeepLinkData;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/RatingCompat$StarStyle$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;)Z

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lo/setDeepLinkData;->extraCallback:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/RatingCompat$StarStyle$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;)Z

    throw p0

    .line 2215
    :cond_2
    throw v0
.end method

.method public static onNavigationEvent(IILandroid/graphics/Bitmap$Config;)I
    .locals 0

    mul-int p0, p0, p1

    .line 187
    invoke-static {p2}, Lo/setDeepLinkData;->extraCallback(Landroid/graphics/Bitmap$Config;)I

    move-result p1

    mul-int p0, p0, p1

    return p0
.end method
