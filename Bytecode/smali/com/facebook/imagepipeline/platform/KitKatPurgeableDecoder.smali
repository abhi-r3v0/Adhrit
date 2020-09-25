.class public Lcom/facebook/imagepipeline/platform/KitKatPurgeableDecoder;
.super Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;
.source ""


# annotations
.annotation build Lo/getGroupName;
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/AFSensorManager$4;


# direct methods
.method public constructor <init>(Lo/AFSensorManager$4;)V
    .locals 0
    .annotation build Lo/getGroupName;
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/imagepipeline/platform/KitKatPurgeableDecoder;->onMessageChannelReady:Lo/AFSensorManager$4;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getRootAlpha;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
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

    .line 74
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/platform/KitKatPurgeableDecoder;->ICustomTabsCallback(Lo/getRootAlpha;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/platform/KitKatPurgeableDecoder;->extraCallback:[B

    .line 75
    :goto_0
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 76
    invoke-interface {p1}, Lcom/facebook/common/memory/PooledByteBuffer;->onNavigationEvent()I

    move-result v1

    const/4 v2, 0x0

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 78
    iget-object v1, p0, Lcom/facebook/imagepipeline/platform/KitKatPurgeableDecoder;->onMessageChannelReady:Lo/AFSensorManager$4;

    add-int/lit8 v3, p2, 0x2

    .line 3046
    iget-object v4, v1, Lo/AFSensorManager$4;->extraCallback:Lo/AFSensorManager$4$onPostMessage;

    invoke-virtual {v4, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v1, v1, Lo/AFSensorManager$4;->onPostMessage:Lo/setPageMargin;

    invoke-static {v4, v1}, Lo/getRootAlpha;->extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;

    move-result-object v1

    .line 80
    :try_start_0
    invoke-virtual {v1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 81
    invoke-interface {p1, v2, v4, v2, p2}, Lcom/facebook/common/memory/PooledByteBuffer;->onMessageChannelReady(I[BII)I

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    .line 3095
    aput-byte p1, v4, p2

    add-int/lit8 p2, p2, 0x1

    const/16 p1, -0x27

    .line 3096
    aput-byte p1, v4, p2

    move p2, v3

    .line 86
    :cond_2
    invoke-static {v4, v2, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapFactory returned null"

    if-eqz p1, :cond_3

    .line 87
    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-object p1

    .line 3231
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 89
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1

    .line 2111
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final extraCallback(Lo/getRootAlpha;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
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

    .line 50
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 51
    invoke-interface {p1}, Lcom/facebook/common/memory/PooledByteBuffer;->onNavigationEvent()I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/facebook/imagepipeline/platform/KitKatPurgeableDecoder;->onMessageChannelReady:Lo/AFSensorManager$4;

    .line 1046
    iget-object v2, v1, Lo/AFSensorManager$4;->extraCallback:Lo/AFSensorManager$4$onPostMessage;

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, Lo/AFSensorManager$4;->onPostMessage:Lo/setPageMargin;

    invoke-static {v2, v1}, Lo/getRootAlpha;->extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;

    move-result-object v1

    .line 54
    :try_start_0
    invoke-virtual {v1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x0

    .line 55
    invoke-interface {p1, v3, v2, v3, v0}, Lcom/facebook/common/memory/PooledByteBuffer;->onMessageChannelReady(I[BII)I

    .line 56
    invoke-static {v2, v3, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapFactory returned null"

    if-eqz p1, :cond_0

    .line 57
    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-object p1

    .line 1231
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 59
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1
.end method
