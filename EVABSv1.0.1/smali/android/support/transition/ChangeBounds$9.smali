.class Landroid/support/transition/ChangeBounds$9;
.super Landroid/support/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroid/support/transition/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .locals 0

    .line 390
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$9;->this$0:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 391
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds$9;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 395
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 396
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds$9;->mCanceled:Z

    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 401
    iget-boolean v0, p0, Landroid/support/transition/ChangeBounds$9;->mCanceled:Z

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 404
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 409
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 414
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    return-void
.end method
