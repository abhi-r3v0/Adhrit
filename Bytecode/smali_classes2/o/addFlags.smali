.class public final Lo/addFlags;
.super Lo/isAttachedToTransitionOverlay;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ \u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00152\u0006\u00100\u001a\u00020\u0015H\u0016J\u0018\u00101\u001a\u00020,2\u0006\u0010/\u001a\u00020\u00152\u0006\u00100\u001a\u00020\u0015H\u0002R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R$\u0010(\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001e\"\u0004\u0008*\u0010 \u00a8\u00062"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/internals/LinearBlurGradientHelper;",
        "Lcom/dreamplug/ui/neu/internals/BaseUiHelper;",
        "blur",
        "",
        "radius",
        "onlyBorder",
        "",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "blurStyle",
        "Landroid/graphics/BlurMaskFilter$Blur;",
        "(FFZLcom/dreamplug/ui/neu/internals/PaintHelper;Landroid/graphics/BlurMaskFilter$Blur;)V",
        "colorArray",
        "",
        "getColorArray",
        "()[I",
        "setColorArray",
        "([I)V",
        "paint",
        "Landroid/graphics/Paint;",
        "paintHeight",
        "",
        "paintWidth",
        "positionArray",
        "",
        "getPositionArray",
        "()[F",
        "setPositionArray",
        "([F)V",
        "getRadius",
        "()F",
        "setRadius",
        "(F)V",
        "rectArea",
        "Landroid/graphics/RectF;",
        "getRectArea",
        "()Landroid/graphics/RectF;",
        "setRectArea",
        "(Landroid/graphics/RectF;)V",
        "value",
        "strokeWidth",
        "getStrokeWidth",
        "setStrokeWidth",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "height",
        "width",
        "updatePaint",
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
.field private ICustomTabsCallback:Landroid/graphics/RectF;

.field private asInterface:I

.field public extraCallback:[F

.field public onMessageChannelReady:[I

.field private onNavigationEvent:F

.field private onPostMessage:Landroid/graphics/Paint;

.field private onTransact:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 7

    .line 10
    new-instance v0, Lo/performClickableSpanAction$onMessageChannelReady;

    invoke-direct {v0}, Lo/performClickableSpanAction$onMessageChannelReady;-><init>()V

    move-object v5, v0

    check-cast v5, Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 11
    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lo/addFlags;-><init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;)V

    return-void
.end method

.method private constructor <init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;)V
    .locals 0

    const-string p1, "paintHelper"

    invoke-static {p4, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "blurStyle"

    invoke-static {p5, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p4}, Lo/isAttachedToTransitionOverlay;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/addFlags;->onPostMessage:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lo/addFlags;->onNavigationEvent:F

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/addFlags;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "Resources.getSystem()"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 p3, 0x40000000    # 2.0f

    .line 2010
    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    iget-object p1, p0, Lo/addFlags;->onPostMessage:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 32
    iget-object p1, p0, Lo/addFlags;->onPostMessage:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    iget v0, p0, Lo/addFlags;->asInterface:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lo/addFlags;->onTransact:I

    if-eq p3, v0, :cond_2

    .line 1041
    :cond_0
    iput p2, p0, Lo/addFlags;->asInterface:I

    .line 1042
    iput p3, p0, Lo/addFlags;->onTransact:I

    .line 1044
    iget-object v0, p0, Lo/addFlags;->onMessageChannelReady:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/addFlags;->extraCallback:[F

    if-eqz v0, :cond_2

    .line 1045
    iget-object v0, p0, Lo/addFlags;->onPostMessage:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p3

    const/4 v5, 0x0

    .line 1048
    iget-object v6, p0, Lo/addFlags;->onMessageChannelReady:[I

    if-nez v6, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1049
    :cond_1
    iget-object v7, p0, Lo/addFlags;->extraCallback:[F

    .line 1050
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    .line 1045
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    check-cast v9, Landroid/graphics/Shader;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 57
    :cond_2
    iget-object v0, p0, Lo/addFlags;->ICustomTabsCallback:Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    iget-object p2, p0, Lo/addFlags;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget p3, p0, Lo/addFlags;->onNavigationEvent:F

    iget-object v0, p0, Lo/addFlags;->onPostMessage:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
