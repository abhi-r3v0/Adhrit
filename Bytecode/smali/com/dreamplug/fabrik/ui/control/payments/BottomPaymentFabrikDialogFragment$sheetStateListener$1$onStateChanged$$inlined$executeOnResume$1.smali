.class public final Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isRefreshPending$INotificationSideChannel;->onPostMessage(Landroid/view/View;I)V
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

.field private synthetic extraCallback:Landroid/view/View;

.field private synthetic onMessageChannelReady:Lo/isRefreshPending$INotificationSideChannel;

.field private synthetic onNavigationEvent:I

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isRefreshPending$INotificationSideChannel;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$INotificationSideChannel;

    iput p4, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:I

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Landroid/view/View;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    iget p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:I

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$INotificationSideChannel;

    iget-object p1, p1, Lo/isRefreshPending$INotificationSideChannel;->onPostMessage:Lo/isRefreshPending;

    invoke-static {p1}, Lo/isRefreshPending;->asInterface(Lo/isRefreshPending;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1702
    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$INotificationSideChannel;

    iget-object p1, p1, Lo/isRefreshPending$INotificationSideChannel;->onPostMessage:Lo/isRefreshPending;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->extraCallback(Landroid/app/Activity;)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$INotificationSideChannel;

    iget-object p1, p1, Lo/isRefreshPending$INotificationSideChannel;->onPostMessage:Lo/isRefreshPending;

    invoke-static {p1}, Lo/isRefreshPending;->asBinder(Lo/isRefreshPending;)V

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/isRefreshPending$INotificationSideChannel;

    iget-object p1, p1, Lo/isRefreshPending$INotificationSideChannel;->onPostMessage:Lo/isRefreshPending;

    .line 1000
    iget-object p1, p1, Lo/isRefreshPending;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 56
    invoke-static {p1, v2, v0, v3, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 27
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
