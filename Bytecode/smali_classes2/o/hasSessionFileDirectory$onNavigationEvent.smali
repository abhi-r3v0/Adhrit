.class final Lo/hasSessionFileDirectory$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasSessionFileDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/graphics/Bitmap;

.field private final onMessageChannelReady:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->onMessageChannelReady:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized extraCallback(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v0, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    .line 420
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 421
    new-instance v1, Landroid/util/Base64OutputStream;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 422
    iget-object v2, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 423
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 424
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "null"

    .line 418
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(IILandroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p2, :cond_1

    .line 398
    :cond_0
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 400
    :try_start_2
    iput-object p1, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    .line 403
    :goto_0
    iget-object p1, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 404
    iget-object p1, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 408
    :cond_1
    iget-object p1, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 409
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 410
    iget-object p2, p0, Lo/hasSessionFileDirectory$onNavigationEvent;->onMessageChannelReady:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
