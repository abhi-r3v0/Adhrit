.class public final Lo/findMinMaxChildLayoutPositions$onPostMessage$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findMinMaxChildLayoutPositions$onPostMessage;
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
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinVoucherWidget$stateChange$1$1",
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
.field final synthetic onMessageChannelReady:Lo/findMinMaxChildLayoutPositions$onPostMessage;

.field private synthetic onNavigationEvent:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lo/findMinMaxChildLayoutPositions$onPostMessage;Landroid/animation/ObjectAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ObjectAnimator;",
            ")V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions$onPostMessage;

    iput-object p2, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onNavigationEvent:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 110
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions$onPostMessage;

    iget-boolean p1, p1, Lo/findMinMaxChildLayoutPositions$onPostMessage;->extraCallback:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions$onPostMessage;

    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions$onPostMessage;->ICustomTabsCallback:Lo/findMinMaxChildLayoutPositions;

    .line 1046
    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions;->onNavigationEvent:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions$onPostMessage;

    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions$onPostMessage;->ICustomTabsCallback:Lo/findMinMaxChildLayoutPositions;

    .line 2045
    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions;->onMessageChannelReady:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions$onPostMessage;

    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions$onPostMessage;->ICustomTabsCallback:Lo/findMinMaxChildLayoutPositions;

    .line 3044
    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions;->extraCallback:Landroid/widget/ImageView;

    .line 113
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions$onPostMessage;

    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions$onPostMessage;->ICustomTabsCallback:Lo/findMinMaxChildLayoutPositions;

    .line 3046
    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions;->onNavigationEvent:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const/4 v2, 0x4

    .line 115
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions$onPostMessage;

    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions$onPostMessage;->ICustomTabsCallback:Lo/findMinMaxChildLayoutPositions;

    .line 4045
    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions;->onMessageChannelReady:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions$onPostMessage;

    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions$onPostMessage;->ICustomTabsCallback:Lo/findMinMaxChildLayoutPositions;

    .line 5044
    iget-object p1, p1, Lo/findMinMaxChildLayoutPositions;->extraCallback:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :goto_0
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onNavigationEvent:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 123
    iget-object p1, p0, Lo/findMinMaxChildLayoutPositions$onPostMessage$3;->onMessageChannelReady:Lo/findMinMaxChildLayoutPositions$onPostMessage;

    iget-boolean p1, p1, Lo/findMinMaxChildLayoutPositions$onPostMessage;->extraCallback:Z

    if-nez p1, :cond_1

    .line 124
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance p1, Lo/findMinMaxChildLayoutPositions$onPostMessage$3$ICustomTabsCallback;

    invoke-direct {p1, p0}, Lo/findMinMaxChildLayoutPositions$onPostMessage$3$ICustomTabsCallback;-><init>(Lo/findMinMaxChildLayoutPositions$onPostMessage$3;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    .line 6018
    new-instance v2, Lo/updateItemAt$extraCallback;

    invoke-direct {v2, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    :cond_1
    return-void
.end method
