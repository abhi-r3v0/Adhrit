.class public final Lo/isRefreshPending$extraCommand;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isRefreshPending;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onSlide",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "onStateChanged",
        "newState",
        "",
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
.field public final synthetic ICustomTabsCallback:Lo/isRefreshPending;


# direct methods
.method constructor <init>(Lo/isRefreshPending;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 0

    const-string p2, "bottomSheet"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)V
    .locals 7

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 678
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 679
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
    if-eqz v4, :cond_3

    const/4 v4, 0x5

    if-ne p2, v4, :cond_1

    .line 332
    iget-object v4, p0, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {v4, v1}, Lo/isRefreshPending;->extraCallback(Lo/isRefreshPending;Z)V

    .line 333
    iget-object v4, p0, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {v4}, Lo/isRefreshPending;->onTransact(Lo/isRefreshPending;)Lo/refresh;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v6, Lo/isRefreshPending$extraCommand$onPostMessage;

    invoke-direct {v6, p0}, Lo/isRefreshPending$extraCommand$onPostMessage;-><init>(Lo/isRefreshPending$extraCommand;)V

    check-cast v6, Lo/getServerTime;

    .line 2089
    iget-object v4, v4, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1, v6}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(ZLo/getServerTime;)V

    :cond_1
    const/4 v4, 0x3

    if-ne p2, v4, :cond_2

    .line 339
    iget-object p2, p0, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {p2, v5}, Lo/isRefreshPending;->extraCallback(Lo/isRefreshPending;Z)V

    .line 340
    iget-object p2, p0, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->customDialogBackGround:I

    invoke-virtual {p2, v4}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p2

    const-string v4, "customDialogBackGround"

    invoke-static {p2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object p2, p0, Lo/isRefreshPending$extraCommand;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {p2}, Lo/isRefreshPending;->onTransact(Lo/isRefreshPending;)Lo/refresh;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3089
    iget-object p2, p2, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v5, v3}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(ZLo/getServerTime;)V

    .line 681
    :cond_2
    iput-boolean v5, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 682
    :cond_3
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_4

    .line 683
    new-instance v1, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isRefreshPending$extraCommand;I)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 684
    iget-object p2, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 686
    :cond_4
    :goto_1
    new-instance p2, Lo/isRefreshPending$extraCommand$extraCallback;

    invoke-direct {p2, v2, p1}, Lo/isRefreshPending$extraCommand$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
