.class public final Lo/isOverflowReserved;
.super Lo/measureChildView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/measureChildView<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lo/measureChildView;-><init>(Ljava/util/List;)V

    .line 10
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lo/isOverflowReserved;->onPostMessage:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .locals 5

    .line 1017
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 1022
    iget-object p1, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    .line 1024
    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    if-eqz v1, :cond_0

    .line 1026
    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    .line 1027
    invoke-virtual {p0}, Lo/isOverflowReserved;->onNavigationEvent()F

    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    .line 1058
    invoke-virtual {v1}, Lo/onMeasureExactFormat;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    .line 1026
    check-cast v1, Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    return-object v1

    .line 1033
    :cond_0
    iget-object v1, p0, Lo/isOverflowReserved;->onPostMessage:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    mul-float p2, p2, p1

    add-float/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 1035
    iget-object p1, p0, Lo/isOverflowReserved;->onPostMessage:Landroid/graphics/PointF;

    return-object p1

    .line 1018
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
