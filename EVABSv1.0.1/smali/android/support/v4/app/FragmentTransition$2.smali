.class final Landroid/support/v4/app/FragmentTransition$2;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$inFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 371
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/FragmentTransition$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Landroid/support/v4/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 374
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 377
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$inFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransition;->access$100(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 379
    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 389
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 390
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
