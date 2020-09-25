.class final Lcom/google/android/material/transformation/FabTransformationBehavior$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Landroid/view/View;

.field private synthetic onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Landroid/view/View;


# direct methods
.method constructor <init>(ZLandroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->onMessageChannelReady:Z

    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->onNavigationEvent:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->extraCallback:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 178
    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->onMessageChannelReady:Z

    if-nez p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->onNavigationEvent:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->extraCallback:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 182
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->extraCallback:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 168
    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->onMessageChannelReady:Z

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->onNavigationEvent:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->extraCallback:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 172
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->extraCallback:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
