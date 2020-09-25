.class public final Lo/stopInterceptRequestLayout$19;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$25",
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
.field public final synthetic onMessageChannelReady:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lo/stopInterceptRequestLayout$19;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

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
    .locals 5

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x5

    if-ne p2, p1, :cond_4

    .line 368
    iget-object p1, p0, Lo/stopInterceptRequestLayout$19;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 1039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1078
    iget-object p1, p1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object p2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 368
    :goto_0
    check-cast p1, Ljava/lang/String;

    const-string p2, "form"

    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 369
    iget-object p1, p0, Lo/stopInterceptRequestLayout$19;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 2037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 369
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string p2, "fragment.lifecycle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    new-instance p2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 704
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v0, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 705
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lo/stopInterceptRequestLayout$19;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 3632
    iget-object v4, v0, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    check-cast v4, Landroid/view/View;

    .line 4001
    invoke-static {v4, v1}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 3633
    iget-object v4, v0, Lo/stopInterceptRequestLayout;->getInterfaceDescriptor:Landroid/widget/TextView;

    check-cast v4, Landroid/view/View;

    .line 5001
    invoke-static {v4, v1}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 3634
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->setDefaultImpl:Landroid/view/View;

    .line 6001
    invoke-static {v0, v1}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 371
    iget-object v0, p0, Lo/stopInterceptRequestLayout$19;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 6037
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 371
    invoke-virtual {v0}, Lo/releaseGlows;->onNavigationEvent()V

    .line 707
    iput-boolean v3, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 708
    :cond_2
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_3

    .line 709
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/stopInterceptRequestLayout$19;)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 710
    iget-object p2, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 712
    :cond_3
    :goto_2
    new-instance p2, Lo/stopInterceptRequestLayout$19$onNavigationEvent;

    invoke-direct {p2, v2, p1}, Lo/stopInterceptRequestLayout$19$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_4
    return-void
.end method
