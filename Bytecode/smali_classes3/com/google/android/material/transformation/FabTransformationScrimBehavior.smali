.class public Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/replaceAllExperimentsWith;

.field private final extraCallback:Lo/replaceAllExperimentsWith;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 48
    new-instance v0, Lo/replaceAllExperimentsWith;

    const-wide/16 v1, 0x4b

    invoke-direct {v0, v1, v2}, Lo/replaceAllExperimentsWith;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->extraCallback:Lo/replaceAllExperimentsWith;

    .line 49
    new-instance v0, Lo/replaceAllExperimentsWith;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lo/replaceAllExperimentsWith;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->ICustomTabsCallback:Lo/replaceAllExperimentsWith;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p1, Lo/replaceAllExperimentsWith;

    const-wide/16 v0, 0x4b

    invoke-direct {p1, v0, v1}, Lo/replaceAllExperimentsWith;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->extraCallback:Lo/replaceAllExperimentsWith;

    .line 49
    new-instance p1, Lo/replaceAllExperimentsWith;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lo/replaceAllExperimentsWith;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->ICustomTabsCallback:Lo/replaceAllExperimentsWith;

    return-void
.end method


# virtual methods
.method protected final onNavigationEvent(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 4

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->extraCallback:Lo/replaceAllExperimentsWith;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->ICustomTabsCallback:Lo/replaceAllExperimentsWith;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    .line 1113
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1115
    :cond_1
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v3, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p2, p4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    goto :goto_1

    .line 1117
    :cond_2
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v1, v3, v2

    invoke-static {p2, p4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 1120
    :goto_1
    invoke-virtual {v0, p4}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 1121
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 82
    invoke-static {p4, p1}, Lo/preferLastSpan$asBinder;->onPostMessage(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 83
    new-instance p1, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$2;

    invoke-direct {p1, p3, p2}, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$2;-><init>(ZLandroid/view/View;)V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p4
.end method

.method public final onNavigationEvent(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 59
    instance-of p1, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return p1
.end method

.method public final onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
