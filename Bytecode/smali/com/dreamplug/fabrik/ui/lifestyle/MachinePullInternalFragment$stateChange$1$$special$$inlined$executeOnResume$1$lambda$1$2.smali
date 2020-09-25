.class public final Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->onAnimationEnd(Landroid/animation/Animator;)V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release",
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$1$1$onAnimationEnd$$inlined$executeOnResume$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field final synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    .line 1492
    iget-boolean p1, p1, Lo/computeScrollExtent;->ICustomTabsCallback:Z

    const-string v0, "copyCode"

    const-string v1, "displayCopy"

    const/4 v2, 0x1

    const/16 v3, 0x8

    const-string/jumbo v4, "secondaryCta"

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    .line 2492
    iput-boolean v5, p1, Lo/computeScrollExtent;->ICustomTabsCallback:Z

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {p1, v6}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p1, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {p1, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getRemainingScrollVertical;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    goto/16 :goto_1

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    .line 3492
    iput-boolean v2, p1, Lo/computeScrollExtent;->ICustomTabsCallback:Z

    .line 60
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {p1, v6}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 4076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_1

    .line 4088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {v1, v6}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5064
    sget-object v6, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v6, Lo/calculateScrollDirectionForPosition;

    invoke-static {v1, p1, v6}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p1, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 5076
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v1, :cond_2

    .line 5089
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_2

    .line 6000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 64
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {p1, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getRemainingScrollVertical;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p1, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :goto_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->ICustomTabsCallback:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 73
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$extraCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/computeScrollExtent$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/computeScrollExtent;

    .line 6492
    iget-boolean p1, p1, Lo/computeScrollExtent;->ICustomTabsCallback:Z

    if-eqz p1, :cond_3

    .line 74
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance p1, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2$4;

    invoke-direct {p1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2$4;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    .line 7018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v0, v1, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1$lambda$1$2;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v2, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
