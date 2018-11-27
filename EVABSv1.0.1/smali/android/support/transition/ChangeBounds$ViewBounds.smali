.class Landroid/support/transition/ChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private mBottom:I

.field private mBottomRightCalls:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private mTopLeftCalls:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    return-void
.end method

.method private setLeftTopRightBottom()V
    .locals 5

    .line 490
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v2, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTop:I

    iget v3, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v4, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    .line 491
    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 492
    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    return-void
.end method


# virtual methods
.method setBottomRight(Landroid/graphics/PointF;)V
    .locals 1

    .line 481
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 482
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottom:I

    .line 483
    iget p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 484
    iget p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne p1, v0, :cond_0

    .line 485
    invoke-direct {p0}, Landroid/support/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    :cond_0
    return-void
.end method

.method setTopLeft(Landroid/graphics/PointF;)V
    .locals 1

    .line 472
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 473
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTop:I

    .line 474
    iget p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 475
    iget p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne p1, v0, :cond_0

    .line 476
    invoke-direct {p0}, Landroid/support/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    :cond_0
    return-void
.end method
