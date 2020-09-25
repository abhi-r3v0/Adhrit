.class public final Lo/getNextSpan;
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
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0014J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0002J(\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\tH\u0014J\u000e\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\u000cR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/dreamplug/widget/RoundedFrameLayout;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mCornerRadius",
        "",
        "mPath",
        "Landroid/graphics/Path;",
        "mRect",
        "Landroid/graphics/RectF;",
        "radiArray",
        "",
        "drawChild",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "child",
        "Landroid/view/View;",
        "drawingTime",
        "",
        "initView",
        "",
        "attributes",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "setCornerRadius",
        "cornerRadius",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:Landroid/graphics/Path;

.field private onMessageChannelReady:Landroid/graphics/RectF;

.field private onPostMessage:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 29
    fill-array-data p1, :array_0

    iput-object p1, p0, Lo/getNextSpan;->onPostMessage:[F

    .line 32
    invoke-direct {p0, v0}, Lo/getNextSpan;->ICustomTabsCallback(Landroid/util/AttributeSet;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 29
    fill-array-data p1, :array_0

    iput-object p1, p0, Lo/getNextSpan;->onPostMessage:[F

    .line 36
    invoke-direct {p0, p2}, Lo/getNextSpan;->ICustomTabsCallback(Landroid/util/AttributeSet;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 29
    fill-array-data p1, :array_0

    iput-object p1, p0, Lo/getNextSpan;->onPostMessage:[F

    .line 40
    invoke-direct {p0, p2}, Lo/getNextSpan;->ICustomTabsCallback(Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final ICustomTabsCallback(Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 46
    sget-object v2, Lo/preferLastSpan$asInterface;->RoundedFrameLayout:[I

    .line 45
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 48
    sget v1, Lo/preferLastSpan$asInterface;->RoundedFrameLayout_corner_radius:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    const/16 v3, 0x8

    cmpg-float v2, v1, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 51
    iget-object v4, p0, Lo/getNextSpan;->onPostMessage:[F

    aput v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    sget v1, Lo/preferLastSpan$asInterface;->RoundedFrameLayout_corner_radius_left_top:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 55
    sget v4, Lo/preferLastSpan$asInterface;->RoundedFrameLayout_corner_radius_right_top:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 56
    sget v5, Lo/preferLastSpan$asInterface;->RoundedFrameLayout_corner_radius_right_bottom:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 57
    sget v6, Lo/preferLastSpan$asInterface;->RoundedFrameLayout_corner_radius_left_bottom:I

    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v6, 0x1

    aput v1, v3, v6

    const/4 v1, 0x2

    aput v4, v3, v1

    const/4 v1, 0x3

    aput v4, v3, v1

    const/4 v1, 0x4

    aput v5, v3, v1

    const/4 v1, 0x5

    aput v5, v3, v1

    const/4 v1, 0x6

    aput v2, v3, v1

    const/4 v1, 0x7

    aput v2, v3, v1

    .line 58
    iput-object v3, p0, Lo/getNextSpan;->onPostMessage:[F

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    :cond_2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/getNextSpan;->extraCallback:Landroid/graphics/Path;

    .line 65
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/getNextSpan;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 84
    iget-object v1, p0, Lo/getNextSpan;->extraCallback:Landroid/graphics/Path;

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 86
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 76
    iget-object p3, p0, Lo/getNextSpan;->extraCallback:Landroid/graphics/Path;

    if-nez p3, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 77
    iget-object p3, p0, Lo/getNextSpan;->onMessageChannelReady:Landroid/graphics/RectF;

    if-nez p3, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    iget-object p1, p0, Lo/getNextSpan;->extraCallback:Landroid/graphics/Path;

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    iget-object p2, p0, Lo/getNextSpan;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object p3, p0, Lo/getNextSpan;->onPostMessage:[F

    sget-object p4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 79
    iget-object p1, p0, Lo/getNextSpan;->extraCallback:Landroid/graphics/Path;

    if-nez p1, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    return-void
.end method
