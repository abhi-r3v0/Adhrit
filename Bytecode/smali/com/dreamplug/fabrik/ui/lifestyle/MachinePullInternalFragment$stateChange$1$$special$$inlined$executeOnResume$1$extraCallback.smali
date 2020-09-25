.class public final Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onPostMessage(Lo/toLegacyStreamType;)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$1$1",
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
.field final synthetic ICustomTabsCallback:Landroid/animation/ObjectAnimator;

.field final synthetic extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Landroid/animation/ObjectAnimator;Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->ICustomTabsCallback:Landroid/animation/ObjectAnimator;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    .line 455
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 11

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 458
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 514
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 515
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    .line 459
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v4, v4, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    .line 1492
    iget-boolean v4, v4, Lo/computeScrollExtent;->ICustomTabsCallback:Z

    const-string v6, "copyCode"

    const-string v7, "displayCopy"

    const/16 v8, 0x8

    const-string/jumbo v9, "secondaryCta"

    if-eqz v4, :cond_1

    .line 460
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v3, v3, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    .line 2492
    iput-boolean v1, v3, Lo/computeScrollExtent;->ICustomTabsCallback:Z

    .line 461
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v3, v3, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {v3, v4}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v3, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v3, v3, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {v3, v4}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v3, v3, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {v3, v4}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/getRemainingScrollVertical;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    goto/16 :goto_1

    .line 465
    :cond_1
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v4, v4, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    .line 3492
    iput-boolean v5, v4, Lo/computeScrollExtent;->ICustomTabsCallback:Z

    .line 466
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v4, v4, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v10, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {v4, v10}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v4, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v4, v4, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 4076
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v4, :cond_2

    .line 4088
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 468
    iget-object v7, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v7, v7, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v10, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {v7, v10}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v7, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5064
    sget-object v10, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v10, Lo/calculateScrollDirectionForPosition;

    invoke-static {v7, v4, v10}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 470
    :cond_2
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v4, v4, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {v4, v7}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v7, v7, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 5076
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v7, :cond_3

    .line 5089
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v7, :cond_3

    .line 6000
    iget-object v3, v7, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 470
    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v3, v3, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {v3, v4}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/getRemainingScrollVertical;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 472
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v3, v3, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {v3, v4}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    :goto_1
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->ICustomTabsCallback:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 479
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    .line 6492
    iget-boolean v1, v1, Lo/computeScrollExtent;->ICustomTabsCallback:Z

    if-eqz v1, :cond_4

    .line 480
    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback$2;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback$2;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;)V

    check-cast v1, Lo/getServerTime;

    const-string v3, "command"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x1388

    .line 7018
    new-instance v6, Lo/updateItemAt$extraCallback;

    invoke-direct {v6, v1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v6, Ljava/lang/Runnable;

    invoke-static {v3, v4, v6}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 517
    :cond_4
    iput-boolean v5, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 518
    :cond_5
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_6

    .line 519
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;

    invoke-direct {v1, p1, v0, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 520
    iget-object v0, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 522
    :cond_6
    :goto_2
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback$5;

    invoke-direct {v0, v2, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback$5;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
