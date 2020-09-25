.class final Landroidx/recyclerview/widget/DefaultItemAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;->animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic extraCallback:Landroidx/recyclerview/widget/DefaultItemAnimator$ICustomTabsCallback;

.field final synthetic onNavigationEvent:Landroid/view/ViewPropertyAnimator;

.field final synthetic onPostMessage:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ICustomTabsCallback;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 380
    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->ICustomTabsCallback:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->extraCallback:Landroidx/recyclerview/widget/DefaultItemAnimator$ICustomTabsCallback;

    iput-object p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->onNavigationEvent:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->onPostMessage:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 387
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->onNavigationEvent:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 388
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->onPostMessage:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 389
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->onPostMessage:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->onPostMessage:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 391
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->ICustomTabsCallback:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->extraCallback:Landroidx/recyclerview/widget/DefaultItemAnimator$ICustomTabsCallback;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ICustomTabsCallback;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 392
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->ICustomTabsCallback:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object p1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->extraCallback:Landroidx/recyclerview/widget/DefaultItemAnimator$ICustomTabsCallback;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ICustomTabsCallback;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->ICustomTabsCallback:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 383
    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->ICustomTabsCallback:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$7;->extraCallback:Landroidx/recyclerview/widget/DefaultItemAnimator$ICustomTabsCallback;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ICustomTabsCallback;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
