.class final Lcom/google/android/material/transformation/FabTransformationScrimBehavior$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->onNavigationEvent(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Landroid/view/View;

.field private synthetic onNavigationEvent:Z


# direct methods
.method constructor <init>(ZLandroid/view/View;)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$2;->onNavigationEvent:Z

    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$2;->onMessageChannelReady:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 94
    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$2;->onNavigationEvent:Z

    if-nez p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$2;->onMessageChannelReady:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 87
    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$2;->onNavigationEvent:Z

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$2;->onMessageChannelReady:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
