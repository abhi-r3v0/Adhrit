.class public final Lo/registerAdapterDataObserver;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0014J\u0018\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0014J\u0014\u0010$\u001a\u00020\u001d2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00070&R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/winnings/customview/SlitCutView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "cornerPathEffect",
        "Landroid/graphics/CornerPathEffect;",
        "expireText",
        "Landroid/widget/TextView;",
        "heightF",
        "",
        "paint",
        "Landroid/graphics/Paint;",
        "path",
        "Landroid/graphics/Path;",
        "getPath",
        "()Landroid/graphics/Path;",
        "setPath",
        "(Landroid/graphics/Path;)V",
        "rewardDetails",
        "Landroid/view/View;",
        "shadowPaint",
        "shadowPath",
        "widthF",
        "computePath",
        "",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "setData",
        "color",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/view/View;

.field private ICustomTabsCallback$Stub:Landroid/graphics/Paint;

.field private asBinder:Landroid/graphics/Path;

.field private final extraCallback:Landroid/graphics/CornerPathEffect;

.field private onMessageChannelReady:F

.field private onNavigationEvent:F

.field private onPostMessage:Landroid/widget/TextView;

.field private final onRelationshipValidationResult:Landroid/graphics/Paint;

.field private onTransact:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/registerAdapterDataObserver;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/registerAdapterDataObserver;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 25
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x1

    const/16 p3, 0x1c

    if-ge p1, p3, :cond_0

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p2, p1}, Lo/registerAdapterDataObserver;->setLayerType(ILandroid/graphics/Paint;)V

    .line 29
    :cond_0
    new-instance p1, Landroid/graphics/CornerPathEffect;

    .line 6021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "Resources.getSystem()"

    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v0, 0x41800000    # 16.0f

    .line 6022
    invoke-static {p2, v0, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    .line 29
    invoke-direct {p1, p2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object p1, p0, Lo/registerAdapterDataObserver;->extraCallback:Landroid/graphics/CornerPathEffect;

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 33
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p3, -0x1000000

    .line 34
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lo/registerAdapterDataObserver;->extraCallback:Landroid/graphics/CornerPathEffect;

    check-cast v0, Landroid/graphics/PathEffect;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 32
    iput-object p1, p0, Lo/registerAdapterDataObserver;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    .line 38
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    .line 40
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/registerAdapterDataObserver;->onTransact:Landroid/graphics/Path;

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    new-instance p2, Landroid/graphics/BlurMaskFilter;

    const/high16 v0, 0x41700000    # 15.0f

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p2, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast p2, Landroid/graphics/MaskFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 45
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object p2, p0, Lo/registerAdapterDataObserver;->extraCallback:Landroid/graphics/CornerPathEffect;

    check-cast p2, Landroid/graphics/PathEffect;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 42
    iput-object p1, p0, Lo/registerAdapterDataObserver;->onRelationshipValidationResult:Landroid/graphics/Paint;

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lo/registerAdapterDataObserver;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2060
    iget-object v0, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2061
    iget-object v0, p0, Lo/registerAdapterDataObserver;->onTransact:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2063
    iget-object v0, p0, Lo/registerAdapterDataObserver;->ICustomTabsCallback:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 2064
    iget-object v0, p0, Lo/registerAdapterDataObserver;->onPostMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2065
    :goto_0
    iget-object v2, p0, Lo/registerAdapterDataObserver;->onPostMessage:Landroid/widget/TextView;

    if-nez v2, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 3021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "Resources.getSystem()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x1

    .line 3022
    invoke-static {v6, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 2068
    iget-object v3, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    iget v5, p0, Lo/registerAdapterDataObserver;->onMessageChannelReady:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2071
    iget-object v3, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    iget v5, p0, Lo/registerAdapterDataObserver;->onMessageChannelReady:F

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2075
    iget-object v3, p0, Lo/registerAdapterDataObserver;->onPostMessage:Landroid/widget/TextView;

    if-nez v3, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v5, "expireText!!.text"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 2077
    iget-object v0, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    iget v2, p0, Lo/registerAdapterDataObserver;->onMessageChannelReady:F

    iget v3, p0, Lo/registerAdapterDataObserver;->onNavigationEvent:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 2080
    :cond_4
    iget-object v3, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    iget v5, p0, Lo/registerAdapterDataObserver;->onMessageChannelReady:F

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2082
    iget-object v3, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2084
    iget-object v3, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    .line 4021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v8, 0x42700000    # 60.0f

    .line 4022
    invoke-static {v6, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    sub-float v5, v0, v5

    .line 2084
    iget v9, p0, Lo/registerAdapterDataObserver;->onNavigationEvent:F

    invoke-virtual {v3, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2086
    iget-object v3, p0, Lo/registerAdapterDataObserver;->onTransact:Landroid/graphics/Path;

    iget v5, p0, Lo/registerAdapterDataObserver;->onMessageChannelReady:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2087
    iget-object v3, p0, Lo/registerAdapterDataObserver;->onTransact:Landroid/graphics/Path;

    iget v5, p0, Lo/registerAdapterDataObserver;->onMessageChannelReady:F

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2088
    iget-object v3, p0, Lo/registerAdapterDataObserver;->onTransact:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2089
    iget-object v2, p0, Lo/registerAdapterDataObserver;->onTransact:Landroid/graphics/Path;

    .line 5021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 5022
    invoke-static {v6, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    sub-float/2addr v0, v3

    .line 2089
    iget v3, p0, Lo/registerAdapterDataObserver;->onNavigationEvent:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2090
    iget-object v0, p0, Lo/registerAdapterDataObserver;->onTransact:Landroid/graphics/Path;

    iget v2, p0, Lo/registerAdapterDataObserver;->onMessageChannelReady:F

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v3

    iget v3, p0, Lo/registerAdapterDataObserver;->onNavigationEvent:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2094
    :goto_2
    iget-object v0, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    iget v2, p0, Lo/registerAdapterDataObserver;->onNavigationEvent:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2097
    iget-object v0, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2100
    iget-object v0, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    iget v2, p0, Lo/registerAdapterDataObserver;->onMessageChannelReady:F

    div-float/2addr v2, v7

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    :cond_5
    iget-object v0, p0, Lo/registerAdapterDataObserver;->onTransact:Landroid/graphics/Path;

    iget-object v1, p0, Lo/registerAdapterDataObserver;->onRelationshipValidationResult:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    iget-object v1, p0, Lo/registerAdapterDataObserver;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 121
    iget-object v0, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    iput p1, p0, Lo/registerAdapterDataObserver;->onMessageChannelReady:F

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_1
    int-to-float p1, p1

    iput p1, p0, Lo/registerAdapterDataObserver;->onNavigationEvent:F

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/View;

    const p2, 0x7f0b030d

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/registerAdapterDataObserver;->onPostMessage:Landroid/widget/TextView;

    const p2, 0x7f0b099f

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/registerAdapterDataObserver;->ICustomTabsCallback:Landroid/view/View;

    return-void

    .line 53
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setData(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "color"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lo/registerAdapterDataObserver;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 108
    iget v4, p0, Lo/registerAdapterDataObserver;->onMessageChannelReady:F

    iget v5, p0, Lo/registerAdapterDataObserver;->onNavigationEvent:F

    .line 109
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/util/Collection;)[I

    move-result-object v6

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    .line 107
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    check-cast v9, Landroid/graphics/Shader;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 111
    :cond_0
    iget-object v0, p0, Lo/registerAdapterDataObserver;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    const-string v1, "$this$firstOrNull"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 111
    :goto_0
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_1

    :cond_2
    const/high16 p1, -0x1000000

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setPath(Landroid/graphics/Path;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lo/registerAdapterDataObserver;->asBinder:Landroid/graphics/Path;

    return-void
.end method
