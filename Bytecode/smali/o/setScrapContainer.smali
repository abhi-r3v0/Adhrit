.class public final Lo/setScrapContainer;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B+\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\tH\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\tH\u0016J\u0012\u0010\u0016\u001a\u00020\u00102\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/drawables/ElevatedSoftButtonDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "pressed",
        "",
        "cornerRadius",
        "",
        "baseColor",
        "",
        "(Lcom/dreamplug/ui/neu/internals/PaintHelper;ZFI)V",
        "backgroundPlatformDrawable",
        "Lcom/dreamplug/ui/neu/internals/PlatformHelper;",
        "getPressed",
        "()Z",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getOpacity",
        "setAlpha",
        "alpha",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:I

.field private onMessageChannelReady:Lo/setThumbPosition$extraCallback;

.field private final onPostMessage:Z


# direct methods
.method private constructor <init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFI)V
    .locals 1

    const-string v0, "paintHelper"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean p2, p0, Lo/setScrapContainer;->onPostMessage:Z

    iput p4, p0, Lo/setScrapContainer;->extraCallback:I

    .line 21
    new-instance v0, Lo/setThumbPosition$extraCallback;

    invoke-direct {v0, p4, p3, p2, p1}, Lo/setThumbPosition$extraCallback;-><init>(IFZLo/MediaSessionCompat$1$onMessageChannelReady;)V

    iput-object v0, p0, Lo/setScrapContainer;->onMessageChannelReady:Lo/setThumbPosition$extraCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFII)V
    .locals 1

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    .line 15
    new-instance p1, Lo/performClickableSpanAction$onMessageChannelReady;

    invoke-direct {p1}, Lo/performClickableSpanAction$onMessageChannelReady;-><init>()V

    check-cast p1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const p4, -0xdedcdc

    .line 18
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setScrapContainer;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFI)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 26
    iget-object v3, p0, Lo/setScrapContainer;->onMessageChannelReady:Lo/setThumbPosition$extraCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    iget v0, v3, Lo/setThumbPosition$extraCallback;->asInterface:F

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 1079
    iget v0, v3, Lo/setThumbPosition$extraCallback;->asInterface:F

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    int-to-float v7, v2

    int-to-float v8, v1

    .line 1080
    sget-object v9, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    iget v0, v3, Lo/setThumbPosition$extraCallback;->asInterface:F

    neg-float v0, v0

    iget v4, v3, Lo/setThumbPosition$extraCallback;->asInterface:F

    neg-float v4, v4

    .line 1099
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1100
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1084
    :try_start_0
    iget v0, v3, Lo/setThumbPosition$extraCallback;->onMessageChannelReady:I

    iget v4, v3, Lo/setThumbPosition$extraCallback;->onMessageChannelReady:I

    iget v6, v3, Lo/setThumbPosition$extraCallback;->onMessageChannelReady:I

    sub-int v6, v2, v6

    iget v7, v3, Lo/setThumbPosition$extraCallback;->onMessageChannelReady:I

    sub-int v7, v1, v7

    .line 1103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 1104
    invoke-virtual {p1, v0, v4, v6, v7}, Landroid/graphics/Canvas;->clipOutRect(IIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1085
    :try_start_1
    iget v0, v3, Lo/setThumbPosition$extraCallback;->ICustomTabsCallback$Stub:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iget v6, v3, Lo/setThumbPosition$extraCallback;->ICustomTabsCallback$Stub:F

    div-float/2addr v6, v4

    .line 1107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 1108
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1086
    :try_start_2
    iget-object v0, v3, Lo/setThumbPosition$extraCallback;->extraCallback:Lo/createPayloadsIfNeeded;

    invoke-virtual {v0, p1, v1, v2}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1112
    :try_start_3
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1088
    iget v0, v3, Lo/setThumbPosition$extraCallback;->ICustomTabsCallback$Stub:F

    neg-float v0, v0

    div-float/2addr v0, v4

    iget v6, v3, Lo/setThumbPosition$extraCallback;->ICustomTabsCallback$Stub:F

    neg-float v6, v6

    div-float/2addr v6, v4

    .line 1115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1116
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1089
    :try_start_4
    iget-object v0, v3, Lo/setThumbPosition$extraCallback;->ICustomTabsCallback:Lo/createPayloadsIfNeeded;

    invoke-virtual {v0, p1, v1, v2}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1120
    :try_start_5
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1123
    :try_start_6
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1093
    iget-object v0, v3, Lo/setThumbPosition$extraCallback;->onPostMessage:Lo/addChangePayload;

    invoke-virtual {v0, p1, v1, v2}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V

    .line 1094
    iget-object v0, v3, Lo/setThumbPosition$extraCallback;->onNavigationEvent:Lo/addChangePayload;

    invoke-virtual {v0, p1, v1, v2}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1126
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 1120
    :try_start_7
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :catchall_1
    move-exception v0

    .line 1112
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 1123
    :try_start_8
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    .line 1126
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_0
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
