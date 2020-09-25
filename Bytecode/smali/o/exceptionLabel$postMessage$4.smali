.class public final Lo/exceptionLabel$postMessage$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/exceptionLabel$postMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/holders/ClaimedRewardHolder$stateChange$1$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroid/animation/ObjectAnimator;

.field final synthetic onPostMessage:Lo/exceptionLabel$postMessage;


# direct methods
.method constructor <init>(Lo/exceptionLabel$postMessage;Landroid/animation/ObjectAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ObjectAnimator;",
            ")V"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iput-object p2, p0, Lo/exceptionLabel$postMessage$4;->ICustomTabsCallback:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 362
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object p1, p1, Lo/exceptionLabel$postMessage;->ICustomTabsCallback:Lo/updateAnchorInfoForLayout;

    .line 1076
    iget-boolean p1, p1, Lo/updateAnchorInfoForLayout;->onPostMessage:Z

    const-string v0, "copyCode"

    const-string/jumbo v1, "secondaryCta"

    const-string v2, "displayCopy"

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object p1, p1, Lo/exceptionLabel$postMessage;->ICustomTabsCallback:Lo/updateAnchorInfoForLayout;

    .line 2076
    iput-boolean v4, p1, Lo/updateAnchorInfoForLayout;->onPostMessage:Z

    .line 364
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object p1, p1, Lo/exceptionLabel$postMessage;->onNavigationEvent:Lo/exceptionLabel;

    invoke-static {p1}, Lo/exceptionLabel;->asBinder(Lo/exceptionLabel;)Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    move-result-object p1

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object p1, p1, Lo/exceptionLabel$postMessage;->onNavigationEvent:Lo/exceptionLabel;

    invoke-static {p1}, Lo/exceptionLabel;->onRelationshipValidationResult(Lo/exceptionLabel;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object p1, p1, Lo/exceptionLabel$postMessage;->onNavigationEvent:Lo/exceptionLabel;

    invoke-static {p1}, Lo/exceptionLabel;->ICustomTabsCallback(Lo/exceptionLabel;)Lo/getRemainingScrollVertical;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    goto :goto_0

    .line 368
    :cond_0
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object p1, p1, Lo/exceptionLabel$postMessage;->ICustomTabsCallback:Lo/updateAnchorInfoForLayout;

    const/4 v5, 0x1

    .line 3076
    iput-boolean v5, p1, Lo/updateAnchorInfoForLayout;->onPostMessage:Z

    .line 369
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object p1, p1, Lo/exceptionLabel$postMessage;->onNavigationEvent:Lo/exceptionLabel;

    invoke-static {p1}, Lo/exceptionLabel;->asBinder(Lo/exceptionLabel;)Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    move-result-object p1

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object p1, p1, Lo/exceptionLabel$postMessage;->onNavigationEvent:Lo/exceptionLabel;

    invoke-static {p1}, Lo/exceptionLabel;->onRelationshipValidationResult(Lo/exceptionLabel;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object p1, p1, Lo/exceptionLabel$postMessage;->onNavigationEvent:Lo/exceptionLabel;

    invoke-static {p1}, Lo/exceptionLabel;->ICustomTabsCallback(Lo/exceptionLabel;)Lo/getRemainingScrollVertical;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 373
    :goto_0
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->ICustomTabsCallback:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 378
    iget-object p1, p0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object p1, p1, Lo/exceptionLabel$postMessage;->ICustomTabsCallback:Lo/updateAnchorInfoForLayout;

    .line 4076
    iget-boolean p1, p1, Lo/updateAnchorInfoForLayout;->onPostMessage:Z

    if-eqz p1, :cond_1

    .line 379
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance p1, Lo/exceptionLabel$postMessage$4$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/exceptionLabel$postMessage$4$onNavigationEvent;-><init>(Lo/exceptionLabel$postMessage$4;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    .line 5018
    new-instance v2, Lo/updateItemAt$extraCallback;

    invoke-direct {v2, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    :cond_1
    return-void
.end method
