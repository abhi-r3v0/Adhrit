.class public final Lo/AFSensorManager$2;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source ""

# interfaces
.implements Lo/afDebugLog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lo/afDebugLog;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 2093
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2215
    throw p1
.end method

.method public final synthetic ICustomTabsCallback(Lo/afInfoLog;)Ljava/lang/Object;
    .locals 1

    .line 4123
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback(Lo/afInfoLog;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4125
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    return-object p1
.end method

.method public final onMessageChannelReady(I)I
    .locals 0

    return p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 1

    .line 27
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 1117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method

.method public final synthetic onNavigationEvent(I)Ljava/lang/Object;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 4057
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    .line 4055
    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 3069
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3215
    throw p1
.end method

.method public final onPostMessage(I)I
    .locals 0

    return p1
.end method
