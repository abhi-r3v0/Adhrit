.class public final Lo/addChangePayload;
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
        "Lcom/dreamplug/ui/neu/internals/BlurGradientHelper;",
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
.field public ICustomTabsCallback:F

.field private asInterface:Landroid/graphics/RectF;

.field public extraCallback:[F

.field public onMessageChannelReady:Landroid/graphics/Paint;

.field public onNavigationEvent:F

.field public onPostMessage:[I

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method private constructor <init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;)V
    .locals 1

    const-string v0, "paintHelper"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurStyle"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p4}, Lo/isAttachedToTransitionOverlay;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    .line 18
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lo/addChangePayload;->onMessageChannelReady:Landroid/graphics/Paint;

    .line 19
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lo/addChangePayload;->asInterface:Landroid/graphics/RectF;

    .line 20
    iput p2, p0, Lo/addChangePayload;->onNavigationEvent:F

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string p4, "Resources.getSystem()"

    invoke-static {p2, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p4, 0x1

    const/high16 v0, 0x40000000    # 2.0f

    .line 2010
    invoke-static {p4, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    .line 23
    iput p2, p0, Lo/addChangePayload;->ICustomTabsCallback:F

    .line 30
    iget-object p2, p0, Lo/addChangePayload;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setDither(Z)V

    if-eqz p3, :cond_0

    .line 32
    iget-object p2, p0, Lo/addChangePayload;->onMessageChannelReady:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object p2, p0, Lo/addChangePayload;->onMessageChannelReady:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    .line 37
    iget-object p2, p0, Lo/addChangePayload;->onMessageChannelReady:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/BlurMaskFilter;

    invoke-direct {p3, p1, p5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast p3, Landroid/graphics/MaskFilter;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;I)V
    .locals 6

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 12
    new-instance p3, Lo/performClickableSpanAction$onMessageChannelReady;

    invoke-direct {p3}, Lo/performClickableSpanAction$onMessageChannelReady;-><init>()V

    move-object p4, p3

    check-cast p4, Lo/MediaSessionCompat$1$onMessageChannelReady;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 13
    sget-object p5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lo/addChangePayload;-><init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "canvas"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    iget v4, v0, Lo/addChangePayload;->onRelationshipValidationResult:I

    if-ne v2, v4, :cond_0

    iget v4, v0, Lo/addChangePayload;->onTransact:I

    if-eq v3, v4, :cond_2

    .line 1043
    :cond_0
    iput v2, v0, Lo/addChangePayload;->onRelationshipValidationResult:I

    .line 1044
    iput v3, v0, Lo/addChangePayload;->onTransact:I

    int-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 1047
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v8, v0, Lo/addChangePayload;->onTransact:I

    int-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 1049
    iget v8, v0, Lo/addChangePayload;->onRelationshipValidationResult:I

    iget v9, v0, Lo/addChangePayload;->onTransact:I

    mul-int v8, v8, v9

    shl-int/lit8 v8, v8, 0x1

    int-to-double v8, v8

    div-double/2addr v8, v4

    int-to-double v10, v3

    div-double/2addr v10, v4

    div-double/2addr v8, v6

    mul-double v10, v10, v8

    int-to-double v6, v2

    div-double/2addr v6, v4

    mul-double v6, v6, v8

    .line 1054
    iget-object v4, v0, Lo/addChangePayload;->onPostMessage:[I

    if-eqz v4, :cond_2

    iget-object v4, v0, Lo/addChangePayload;->extraCallback:[F

    if-eqz v4, :cond_2

    .line 1055
    iget-object v4, v0, Lo/addChangePayload;->onMessageChannelReady:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    .line 1056
    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    double-to-float v6, v6

    sub-float v13, v8, v6

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    double-to-float v9, v10

    sub-float v14, v7, v9

    add-float v15, v8, v6

    add-float v16, v7, v9

    .line 1058
    iget-object v6, v0, Lo/addChangePayload;->onPostMessage:[I

    if-nez v6, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1059
    :cond_1
    iget-object v7, v0, Lo/addChangePayload;->extraCallback:[F

    .line 1060
    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 1055
    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    check-cast v5, Landroid/graphics/Shader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    :cond_2
    iget-object v4, v0, Lo/addChangePayload;->asInterface:Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v2, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    iget-object v2, v0, Lo/addChangePayload;->asInterface:Landroid/graphics/RectF;

    iget v3, v0, Lo/addChangePayload;->onNavigationEvent:F

    iget-object v4, v0, Lo/addChangePayload;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
