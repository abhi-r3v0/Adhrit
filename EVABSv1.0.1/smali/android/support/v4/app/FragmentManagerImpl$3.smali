.class Landroid/support/v4/app/FragmentManagerImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManagerImpl;->animateRemoveFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1621
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 1624
    iget-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 1625
    iget-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1627
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1628
    iget-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$fragment:Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1629
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_1
    return-void
.end method
