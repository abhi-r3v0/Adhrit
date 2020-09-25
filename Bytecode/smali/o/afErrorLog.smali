.class public final Lo/afErrorLog;
.super Lo/signature;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/signature<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/signature;-><init>()V

    return-void
.end method

.method private static onNavigationEvent(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    const-string v2, "BitmapPoolBackend"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Cannot reuse a recycled bitmap: %s"

    .line 48
    invoke-static {v2, p0, v1}, Lo/setTranslateX;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Cannot reuse an immutable bitmap: %s"

    .line 52
    invoke-static {v2, p0, v1}, Lo/setTranslateX;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    return v3
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1040
    invoke-static {p1}, Lo/setDeepLinkData;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public final synthetic onPostMessage(I)Ljava/lang/Object;
    .locals 1

    .line 1030
    invoke-super {p0, p1}, Lo/signature;->onPostMessage(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 1031
    invoke-static {p1}, Lo/afErrorLog;->onNavigationEvent(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1032
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 1

    .line 16
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1022
    invoke-static {p1}, Lo/afErrorLog;->onNavigationEvent(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    invoke-super {p0, p1}, Lo/signature;->onPostMessage(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
