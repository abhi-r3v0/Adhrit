.class Lo/setSessionToken2Bundle;
.super Lo/setExtraBinder;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/setExtraBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/view/View;)F
    .locals 0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1

    return p1
.end method

.method public ICustomTabsCallback(Landroid/view/View;I)V
    .locals 0

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V

    return-void
.end method

.method public extraCallback(Landroid/view/View;F)V
    .locals 0

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method

.method public onNavigationEvent(Landroid/view/View;IIII)V
    .locals 0

    .line 46
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method public onNavigationEvent(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onPostMessage(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    return-void
.end method
