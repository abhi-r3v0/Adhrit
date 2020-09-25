.class Lo/PaymentInstrumentJsonAdapter;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lo/OrderStatusView$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PaymentInstrumentJsonAdapter$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/PointF;

.field private volatile ICustomTabsCallback$Stub:F

.field private final extraCallback:Landroid/view/GestureDetector;

.field private final onMessageChannelReady:Lo/PaymentInstrumentJsonAdapter$onPostMessage;

.field private final onNavigationEvent:Landroid/graphics/PointF;

.field private final onPostMessage:F

.field private onRelationshipValidationResult:Lo/PayResponseJsonAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/PaymentInstrumentJsonAdapter$onPostMessage;F)V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lo/PaymentInstrumentJsonAdapter;->onNavigationEvent:Landroid/graphics/PointF;

    .line 60
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lo/PaymentInstrumentJsonAdapter;->ICustomTabsCallback:Landroid/graphics/PointF;

    .line 75
    iput-object p2, p0, Lo/PaymentInstrumentJsonAdapter;->onMessageChannelReady:Lo/PaymentInstrumentJsonAdapter$onPostMessage;

    .line 76
    iput p3, p0, Lo/PaymentInstrumentJsonAdapter;->onPostMessage:F

    .line 77
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lo/PaymentInstrumentJsonAdapter;->extraCallback:Landroid/view/GestureDetector;

    const p1, 0x40490fdb    # (float)Math.PI

    .line 78
    iput p1, p0, Lo/PaymentInstrumentJsonAdapter;->ICustomTabsCallback$Stub:F

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/PayResponseJsonAdapter;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/PaymentInstrumentJsonAdapter;->onRelationshipValidationResult:Lo/PayResponseJsonAdapter;

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 98
    iget-object v0, p0, Lo/PaymentInstrumentJsonAdapter;->onNavigationEvent:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPostMessage([FF)V
    .locals 0

    neg-float p1, p2

    .line 138
    iput p1, p0, Lo/PaymentInstrumentJsonAdapter;->ICustomTabsCallback$Stub:F

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p3, p0, Lo/PaymentInstrumentJsonAdapter;->onNavigationEvent:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p3

    iget p3, p0, Lo/PaymentInstrumentJsonAdapter;->onPostMessage:F

    div-float/2addr p1, p3

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    iget-object p4, p0, Lo/PaymentInstrumentJsonAdapter;->onNavigationEvent:Landroid/graphics/PointF;

    iget p4, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p4

    iget p4, p0, Lo/PaymentInstrumentJsonAdapter;->onPostMessage:F

    div-float/2addr p3, p4

    .line 107
    iget-object p4, p0, Lo/PaymentInstrumentJsonAdapter;->onNavigationEvent:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p4, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 109
    iget p2, p0, Lo/PaymentInstrumentJsonAdapter;->ICustomTabsCallback$Stub:F

    float-to-double v0, p2

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p4, v0

    .line 116
    iget-object v0, p0, Lo/PaymentInstrumentJsonAdapter;->ICustomTabsCallback:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float v2, p2, p1

    mul-float v3, p4, p3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 118
    iget-object v0, p0, Lo/PaymentInstrumentJsonAdapter;->ICustomTabsCallback:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    mul-float p4, p4, p1

    mul-float p2, p2, p3

    add-float/2addr p4, p2

    add-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 119
    iget-object p1, p0, Lo/PaymentInstrumentJsonAdapter;->ICustomTabsCallback:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->y:F

    const/high16 p3, 0x42340000    # 45.0f

    .line 120
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 p3, -0x3dcc0000    # -45.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 122
    iget-object p1, p0, Lo/PaymentInstrumentJsonAdapter;->onMessageChannelReady:Lo/PaymentInstrumentJsonAdapter$onPostMessage;

    iget-object p2, p0, Lo/PaymentInstrumentJsonAdapter;->ICustomTabsCallback:Landroid/graphics/PointF;

    invoke-interface {p1, p2}, Lo/PaymentInstrumentJsonAdapter$onPostMessage;->ICustomTabsCallback(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lo/PaymentInstrumentJsonAdapter;->onRelationshipValidationResult:Lo/PayResponseJsonAdapter;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0, p1}, Lo/PayResponseJsonAdapter;->onMessageChannelReady(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 92
    iget-object p1, p0, Lo/PaymentInstrumentJsonAdapter;->extraCallback:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
