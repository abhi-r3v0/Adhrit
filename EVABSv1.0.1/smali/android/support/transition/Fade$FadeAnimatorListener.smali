.class Landroid/support/transition/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Fade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private mLayerTypeChanged:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 182
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 183
    iput-object p1, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 197
    iget-object p1, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 198
    iget-boolean p1, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 188
    iget-object p1, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 191
    iget-object p1, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
