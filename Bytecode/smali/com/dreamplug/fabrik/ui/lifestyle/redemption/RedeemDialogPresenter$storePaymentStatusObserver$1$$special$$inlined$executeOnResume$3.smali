.class public final Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/stopInterceptRequestLayout$asInterface;
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
.field final synthetic ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/getThumbTintList;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/stopInterceptRequestLayout$asInterface;Lo/getThumbTintList;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->onNavigationEvent:Lo/getThumbTintList;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

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
    .locals 9

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->onNavigationEvent:Lo/getThumbTintList;

    .line 1011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 1015
    :cond_0
    iput-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 1016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 53
    :goto_0
    check-cast p1, Lo/addFocusables;

    if-eqz p1, :cond_8

    .line 55
    instance-of v0, p1, Lo/addFocusables$ICustomTabsCallback;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 1036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onTransact:Lo/onDestroyView;

    .line 56
    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 1039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1078
    iget-object p1, p1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    const-string/jumbo v0, "store_payment_slider "

    .line 57
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 2037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 2389
    iget-object p1, p1, Lo/releaseGlows;->onPostMessage:Lo/releaseGlows$onPostMessage;

    .line 58
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object v0, v0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 3037
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 58
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object v4, v4, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 3039
    iget-object v4, v4, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    const/4 v5, 0x3

    .line 58
    invoke-static {v4, v3, v1, v5}, Lo/pullGlows;->extraCallback(Lo/pullGlows;ZLjava/util/Map;I)Ljava/util/List;

    move-result-object v3

    .line 3417
    invoke-interface {p1, v0, v3, v1}, Lo/releaseGlows$onPostMessage;->onPostMessage(Lo/releaseGlows;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V

    .line 59
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 4037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 59
    invoke-virtual {p1}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "reward_payment_service_screen_cancel"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_2

    .line 62
    :cond_1
    instance-of v0, p1, Lo/addFocusables$extraCallback;

    if-eqz v0, :cond_5

    .line 63
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 5036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onTransact:Lo/onDestroyView;

    .line 63
    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 64
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 6036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onRelationshipValidationResult:Lo/onChildrenLoaded;

    .line 64
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 6037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 65
    invoke-virtual {p1}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "reward_payment_success_screen_load"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 66
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 7037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 66
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "fragment.lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v3, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 68
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 7212
    invoke-virtual {v1, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    .line 71
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object v1, v1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 8036
    iget-object v1, v1, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub:Lcom/airbnb/lottie/LottieAnimationView;

    .line 71
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 72
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object v1, v1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 9036
    iget-object v1, v1, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub:Lcom/airbnb/lottie/LottieAnimationView;

    .line 72
    new-instance v3, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$ICustomTabsCallback;

    invoke-direct {v3, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$ICustomTabsCallback;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;)V

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    iput-boolean v2, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_4

    .line 83
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    invoke-direct {v1, p1, v0, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 84
    iget-object v0, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 86
    :cond_4
    :goto_1
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$onNavigationEvent;

    invoke-direct {v0, v4, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    goto :goto_2

    .line 87
    :cond_5
    instance-of v0, p1, Lo/addFocusables$onMessageChannelReady;

    if-eqz v0, :cond_6

    .line 88
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 10036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onTransact:Lo/onDestroyView;

    .line 88
    invoke-virtual {p1, v3}, Lo/prependViewToAllSpans;->ICustomTabsCallback(Z)V

    goto :goto_2

    .line 92
    :cond_6
    instance-of v0, p1, Lo/addFocusables$onNavigationEvent;

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object v0, v0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 11036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->onRelationshipValidationResult:Lo/onChildrenLoaded;

    const/16 v1, 0x8

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object v0, v0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 12036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->onTransact:Lo/onDestroyView;

    .line 94
    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 95
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object v0, v0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 12039
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 12078
    iget-object v0, v0, Lo/pullGlows;->updateVisuals:Lo/setActive;

    const-string v1, "form"

    .line 95
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 96
    new-instance v0, Lo/requestChildRectangleOnScreen;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object v1, v1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 13037
    iget-object v1, v1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 96
    move-object v4, v1

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 14005
    iget-wide v5, p1, Lo/addFocusables;->extraCallback:D

    .line 15005
    iget-object v7, p1, Lo/addFocusables;->onPostMessage:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    .line 96
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 15036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplBaseParcelizer:Lo/stopInterceptRequestLayout;

    .line 96
    move-object v8, p1

    check-cast v8, Lo/requestChildRectangleOnScreen$ICustomTabsCallback;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lo/requestChildRectangleOnScreen;-><init>(Landroidx/fragment/app/Fragment;DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Lo/requestChildRectangleOnScreen$ICustomTabsCallback;)V

    .line 97
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 98
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->ICustomTabsCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object p1, p1, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 15037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 98
    invoke-virtual {p1}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "reward_payment_failure_screen_load"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_2

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 27
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v2, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
