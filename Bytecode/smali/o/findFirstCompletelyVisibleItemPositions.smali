.class public final Lo/findFirstCompletelyVisibleItemPositions;
.super Landroid/text/style/ReplacementSpan;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJP\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0013H\u0016J4\u0010!\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00032\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/dreamplug/utils/span/DottedLineSpan;",
        "Landroid/text/style/ReplacementSpan;",
        "color",
        "",
        "mOffsetY",
        "",
        "mDashWidth",
        "mDashGap",
        "mStrokeWidth",
        "(IFFFF)V",
        "getColor",
        "()I",
        "getMDashGap",
        "()F",
        "getMDashWidth",
        "getMOffsetY",
        "getMStrokeWidth",
        "mWidth",
        "p",
        "Landroid/graphics/Paint;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "text",
        "",
        "start",
        "end",
        "x",
        "top",
        "y",
        "bottom",
        "paint",
        "getSize",
        "fm",
        "Landroid/graphics/Paint$FontMetricsInt;",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:F

.field private final asInterface:F

.field private final extraCallback:F

.field private onMessageChannelReady:Landroid/graphics/Paint;

.field private onNavigationEvent:I

.field private final onPostMessage:I

.field private final onRelationshipValidationResult:F


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 10

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    const/high16 v3, 0x40200000    # 2.5f

    .line 1010
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v3, 0x40000000    # 2.0f

    .line 2010
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v3, 0x40400000    # 3.0f

    .line 3010
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4010
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    move-object v4, p0

    move v5, p1

    .line 14
    invoke-direct/range {v4 .. v9}, Lo/findFirstCompletelyVisibleItemPositions;-><init>(IFFFF)V

    return-void
.end method

.method public constructor <init>(IFFFF)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput p1, p0, Lo/findFirstCompletelyVisibleItemPositions;->onPostMessage:I

    iput p2, p0, Lo/findFirstCompletelyVisibleItemPositions;->extraCallback:F

    iput p3, p0, Lo/findFirstCompletelyVisibleItemPositions;->ICustomTabsCallback:F

    iput p4, p0, Lo/findFirstCompletelyVisibleItemPositions;->asInterface:F

    iput p5, p0, Lo/findFirstCompletelyVisibleItemPositions;->onRelationshipValidationResult:F

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/findFirstCompletelyVisibleItemPositions;->onMessageChannelReady:Landroid/graphics/Paint;

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/findFirstCompletelyVisibleItemPositions;->onMessageChannelReady:Landroid/graphics/Paint;

    .line 37
    iget p2, p0, Lo/findFirstCompletelyVisibleItemPositions;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object p1, p0, Lo/findFirstCompletelyVisibleItemPositions;->onMessageChannelReady:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object p1, p0, Lo/findFirstCompletelyVisibleItemPositions;->onMessageChannelReady:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/DashPathEffect;

    const/4 p3, 0x2

    new-array p3, p3, [F

    iget p4, p0, Lo/findFirstCompletelyVisibleItemPositions;->ICustomTabsCallback:F

    const/4 p5, 0x0

    aput p4, p3, p5

    iget p4, p0, Lo/findFirstCompletelyVisibleItemPositions;->asInterface:F

    const/4 p5, 0x1

    aput p4, p3, p5

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    check-cast p2, Landroid/graphics/PathEffect;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 40
    iget-object p1, p0, Lo/findFirstCompletelyVisibleItemPositions;->onMessageChannelReady:Landroid/graphics/Paint;

    iget p2, p0, Lo/findFirstCompletelyVisibleItemPositions;->onRelationshipValidationResult:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p5

    move-object/from16 v7, p9

    const-string v1, "canvas"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "text"

    move-object v2, p2

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "paint"

    invoke-static {v7, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget v3, v0, Lo/findFirstCompletelyVisibleItemPositions;->onPostMessage:I

    if-eq v1, v3, :cond_0

    .line 27
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    move/from16 v1, p7

    int-to-float v10, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move v6, v10

    move-object/from16 v7, p9

    .line 28
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 29
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 30
    iget v2, v0, Lo/findFirstCompletelyVisibleItemPositions;->extraCallback:F

    add-float/2addr v2, v10

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 31
    iget v2, v0, Lo/findFirstCompletelyVisibleItemPositions;->onNavigationEvent:I

    int-to-float v2, v2

    add-float/2addr v2, v9

    iget v3, v0, Lo/findFirstCompletelyVisibleItemPositions;->extraCallback:F

    add-float/2addr v10, v3

    invoke-virtual {v1, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 32
    iget-object v2, v0, Lo/findFirstCompletelyVisibleItemPositions;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const-string p5, "paint"

    invoke-static {p1, p5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lo/findFirstCompletelyVisibleItemPositions;->onNavigationEvent:I

    return p1
.end method
