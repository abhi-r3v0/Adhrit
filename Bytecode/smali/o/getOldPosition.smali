.class public final Lo/getOldPosition;
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0007H\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u0007H\u0016J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010#\u001a\u00020\u00182\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u000e\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020\u0001J\u0010\u0010(\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u001dH\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015\u00a8\u0006*"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/drawables/ButtonIconContainerDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "cornerRadius",
        "",
        "pressed",
        "",
        "baseColor",
        "",
        "isElevatedFlat",
        "(FZIZ)V",
        "getBaseColor",
        "()I",
        "blurGradientHelper",
        "Lcom/dreamplug/ui/neu/internals/BlurGradientHelper;",
        "buttonIconDrawable",
        "getButtonIconDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setButtonIconDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "getCornerRadius",
        "()F",
        "()Z",
        "getPressed",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getOpacity",
        "getState",
        "",
        "setAlpha",
        "alpha",
        "setBounds",
        "bounds",
        "Landroid/graphics/Rect;",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "setDrawable",
        "drawable",
        "setState",
        "stateSet",
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
.field private final ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:Z

.field private final extraCallback:Z

.field private final onMessageChannelReady:F

.field private final onNavigationEvent:Lo/addChangePayload;

.field private onPostMessage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(FIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0, p2, p3}, Lo/getOldPosition;-><init>(FZIZ)V

    return-void
.end method

.method public constructor <init>(FZIZ)V
    .locals 7

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Lo/getOldPosition;->onMessageChannelReady:F

    iput-boolean p2, p0, Lo/getOldPosition;->extraCallback:Z

    iput p3, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    iput-boolean p4, p0, Lo/getOldPosition;->ICustomTabsCallback$Stub:Z

    .line 24
    new-instance p1, Lo/addChangePayload;

    sget-object p2, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-virtual {p2}, Lo/clearOldPosition;->onPostMessage()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const/4 v1, 0x0

    goto :goto_0

    .line 1009
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string p4, "Resources.getSystem()"

    invoke-static {p2, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p4, 0x3fc00000    # 1.5f

    .line 1010
    invoke-static {p3, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    move v1, p2

    .line 28
    :goto_0
    iget v2, p0, Lo/getOldPosition;->onMessageChannelReady:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    move-object v0, p1

    .line 24
    invoke-direct/range {v0 .. v6}, Lo/addChangePayload;-><init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;I)V

    iput-object p1, p0, Lo/getOldPosition;->onNavigationEvent:Lo/addChangePayload;

    .line 32
    sget-object p2, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-virtual {p2}, Lo/clearOldPosition;->onPostMessage()Z

    move-result p2

    const/4 p4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-array p2, p4, [I

    .line 33
    iget v2, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    const-wide v3, 0x3fb0624dd2f1a9fcL    # 0.064

    .line 2009
    invoke-static {v2, v3, v4, v1}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v2

    aput v2, p2, v0

    .line 33
    iget v2, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    .line 3009
    invoke-static {v2, v3, v4, v1}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v1

    aput v1, p2, p3

    goto/16 :goto_1

    .line 35
    :cond_1
    iget-boolean p2, p0, Lo/getOldPosition;->ICustomTabsCallback$Stub:Z

    if-eqz p2, :cond_3

    .line 36
    iget-boolean p2, p0, Lo/getOldPosition;->extraCallback:Z

    if-eqz p2, :cond_2

    new-array p2, p4, [I

    .line 37
    iget v2, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    const-wide v3, 0x3fdccccccccccccdL    # 0.45

    .line 3024
    invoke-static {v2, v3, v4, v1}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v2

    aput v2, p2, v0

    .line 37
    iget v2, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    const-wide v3, 0x3faeb851eb851eb8L    # 0.06

    .line 4024
    invoke-static {v2, v3, v4, v1}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v1

    aput v1, p2, p3

    goto :goto_1

    :cond_2
    new-array p2, p4, [I

    .line 39
    iget v2, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    const-wide v3, 0x3fd1eb851eb851ecL    # 0.28

    .line 5024
    invoke-static {v2, v3, v4, v1}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v2

    aput v2, p2, v0

    .line 39
    iget v2, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    const-wide v3, 0x3fa999999999999aL    # 0.05

    .line 6024
    invoke-static {v2, v3, v4, v1}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v1

    aput v1, p2, p3

    goto :goto_1

    .line 42
    :cond_3
    iget-boolean p2, p0, Lo/getOldPosition;->extraCallback:Z

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    if-eqz p2, :cond_4

    new-array p2, p4, [I

    .line 43
    iget v4, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 7024
    invoke-static {v4, v5, v6, v1}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v4

    aput v4, p2, v0

    .line 43
    iget v4, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    .line 8009
    invoke-static {v4, v2, v3, v1}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v1

    aput v1, p2, p3

    goto :goto_1

    :cond_4
    new-array p2, p4, [I

    .line 45
    iget v4, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    .line 8024
    invoke-static {v4, v2, v3, v1}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v4

    aput v4, p2, v0

    .line 45
    iget v4, p0, Lo/getOldPosition;->ICustomTabsCallback:I

    .line 9009
    invoke-static {v4, v2, v3, v1}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v1

    aput v1, p2, p3

    .line 9017
    :goto_1
    iput-object p2, p1, Lo/addChangePayload;->onPostMessage:[I

    .line 49
    iget-object p1, p0, Lo/getOldPosition;->onNavigationEvent:Lo/addChangePayload;

    new-array p2, p4, [F

    fill-array-data p2, :array_0

    .line 10016
    iput-object p2, p1, Lo/addChangePayload;->extraCallback:[F

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lo/getOldPosition;->onMessageChannelReady:F

    float-to-int p4, p2

    shl-int/2addr p4, p3

    float-to-int p2, p2

    shl-int/2addr p2, p3

    invoke-direct {p1, v0, v0, p4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lo/getOldPosition;->onNavigationEvent:Lo/addChangePayload;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V

    .line 55
    iget v0, p0, Lo/getOldPosition;->onMessageChannelReady:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    mul-float v0, v0, v1

    div-float/2addr v0, v3

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 91
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    :try_start_0
    iget-object v0, p0, Lo/getOldPosition;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getState()[I
    .locals 2

    .line 80
    iget-object v0, p0, Lo/getOldPosition;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const-string/jumbo v1, "super.getState()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final onNavigationEvent(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lo/getOldPosition;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setBounds(Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 72
    iget-object v0, p0, Lo/getOldPosition;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final setState([I)Z
    .locals 1

    const-string/jumbo v0, "stateSet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lo/getOldPosition;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
