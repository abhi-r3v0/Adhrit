.class public final Lo/createPayloadsIfNeeded;
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ \u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006H\u0016J\u0008\u0010&\u001a\u00020!H\u0002R$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000e\"\u0004\u0008\u001f\u0010\u0010\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/internals/BlurHelper;",
        "Lcom/dreamplug/ui/neu/internals/BaseUiHelper;",
        "blur",
        "",
        "radius",
        "shadowColor",
        "",
        "onlyBorder",
        "",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "(FFIZLcom/dreamplug/ui/neu/internals/PaintHelper;)V",
        "value",
        "getBlur",
        "()F",
        "setBlur",
        "(F)V",
        "getOnlyBorder",
        "()Z",
        "paint",
        "Landroid/graphics/Paint;",
        "getRadius",
        "setRadius",
        "rectArea",
        "Landroid/graphics/RectF;",
        "getShadowColor",
        "()I",
        "setShadowColor",
        "(I)V",
        "strokeWidth",
        "getStrokeWidth",
        "setStrokeWidth",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "height",
        "width",
        "updateShader",
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
.field private ICustomTabsCallback:I

.field private final asBinder:Landroid/graphics/RectF;

.field private final asInterface:Z

.field public extraCallback:Landroid/graphics/Paint;

.field public onMessageChannelReady:F

.field public onNavigationEvent:F

.field private onPostMessage:F


# direct methods
.method public synthetic constructor <init>(FFILo/MediaSessionCompat$1$onMessageChannelReady;I)V
    .locals 6

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    .line 14
    new-instance p4, Lo/performClickableSpanAction$onMessageChannelReady;

    invoke-direct {p4}, Lo/performClickableSpanAction$onMessageChannelReady;-><init>()V

    check-cast p4, Lo/MediaSessionCompat$1$onMessageChannelReady;

    :cond_0
    move-object v5, p4

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lo/createPayloadsIfNeeded;-><init>(FFIZLo/MediaSessionCompat$1$onMessageChannelReady;)V

    return-void
.end method

.method public constructor <init>(FFIZLo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 3

    const-string v0, "paintHelper"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p5}, Lo/isAttachedToTransitionOverlay;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    iput-boolean p4, p0, Lo/createPayloadsIfNeeded;->asInterface:Z

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p4

    const-string p5, "Resources.getSystem()"

    invoke-static {p4, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1010
    invoke-static {v1, v0, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    .line 18
    iput p4, p0, Lo/createPayloadsIfNeeded;->onPostMessage:F

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p4, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    const/high16 v2, 0x41800000    # 16.0f

    .line 2010
    invoke-static {v1, v2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    .line 25
    iput p4, p0, Lo/createPayloadsIfNeeded;->onNavigationEvent:F

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p4, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    const/high16 p5, 0x40000000    # 2.0f

    .line 3010
    invoke-static {v1, p5, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    .line 29
    iput p4, p0, Lo/createPayloadsIfNeeded;->onMessageChannelReady:F

    const/high16 p4, -0x78000000

    .line 35
    iput p4, p0, Lo/createPayloadsIfNeeded;->ICustomTabsCallback:I

    .line 43
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lo/createPayloadsIfNeeded;->extraCallback:Landroid/graphics/Paint;

    .line 44
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lo/createPayloadsIfNeeded;->asBinder:Landroid/graphics/RectF;

    .line 47
    iget-object p4, p0, Lo/createPayloadsIfNeeded;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 48
    iget-boolean p4, p0, Lo/createPayloadsIfNeeded;->asInterface:Z

    if-eqz p4, :cond_0

    .line 49
    iget-object p4, p0, Lo/createPayloadsIfNeeded;->extraCallback:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p4, p0, Lo/createPayloadsIfNeeded;->extraCallback:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3027
    :goto_0
    iput p2, p0, Lo/createPayloadsIfNeeded;->onNavigationEvent:F

    .line 4020
    iget p2, p0, Lo/createPayloadsIfNeeded;->onPostMessage:F

    cmpg-float p2, p2, p1

    if-eqz p2, :cond_1

    .line 4021
    iput p1, p0, Lo/createPayloadsIfNeeded;->onPostMessage:F

    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    .line 4062
    iget-object p2, p0, Lo/createPayloadsIfNeeded;->extraCallback:Landroid/graphics/Paint;

    new-instance p4, Landroid/graphics/BlurMaskFilter;

    iget p5, p0, Lo/createPayloadsIfNeeded;->onPostMessage:F

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p4, p5, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast p4, Landroid/graphics/MaskFilter;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_1
    cmpg-float p1, p1, v0

    if-nez p1, :cond_2

    .line 55
    iget-object p1, p0, Lo/createPayloadsIfNeeded;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5037
    :cond_2
    iget p1, p0, Lo/createPayloadsIfNeeded;->ICustomTabsCallback:I

    if-eq p1, p3, :cond_3

    .line 5038
    iput p3, p0, Lo/createPayloadsIfNeeded;->ICustomTabsCallback:I

    .line 5039
    iget-object p1, p0, Lo/createPayloadsIfNeeded;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-boolean v0, p0, Lo/createPayloadsIfNeeded;->asInterface:Z

    if-nez v0, :cond_0

    .line 68
    iget v0, p0, Lo/createPayloadsIfNeeded;->onPostMessage:F

    neg-float v2, v0

    neg-float v3, v0

    int-to-float v1, p3

    add-float v4, v1, v0

    int-to-float v1, p2

    add-float v5, v1, v0

    sget-object v6, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p3

    int-to-float v5, p2

    .line 70
    sget-object v6, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lo/createPayloadsIfNeeded;->asBinder:Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    iget-object p2, p0, Lo/createPayloadsIfNeeded;->asBinder:Landroid/graphics/RectF;

    iget p3, p0, Lo/createPayloadsIfNeeded;->onNavigationEvent:F

    iget-object v0, p0, Lo/createPayloadsIfNeeded;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
