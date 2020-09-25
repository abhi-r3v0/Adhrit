.class public final Lo/isRemoved;
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0003H\u0016J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0003H\u0016J\u0012\u0010\u0017\u001a\u00020\u00112\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/drawables/NeuCompatDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "baseColor",
        "",
        "cornerRadius",
        "",
        "verticalInset",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "(IFFLcom/dreamplug/ui/neu/internals/PaintHelper;)V",
        "getBaseColor",
        "()I",
        "darkBackground",
        "Lcom/dreamplug/ui/neu/internals/BlurHelper;",
        "getVerticalInset",
        "()F",
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
.field private final onMessageChannelReady:I

.field private final onNavigationEvent:F

.field private final onPostMessage:Lo/createPayloadsIfNeeded;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/isRemoved;-><init>(IFFLo/MediaSessionCompat$1$onMessageChannelReady;I)V

    return-void
.end method

.method private constructor <init>(IFFLo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 7

    const-string v0, "paintHelper"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Lo/isRemoved;->onMessageChannelReady:I

    iput p3, p0, Lo/isRemoved;->onNavigationEvent:F

    .line 19
    new-instance p3, Lo/createPayloadsIfNeeded;

    const/4 v2, 0x0

    const/16 v6, 0x8

    move-object v1, p3

    move v3, p2

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lo/createPayloadsIfNeeded;-><init>(FFILo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object p3, p0, Lo/isRemoved;->onPostMessage:Lo/createPayloadsIfNeeded;

    return-void
.end method

.method public synthetic constructor <init>(IFFLo/MediaSessionCompat$1$onMessageChannelReady;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    const p1, -0xdedcdc

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "Resources.getSystem()"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v1, 0x1

    .line 1010
    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 16
    new-instance p4, Lo/performClickableSpanAction$onMessageChannelReady;

    invoke-direct {p4}, Lo/performClickableSpanAction$onMessageChannelReady;-><init>()V

    check-cast p4, Lo/MediaSessionCompat$1$onMessageChannelReady;

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lo/isRemoved;-><init>(IFFLo/MediaSessionCompat$1$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lo/isRemoved;->onNavigationEvent:F

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 26
    iget v2, p0, Lo/isRemoved;->onNavigationEvent:F

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    const/4 v4, 0x0

    .line 42
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    :try_start_0
    iget-object v2, p0, Lo/isRemoved;->onPostMessage:Lo/createPayloadsIfNeeded;

    invoke-virtual {v2, p1, v0, v1}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
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
