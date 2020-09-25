.class public final Lo/offsetChildrenVertical;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/offsetChildrenVertical$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 .2\u00020\u0001:\u0001.B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!H\u0002J\u0008\u0010\"\u001a\u00020\u001eH\u0002J\u0012\u0010#\u001a\u00020\u001e2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0018\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0007H\u0014J>\u0010\'\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u00072\u0008\u0008\u0002\u0010*\u001a\u00020\u000c2\u001c\u0008\u0002\u0010+\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020\u001e\u0018\u00010,R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/RevealView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "animateValue",
        "",
        "canReverse",
        "",
        "getCanReverse",
        "()Z",
        "setCanReverse",
        "(Z)V",
        "padding",
        "getPadding",
        "()F",
        "setPadding",
        "(F)V",
        "pieAngle",
        "getPieAngle",
        "setPieAngle",
        "revealPaint",
        "Landroid/graphics/Paint;",
        "wheel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/Wheel;",
        "doReverse",
        "",
        "drawRevealCircle",
        "canvas",
        "Landroid/graphics/Canvas;",
        "initWheel",
        "onDraw",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "startAnimation",
        "position",
        "color",
        "animate",
        "listener",
        "Lkotlin/Function2;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$State;",
        "Companion",
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
.field private ICustomTabsCallback:F

.field private asInterface:Landroid/graphics/Paint;

.field private extraCallback:F

.field public onMessageChannelReady:Z

.field private onNavigationEvent:Lo/onSuggestionClick$onNavigationEvent;

.field private onPostMessage:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/offsetChildrenVertical;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/offsetChildrenVertical;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42340000    # 45.0f

    .line 24
    iput p1, p0, Lo/offsetChildrenVertical;->ICustomTabsCallback:F

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 29
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 30
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, -0x1

    .line 31
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iput-object p1, p0, Lo/offsetChildrenVertical;->asInterface:Landroid/graphics/Paint;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lo/offsetChildrenVertical;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/offsetChildrenVertical;F)V
    .locals 0

    .line 14
    iput p1, p0, Lo/offsetChildrenVertical;->extraCallback:F

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 102
    iget-boolean v0, p0, Lo/offsetChildrenVertical;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lo/offsetChildrenVertical;->onMessageChannelReady:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 104
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    new-instance v1, Lo/offsetChildrenVertical$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/offsetChildrenVertical$onNavigationEvent;-><init>(Lo/offsetChildrenVertical;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x43b40000    # 360.0f
        0x0
    .end array-data
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_4

    .line 48
    iget v0, p0, Lo/offsetChildrenVertical;->onPostMessage:F

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 121
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1055
    :try_start_0
    iget-object v0, p0, Lo/offsetChildrenVertical;->onNavigationEvent:Lo/onSuggestionClick$onNavigationEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string/jumbo v2, "wheel"

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2008
    :cond_0
    iget v0, v0, Lo/onSuggestionClick$onNavigationEvent;->onMessageChannelReady:F

    .line 1056
    iget-object v3, p0, Lo/offsetChildrenVertical;->onNavigationEvent:Lo/onSuggestionClick$onNavigationEvent;

    if-nez v3, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2010
    :cond_1
    iget v3, v3, Lo/onSuggestionClick$onNavigationEvent;->onNavigationEvent:F

    .line 1057
    iget-object v4, p0, Lo/offsetChildrenVertical;->onNavigationEvent:Lo/onSuggestionClick$onNavigationEvent;

    if-nez v4, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2012
    :cond_2
    iget v2, v4, Lo/onSuggestionClick$onNavigationEvent;->onPostMessage:F

    .line 1058
    new-instance v5, Landroid/graphics/RectF;

    sub-float v4, v0, v2

    sub-float v6, v3, v2

    add-float v7, v0, v2

    add-float/2addr v2, v3

    invoke-direct {v5, v4, v6, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/4 v4, 0x0

    .line 1133
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1061
    :try_start_2
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 1062
    invoke-virtual {v6, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1063
    iget v0, p0, Lo/offsetChildrenVertical;->ICustomTabsCallback:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v0, v3

    const/high16 v7, 0x43b40000    # 360.0f

    iget v8, p0, Lo/offsetChildrenVertical;->ICustomTabsCallback:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    div-float/2addr v8, v3

    sub-float/2addr v7, v8

    invoke-virtual {v6, v5, v0, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1064
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 1065
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1066
    iget v0, p0, Lo/offsetChildrenVertical;->extraCallback:F

    cmpg-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 1068
    iget v0, p0, Lo/offsetChildrenVertical;->extraCallback:F

    neg-float v0, v0

    div-float v6, v0, v9

    iget v7, p0, Lo/offsetChildrenVertical;->extraCallback:F

    const/4 v8, 0x1

    .line 1069
    iget-object v9, p0, Lo/offsetChildrenVertical;->asInterface:Landroid/graphics/Paint;

    move-object v4, p1

    .line 1067
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1137
    :cond_3
    :try_start_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 1137
    :try_start_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 125
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_4
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    .line 42
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 1035
    new-instance p1, Lo/onSuggestionClick$onNavigationEvent;

    .line 1036
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    iget v0, p0, Lo/offsetChildrenVertical;->onPostMessage:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    .line 1037
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    iget v2, p0, Lo/offsetChildrenVertical;->onPostMessage:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    .line 1035
    invoke-direct {p1, p2, v0}, Lo/onSuggestionClick$onNavigationEvent;-><init>(FF)V

    iput-object p1, p0, Lo/offsetChildrenVertical;->onNavigationEvent:Lo/onSuggestionClick$onNavigationEvent;

    return-void
.end method

.method public final onNavigationEvent(IIZLo/nextTransactionOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lo/nextTransactionOrder<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lo/dispatchOnScrolled$onMessageChannelReady;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lo/offsetChildrenVertical;->onMessageChannelReady:Z

    .line 77
    iget-object v1, p0, Lo/offsetChildrenVertical;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x43b40000    # 360.0f

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v1, 0x0

    .line 79
    iget v2, p0, Lo/offsetChildrenVertical;->ICustomTabsCallback:F

    aput v2, p3, v1

    aput p2, p3, v0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x258

    .line 80
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    new-instance p3, Lo/offsetChildrenVertical$extraCallback;

    invoke-direct {p3, p0}, Lo/offsetChildrenVertical$extraCallback;-><init>(Lo/offsetChildrenVertical;)V

    check-cast p3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    move-object p3, p2

    check-cast p3, Landroid/animation/Animator;

    .line 146
    new-instance v0, Lo/offsetChildrenVertical$ICustomTabsCallback;

    invoke-direct {v0, p4, p1}, Lo/offsetChildrenVertical$ICustomTabsCallback;-><init>(Lo/nextTransactionOrder;I)V

    .line 152
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    new-instance v0, Lo/offsetChildrenVertical$onMessageChannelReady;

    invoke-direct {v0, p4, p1}, Lo/offsetChildrenVertical$onMessageChannelReady;-><init>(Lo/nextTransactionOrder;I)V

    .line 165
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 95
    :cond_0
    iput p2, p0, Lo/offsetChildrenVertical;->extraCallback:F

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCanReverse(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lo/offsetChildrenVertical;->onMessageChannelReady:Z

    return-void
.end method

.method public final setPadding(F)V
    .locals 0

    .line 20
    iput p1, p0, Lo/offsetChildrenVertical;->onPostMessage:F

    return-void
.end method

.method public final setPieAngle(F)V
    .locals 0

    .line 24
    iput p1, p0, Lo/offsetChildrenVertical;->ICustomTabsCallback:F

    return-void
.end method
