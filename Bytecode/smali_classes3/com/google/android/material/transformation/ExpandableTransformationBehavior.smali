.class public abstract Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableBehavior;
.source ""


# instance fields
.field onPostMessage:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected ICustomTabsCallback(Landroid/view/View;Landroid/view/View;ZZ)Z
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onPostMessage:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 72
    iget-object v2, p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onPostMessage:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 76
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onPostMessage:Landroid/animation/AnimatorSet;

    .line 77
    new-instance p2, Lcom/google/android/material/transformation/ExpandableTransformationBehavior$5;

    invoke-direct {p2, p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior$5;-><init>(Lcom/google/android/material/transformation/ExpandableTransformationBehavior;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    iget-object p1, p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onPostMessage:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-nez p4, :cond_2

    .line 89
    iget-object p1, p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onPostMessage:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    return v1
.end method

.method protected abstract onNavigationEvent(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end method
