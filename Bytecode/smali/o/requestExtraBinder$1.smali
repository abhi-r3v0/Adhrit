.class final Lo/requestExtraBinder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/requestExtraBinder;->IPostMessageService$Stub(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/view/View;

.field final synthetic extraCallback:Landroid/view/ViewGroup;

.field final synthetic onMessageChannelReady:Lo/requestExtraBinder;

.field final synthetic onNavigationEvent:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lo/requestExtraBinder;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1396
    iput-object p1, p0, Lo/requestExtraBinder$1;->onMessageChannelReady:Lo/requestExtraBinder;

    iput-object p2, p0, Lo/requestExtraBinder$1;->extraCallback:Landroid/view/ViewGroup;

    iput-object p3, p0, Lo/requestExtraBinder$1;->ICustomTabsCallback:Landroid/view/View;

    iput-object p4, p0, Lo/requestExtraBinder$1;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1399
    iget-object v0, p0, Lo/requestExtraBinder$1;->extraCallback:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/requestExtraBinder$1;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1400
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1401
    iget-object p1, p0, Lo/requestExtraBinder$1;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/requestExtraBinder$1;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_0

    .line 1402
    iget-object p1, p0, Lo/requestExtraBinder$1;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
