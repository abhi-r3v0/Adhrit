.class public final Lo/dismissPopupMenus;
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
.field private ICustomTabsCallback$Stub:Lo/canShowOverflowMenu;

.field private asBinder:Landroid/graphics/PathMeasure;

.field private final asInterface:[F

.field private final onPostMessage:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/ActionMenuView<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lo/measureChildView;-><init>(Ljava/util/List;)V

    .line 12
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lo/dismissPopupMenus;->onPostMessage:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 13
    iput-object p1, p0, Lo/dismissPopupMenus;->asInterface:[F

    .line 15
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lo/dismissPopupMenus;->asBinder:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .locals 3

    .line 1022
    move-object v0, p1

    check-cast v0, Lo/canShowOverflowMenu;

    .line 2036
    iget-object v1, v0, Lo/canShowOverflowMenu;->ICustomTabsCallback:Landroid/graphics/Path;

    if-nez v1, :cond_0

    .line 1025
    iget-object p1, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    return-object p1

    .line 1028
    :cond_0
    iget-object p1, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    if-eqz p1, :cond_1

    .line 1029
    iget-object p1, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    .line 1030
    invoke-virtual {p0}, Lo/dismissPopupMenus;->onNavigationEvent()F

    .line 1031
    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    .line 2058
    invoke-virtual {p1}, Lo/onMeasureExactFormat;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    .line 1029
    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_1

    return-object p1

    .line 1037
    :cond_1
    iget-object p1, p0, Lo/dismissPopupMenus;->ICustomTabsCallback$Stub:Lo/canShowOverflowMenu;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    .line 1038
    iget-object p1, p0, Lo/dismissPopupMenus;->asBinder:Landroid/graphics/PathMeasure;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1039
    iput-object v0, p0, Lo/dismissPopupMenus;->ICustomTabsCallback$Stub:Lo/canShowOverflowMenu;

    .line 1042
    :cond_2
    iget-object p1, p0, Lo/dismissPopupMenus;->asBinder:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    mul-float p2, p2, v0

    iget-object v0, p0, Lo/dismissPopupMenus;->asInterface:[F

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1043
    iget-object p1, p0, Lo/dismissPopupMenus;->onPostMessage:Landroid/graphics/PointF;

    iget-object p2, p0, Lo/dismissPopupMenus;->asInterface:[F

    aget v0, p2, v2

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 1044
    iget-object p1, p0, Lo/dismissPopupMenus;->onPostMessage:Landroid/graphics/PointF;

    return-object p1
.end method
