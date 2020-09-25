.class public final Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getItemOffsets;->onNavigationEvent(ZZZ)V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getItemOffsets;

.field private synthetic onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getItemOffsets;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->extraCallback:Lo/getItemOffsets;

    iput-boolean p4, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->onMessageChannelReady:Z

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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
    .locals 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->extraCallback:Lo/getItemOffsets;

    .line 1027
    iget-object p1, p1, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v0, "fragment.childFragmentManager"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1896
    iget-object p1, p1, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {p1}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p1

    const-string v0, "fragment.childFragmentManager.fragments"

    .line 53
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$firstOrNull"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2243
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 53
    :goto_0
    instance-of v0, p1, Lo/getColumnCountForAccessibility;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    check-cast v1, Lo/getColumnCountForAccessibility;

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Lo/getColumnCountForAccessibility;->ICustomTabsCallback(Z)V

    .line 54
    :cond_2
    iget-boolean p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->onMessageChannelReady:Z

    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->extraCallback:Lo/getItemOffsets;

    .line 3026
    iget-object p1, p1, Lo/getItemOffsets;->onPostMessage:Landroid/view/View;

    .line 56
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animationContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string/jumbo v0, "view.animationContainer"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$visible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->extraCallback:Lo/getItemOffsets;

    .line 4026
    iget-object p1, p1, Lo/getItemOffsets;->onPostMessage:Landroid/view/View;

    .line 57
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animationContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 58
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->extraCallback:Lo/getItemOffsets;

    .line 4027
    iget-object v0, v0, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 58
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010022

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    new-instance v1, Lo/setDrawerListener$onPostMessage;

    invoke-direct {v1}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 63
    sget-object v2, Lo/getItemOffsets$onMessageChannelReady;->onMessageChannelReady:Lo/getItemOffsets$onMessageChannelReady;

    check-cast v2, Lo/onDisconnectSetValue;

    const-string v3, "func"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4031
    iput-object v2, v1, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 67
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
