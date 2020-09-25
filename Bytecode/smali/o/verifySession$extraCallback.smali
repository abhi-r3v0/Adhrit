.class final Lo/verifySession$extraCallback;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Lo/fromQueueItem$onMessageChannelReady;
.implements Lo/sendEvent$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/verifySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Z

.field private final extraCallback:Landroid/view/ViewGroup;

.field private final onMessageChannelReady:Landroid/view/View;

.field private onNavigationEvent:Z

.field private final onPostMessage:Z


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 533
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Lo/verifySession$extraCallback;->ICustomTabsCallback$Stub:Z

    .line 534
    iput-object p1, p0, Lo/verifySession$extraCallback;->onMessageChannelReady:Landroid/view/View;

    .line 535
    iput p2, p0, Lo/verifySession$extraCallback;->ICustomTabsCallback:I

    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/verifySession$extraCallback;->extraCallback:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    .line 537
    iput-boolean p1, p0, Lo/verifySession$extraCallback;->onPostMessage:Z

    .line 539
    invoke-direct {p0, p1}, Lo/verifySession$extraCallback;->onNavigationEvent(Z)V

    return-void
.end method

.method private extraCallback()V
    .locals 2

    .line 604
    iget-boolean v0, p0, Lo/verifySession$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lo/verifySession$extraCallback;->onMessageChannelReady:Landroid/view/View;

    iget v1, p0, Lo/verifySession$extraCallback;->ICustomTabsCallback:I

    invoke-static {v0, v1}, Lo/equals;->onPostMessage(Landroid/view/View;I)V

    .line 607
    iget-object v0, p0, Lo/verifySession$extraCallback;->extraCallback:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 612
    invoke-direct {p0, v0}, Lo/verifySession$extraCallback;->onNavigationEvent(Z)V

    return-void
.end method

.method private onNavigationEvent(Z)V
    .locals 1

    .line 616
    iget-boolean v0, p0, Lo/verifySession$extraCallback;->onPostMessage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/verifySession$extraCallback;->onNavigationEvent:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lo/verifySession$extraCallback;->extraCallback:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 617
    iput-boolean p1, p0, Lo/verifySession$extraCallback;->onNavigationEvent:Z

    .line 618
    invoke-static {v0, p1}, Lo/getExtraBinder;->onMessageChannelReady(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 0

    .line 585
    invoke-direct {p0}, Lo/verifySession$extraCallback;->extraCallback()V

    .line 586
    invoke-virtual {p1, p0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method

.method public final extraCallback(Lo/fromQueueItem;)V
    .locals 0

    const/4 p1, 0x0

    .line 595
    invoke-direct {p0, p1}, Lo/verifySession$extraCallback;->onNavigationEvent(Z)V

    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 562
    iput-boolean p1, p0, Lo/verifySession$extraCallback;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Lo/verifySession$extraCallback;->extraCallback()V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 546
    iget-boolean p1, p0, Lo/verifySession$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez p1, :cond_0

    .line 547
    iget-object p1, p0, Lo/verifySession$extraCallback;->onMessageChannelReady:Landroid/view/View;

    iget v0, p0, Lo/verifySession$extraCallback;->ICustomTabsCallback:I

    invoke-static {p1, v0}, Lo/equals;->onPostMessage(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 555
    iget-boolean p1, p0, Lo/verifySession$extraCallback;->ICustomTabsCallback$Stub:Z

    if-nez p1, :cond_0

    .line 556
    iget-object p1, p0, Lo/verifySession$extraCallback;->onMessageChannelReady:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/equals;->onPostMessage(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/fromQueueItem;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/fromQueueItem;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/fromQueueItem;)V
    .locals 0

    const/4 p1, 0x1

    .line 600
    invoke-direct {p0, p1}, Lo/verifySession$extraCallback;->onNavigationEvent(Z)V

    return-void
.end method
