.class public Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public extraCallback:I

.field onMessageChannelReady:Landroid/view/ViewPropertyAnimator;

.field public onNavigationEvent:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ICustomTabsCallback:I

    const/4 v1, 0x2

    .line 48
    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onNavigationEvent:I

    .line 49
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->extraCallback:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ICustomTabsCallback:I

    const/4 p2, 0x2

    .line 48
    iput p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onNavigationEvent:I

    .line 49
    iput p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->extraCallback:I

    return-void
.end method

.method private onPostMessage(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IJ",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, p2

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 152
    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 153
    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$2;-><init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onMessageChannelReady:Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 63
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ICustomTabsCallback:I

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public final extraCallback(Landroid/view/View;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    if-lez p2, :cond_2

    .line 1130
    iget p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onNavigationEvent:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    .line 1134
    iget-object p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onMessageChannelReady:Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_0

    .line 1135
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1136
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1138
    :cond_0
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onNavigationEvent:I

    .line 1139
    iget p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ICustomTabsCallback:I

    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->extraCallback:I

    add-int v3, p2, v0

    const-wide/16 v4, 0xaf

    sget-object v6, Lo/preferLastSpan$ICustomTabsCallback$Stub;->extraCallback:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onPostMessage(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    :cond_1
    return-void

    :cond_2
    if-gez p2, :cond_4

    .line 2112
    iget p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onNavigationEvent:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    .line 2116
    iget-object p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onMessageChannelReady:Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_3

    .line 2117
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2118
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 2120
    :cond_3
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onNavigationEvent:I

    const/4 v3, 0x0

    const-wide/16 v4, 0xe1

    .line 2121
    sget-object v6, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onNavigationEvent:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onPostMessage(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    :cond_4
    return-void
.end method

.method public final onNavigationEvent(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
