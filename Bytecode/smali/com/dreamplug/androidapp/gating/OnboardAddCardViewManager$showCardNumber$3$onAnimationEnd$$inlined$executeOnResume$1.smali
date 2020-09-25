.class public final Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getLogo$ICustomTabsCallback$Stub;->onAnimationEnd(Landroid/animation/Animator;)V
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
.field private synthetic ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/getLogo$ICustomTabsCallback$Stub;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getLogo$ICustomTabsCallback$Stub;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getLogo$ICustomTabsCallback$Stub;

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
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getLogo$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/getLogo$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getLogo;

    .line 1036
    iget-object p1, p1, Lo/getLogo;->ICustomTabsCallback:Landroid/view/View;

    const/16 v0, 0x8

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getLogo$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/getLogo$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getLogo;

    .line 2036
    iget-object p1, p1, Lo/getLogo;->ICustomTabsCallback:Landroid/view/View;

    const/4 v0, 0x0

    .line 54
    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getLogo$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/getLogo$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getLogo;

    .line 3036
    iget-object p1, p1, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 3179
    iget-object p1, p1, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Lo/recycleFromStart;->setEnabled(Z)V

    .line 56
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getLogo$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/getLogo$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getLogo;

    .line 4036
    iget-object p1, p1, Lo/getLogo;->onPostMessage:Landroid/view/View;

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getLogo$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/getLogo$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getLogo;

    .line 5036
    iget-object p1, p1, Lo/getLogo;->asBinder:Landroid/view/View;

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getLogo$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/getLogo$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getLogo;

    .line 6036
    iget-object p1, p1, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 6179
    iget-object p1, p1, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 59
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getLogo$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/getLogo$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getLogo;

    .line 7036
    iget-object p1, p1, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 7179
    iget-object p1, p1, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 59
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
