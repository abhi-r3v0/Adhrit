.class Landroid/support/transition/ChangeTransform$GhostListener;
.super Landroid/support/transition/TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private mGhostView:Landroid/support/transition/GhostViewImpl;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/transition/GhostViewImpl;)V
    .locals 0

    .line 514
    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    .line 515
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    .line 516
    iput-object p2, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/support/transition/GhostViewImpl;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 521
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 522
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    invoke-static {p1}, Landroid/support/transition/GhostViewUtils;->removeGhost(Landroid/view/View;)V

    .line 523
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    sget v0, Landroid/support/transition/R$id;->transition_transform:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 524
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mView:Landroid/view/View;

    sget v0, Landroid/support/transition/R$id;->parent_matrix:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 529
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/support/transition/GhostViewImpl;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/support/transition/GhostViewImpl;->setVisibility(I)V

    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 534
    iget-object p1, p0, Landroid/support/transition/ChangeTransform$GhostListener;->mGhostView:Landroid/support/transition/GhostViewImpl;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/support/transition/GhostViewImpl;->setVisibility(I)V

    return-void
.end method
