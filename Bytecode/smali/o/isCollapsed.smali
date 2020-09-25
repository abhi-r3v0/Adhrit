.class public final Lo/isCollapsed;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onLayout;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onLayout<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lo/ActionMenuView;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v1}, Lo/ActionMenuView;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/isCollapsed;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method

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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/isCollapsed;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/isCollapsed;->ICustomTabsCallback:Ljava/util/List;

    return-object v0
.end method

.method public final onMessageChannelReady()Z
    .locals 3

    .line 34
    iget-object v0, p0, Lo/isCollapsed;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lo/isCollapsed;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    .line 1087
    iget-object v0, v0, Lo/ActionMenuView;->extraCallback:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final onPostMessage()Lo/isOverflowMenuShowPending;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/isCollapsed;->ICustomTabsCallback:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    .line 2087
    iget-object v0, v0, Lo/ActionMenuView;->extraCallback:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 40
    new-instance v0, Lo/isOverflowReserved;

    iget-object v1, p0, Lo/isCollapsed;->ICustomTabsCallback:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/isOverflowReserved;-><init>(Ljava/util/List;)V

    return-object v0

    .line 42
    :cond_1
    new-instance v0, Lo/dismissPopupMenus;

    iget-object v1, p0, Lo/isCollapsed;->ICustomTabsCallback:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/dismissPopupMenus;-><init>(Ljava/util/List;)V

    return-object v0
.end method
