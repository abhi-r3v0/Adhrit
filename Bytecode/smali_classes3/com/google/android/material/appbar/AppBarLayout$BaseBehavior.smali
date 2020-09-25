.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lo/getAllExperiments;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">",
        "Lo/getAllExperiments<",
        "TT;>;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Z

.field private asBinder:F

.field private asInterface:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1234
    invoke-direct {p0}, Lo/getAllExperiments;-><init>()V

    const/4 v0, -0x1

    .line 1227
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMessageChannelReady:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1237
    invoke-direct {p0, p1, p2}, Lo/getAllExperiments;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 1227
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMessageChannelReady:I

    return-void
.end method

.method private static ICustomTabsCallback(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1405
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1406
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1407
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1408
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1410
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    .line 9147
    iget v6, v3, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    const/16 v7, 0x20

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 1413
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v6

    .line 1414
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v3

    :cond_1
    neg-int v3, p1

    if-gt v4, v3, :cond_2

    if-lt v5, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)Z"
        }
    .end annotation

    .line 1756
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    .line 1757
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 1758
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1760
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 20952
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    .line 1763
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    if-eqz v3, :cond_1

    .line 1764
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    .line 21204
    iget p0, v2, Lo/addExperiments;->extraCallback:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .locals 4

    .line 1785
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1786
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1787
    instance-of v3, v2, Lo/onShuffleModeChanged;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/ListView;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    .line 1713
    invoke-static {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1715
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    .line 18147
    iget v1, v1, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1720
    invoke-static {v0}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result v2

    const/4 v4, 0x1

    if-lez p3, :cond_1

    and-int/lit8 p3, v1, 0xc

    if-eqz p3, :cond_1

    neg-int p2, p2

    .line 1729
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p3, v2

    .line 18967
    iget-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    invoke-virtual {v0}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr p3, v0

    if-lt p2, p3, :cond_3

    :goto_1
    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    and-int/lit8 p3, v1, 0x2

    if-eqz p3, :cond_3

    neg-int p2, p2

    .line 1733
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p3, v2

    .line 19967
    iget-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    invoke-virtual {v0}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sub-int/2addr p3, v0

    if-lt p2, p3, :cond_3

    goto :goto_1

    .line 20877
    :cond_3
    :goto_3
    iget-boolean p2, p1, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback:Z

    if-eqz p2, :cond_4

    .line 1740
    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback(Landroid/view/View;)Z

    move-result v3

    .line 1743
    :cond_4
    invoke-virtual {p1, v3}, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback(Z)Z

    move-result p2

    if-nez p4, :cond_5

    if-eqz p2, :cond_6

    .line 1745
    invoke-static {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1748
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->jumpDrawablesToCurrentState()V

    :cond_6
    return-void
.end method

.method private onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 9798
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    .line 1426
    invoke-static {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result v1

    if-ltz v1, :cond_c

    .line 1428
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1429
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    .line 10147
    iget v4, v3, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    and-int/lit8 v5, v4, 0x11

    const/16 v6, 0x11

    if-ne v5, v6, :cond_c

    .line 1434
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    .line 1435
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    neg-int v6, v6

    .line 1437
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v9, 0x0

    if-ne v1, v7, :cond_1

    .line 10967
    iget-object v1, p2, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    invoke-virtual {v1}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v6, v1

    :cond_1
    and-int/lit8 v1, v4, 0x2

    const/4 v7, 0x2

    if-ne v1, v7, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 1444
    invoke-static {v2}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result v1

    add-int/2addr v6, v1

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v4, 0x5

    const/4 v10, 0x5

    if-ne v1, v10, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 1449
    invoke-static {v2}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v6

    if-ge v0, v1, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    move v6, v1

    :cond_6
    :goto_3
    const/16 v1, 0x20

    and-int/lit8 v2, v4, 0x20

    if-ne v2, v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_8

    .line 1459
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v1

    .line 1460
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, v1

    :cond_8
    add-int v1, v6, v5

    .line 1463
    div-int/2addr v1, v7

    if-ge v0, v1, :cond_9

    move v5, v6

    .line 1465
    :cond_9
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady()I

    move-result v0

    neg-int v0, v0

    if-ge v5, v0, :cond_a

    move v9, v0

    goto :goto_5

    :cond_a
    if-lez v5, :cond_b

    goto :goto_5

    :cond_b
    move v9, v5

    .line 1464
    :goto_5
    invoke-direct {p0, p1, p2, v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    :cond_c
    return-void
.end method

.method private onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;I)V"
        }
    .end annotation

    .line 7798
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p3

    .line 1357
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1360
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    .line 1362
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    .line 1364
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 8798
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback:I

    add-int/2addr v1, v2

    if-ne v1, p3, :cond_2

    .line 8378
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8379
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void

    .line 8384
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_3

    .line 8385
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage:Landroid/animation/ValueAnimator;

    .line 8386
    sget-object v3, Lo/preferLastSpan$ICustomTabsCallback$Stub;->ICustomTabsCallback:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8387
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 8396
    :cond_3
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8399
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8400
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 8401
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static onPostMessage(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;
    .locals 4

    .line 1773
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1774
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1775
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1776
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Landroid/view/View;)I
    .locals 0

    .line 1203
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 23592
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->onPostMessage()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public final synthetic ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 1203
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final synthetic ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 10

    .line 1203
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1331
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNavigationEvent:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 1333
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 6877
    iget-boolean p1, p2, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback:Z

    if-eqz p1, :cond_1

    .line 1335
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback(Z)Z

    .line 1340
    :cond_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->asInterface:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final synthetic ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1203
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    .line 1483
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 1484
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p5, 0x0

    .line 1493
    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 1489
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    .line 1499
    :cond_0
    invoke-super/range {p0 .. p6}, Lo/getAllExperiments;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public final synthetic extraCallback(Landroid/view/View;)Z
    .locals 1

    .line 24569
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->asInterface:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 24571
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 24573
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 24574
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    and-int/lit8 p4, p5, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 3877
    iget-boolean p4, p2, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback:Z

    if-nez p4, :cond_3

    .line 4649
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady()I

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 4272
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    :cond_3
    :goto_2
    if-eqz p5, :cond_4

    .line 1254
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    .line 1256
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/4 p1, 0x0

    .line 1260
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->asInterface:Ljava/lang/ref/WeakReference;

    .line 1263
    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNavigationEvent:I

    return p5
.end method

.method public final synthetic onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 1

    .line 1203
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 24584
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 24877
    iget-boolean v0, p2, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 24586
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback(Z)Z

    :cond_0
    return-void
.end method

.method public final synthetic onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1203
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 8

    .line 1203
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    if-gez p7, :cond_0

    const/4 p3, 0x1

    .line 1320
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->onPostMessage()I

    move-result p4

    neg-int v4, p4

    .line 6236
    invoke-virtual {p0}, Lo/getAllExperiments;->onPostMessage()I

    move-result p4

    sub-int v3, p4, p7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6233
    invoke-virtual/range {v0 .. v5}, Lo/getAllExperiments;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    .line 1320
    aput p1, p9, p3

    :cond_0
    return-void
.end method

.method public final synthetic onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .line 1203
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    .line 1506
    invoke-super {p0, p1, p2, p3}, Lo/getAllExperiments;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    .line 14958
    iget v0, p2, Lcom/google/android/material/appbar/AppBarLayout;->onNavigationEvent:I

    .line 1513
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMessageChannelReady:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_2

    and-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_2

    .line 1514
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1515
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 1516
    iget-boolean v4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback$Stub:Z

    if-eqz v4, :cond_1

    .line 1517
    invoke-static {v0}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result v0

    .line 14967
    iget-object v4, p2, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    invoke-virtual {v4}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v0, v4

    goto :goto_1

    .line 1519
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->asBinder:F

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    move v7, v1

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 15203
    invoke-virtual/range {v4 .. v9}, Lo/getAllExperiments;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_7

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_5

    .line 15654
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady()I

    move-result v0

    neg-int v7, v0

    if-eqz v1, :cond_4

    .line 1527
    invoke-direct {p0, p1, p2, v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto :goto_3

    :cond_4
    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 16203
    invoke-virtual/range {v4 .. v9}, Lo/getAllExperiments;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_3

    :cond_5
    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    .line 1533
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 17203
    invoke-virtual/range {v4 .. v9}, Lo/getAllExperiments;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 17962
    :cond_7
    :goto_3
    iput v3, p2, Lcom/google/android/material/appbar/AppBarLayout;->onNavigationEvent:I

    const/4 v0, -0x1

    .line 1542
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMessageChannelReady:I

    .line 1547
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady()I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_8

    move v0, v1

    goto :goto_4

    :cond_8
    if-lez v0, :cond_9

    const/4 v0, 0x0

    .line 1546
    :cond_9
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback(I)Z

    .line 1553
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result v0

    .line 1552
    invoke-static {p1, p2, v0, v3, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    .line 1556
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady(I)V

    return p3
.end method

.method public final synthetic onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7

    .line 1203
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 25798
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz p4, :cond_a

    if-lt v0, p4, :cond_a

    if-gt v0, p5, :cond_a

    if-ge p3, p4, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    if-le p3, p5, :cond_1

    move p3, p5

    :cond_1
    :goto_0
    if-eq v0, p3, :cond_b

    .line 26603
    iget-boolean p4, p2, Lcom/google/android/material/appbar/AppBarLayout;->onPostMessage:Z

    if-eqz p4, :cond_7

    .line 26660
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    .line 26662
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p5, :cond_7

    .line 26663
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 26664
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;

    .line 27169
    iget-object v5, v4, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->extraCallback:Landroid/view/animation/Interpolator;

    .line 26667
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt p4, v6, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt p4, v6, :cond_6

    if-eqz v5, :cond_7

    .line 28147
    iget p5, v4, Lcom/google/android/material/appbar/AppBarLayout$ICustomTabsCallback;->onNavigationEvent:I

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_2

    .line 26673
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v6

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_3

    .line 26678
    invoke-static {v3}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result p5

    sub-int/2addr v2, p5

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 26682
    :cond_3
    :goto_2
    invoke-static {v3}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 28967
    iget-object p5, p2, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz p5, :cond_4

    iget-object p5, p2, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    invoke-virtual {p5}, Lo/getVolumeAttributes;->extraCallback()I

    move-result p5

    goto :goto_3

    :cond_4
    const/4 p5, 0x0

    :goto_3
    sub-int/2addr v2, p5

    :cond_5
    if-lez v2, :cond_7

    .line 26687
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result p5

    sub-int/2addr p4, p5

    int-to-float p5, v2

    int-to-float p4, p4

    div-float/2addr p4, p5

    .line 26691
    invoke-interface {v5, p4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p4

    mul-float p5, p5, p4

    .line 26689
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 26694
    invoke-static {p3}, Ljava/lang/Integer;->signum(I)I

    move-result p5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, p4

    mul-int p5, p5, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move p5, p3

    .line 25620
    :goto_4
    invoke-virtual {p0, p5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback(I)Z

    move-result p4

    sub-int v2, v0, p3

    sub-int p5, p3, p5

    .line 25625
    iput p5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback:I

    if-nez p4, :cond_8

    .line 29603
    iget-boolean p4, p2, Lcom/google/android/material/appbar/AppBarLayout;->onPostMessage:Z

    if-eqz p4, :cond_8

    .line 25632
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback(Landroid/view/View;)V

    .line 25636
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady(I)V

    if-ge p3, v0, :cond_9

    const/4 p4, -0x1

    goto :goto_5

    :cond_9
    const/4 p4, 0x1

    .line 25639
    :goto_5
    invoke-static {p1, p2, p3, p4, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMessageChannelReady(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    move v1, v2

    goto :goto_6

    .line 25648
    :cond_a
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback:I

    :cond_b
    :goto_6
    return v1
.end method

.method public final synthetic onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7

    .line 1203
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage()I
    .locals 2

    .line 1798
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic onPostMessage(Landroid/view/View;)I
    .locals 0

    .line 1203
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 22597
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 1203
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 1803
    invoke-super {p0, p1, p2}, Lo/getAllExperiments;->onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    .line 1804
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->extraCallback()I

    move-result v0

    .line 1807
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 1808
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1809
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    .line 1811
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_2

    if-ltz v5, :cond_2

    .line 1812
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;-><init>(Landroid/os/Parcelable;)V

    .line 1813
    iput v3, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->extraCallback:I

    .line 1815
    invoke-static {v4}, Lo/unregisterCallbackListener;->warmup(Landroid/view/View;)I

    move-result p1

    .line 21967
    iget-object v1, p2, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v1, :cond_0

    iget-object p2, p2, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    invoke-virtual {p2}, Lo/getVolumeAttributes;->extraCallback()I

    move-result p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    add-int/2addr p1, p2

    if-ne v5, p1, :cond_1

    const/4 v2, 0x1

    .line 1815
    :cond_1
    iput-boolean v2, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->onMessageChannelReady:Z

    int-to-float p1, v5

    .line 1816
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->ICustomTabsCallback:F

    return-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 1828
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 1829
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;

    .line 1830
    invoke-virtual {p3}, Lo/pause;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lo/getAllExperiments;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1831
    iget p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->extraCallback:I

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMessageChannelReady:I

    .line 1832
    iget p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->ICustomTabsCallback:F

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->asBinder:F

    .line 1833
    iget-boolean p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$onMessageChannelReady;->onMessageChannelReady:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->ICustomTabsCallback$Stub:Z

    return-void

    .line 1835
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/getAllExperiments;->ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    .line 1836
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMessageChannelReady:I

    return-void
.end method

.method public onPostMessage(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    if-eqz p5, :cond_1

    if-gez p5, :cond_0

    .line 1289
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady()I

    move-result p4

    neg-int p4, p4

    .line 1290
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback()I

    move-result p7

    add-int/2addr p7, p4

    move v4, p4

    move v5, p7

    goto :goto_0

    .line 4654
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->onMessageChannelReady()I

    move-result p4

    neg-int p4, p4

    const/4 p7, 0x0

    move v4, p4

    const/4 v5, 0x0

    :goto_0
    if-eq v4, v5, :cond_1

    const/4 p4, 0x1

    .line 5236
    invoke-virtual {p0}, Lo/getAllExperiments;->onPostMessage()I

    move-result p7

    sub-int v3, p7, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 5233
    invoke-virtual/range {v0 .. v5}, Lo/getAllExperiments;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    .line 1297
    aput p1, p6, p4

    .line 5877
    :cond_1
    iget-boolean p1, p2, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback:Z

    if-eqz p1, :cond_2

    .line 1301
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->extraCallback(Z)Z

    :cond_2
    return-void
.end method
