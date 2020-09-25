.class public final Lo/stopInterceptRequestLayout$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getThumbTintList<",
        "+",
        "Lo/addFocusables;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatus;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic ICustomTabsCallback:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 14

    .line 36
    check-cast p1, Lo/getThumbTintList;

    .line 1111
    iget-object v0, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 2037
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 1111
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "fragment.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1703
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1704
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1705
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v6

    sget-object v7, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v6, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    const/4 v7, 0x1

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_a

    .line 3011
    iget-boolean v6, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v6, :cond_1

    move-object p1, v5

    goto :goto_1

    .line 3015
    :cond_1
    iput-boolean v7, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 3016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1112
    :goto_1
    check-cast p1, Lo/addFocusables;

    if-eqz p1, :cond_9

    .line 1114
    instance-of v6, p1, Lo/addFocusables$ICustomTabsCallback;

    if-eqz v6, :cond_2

    .line 1115
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onTransact:Lo/onDestroyView;

    .line 1115
    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1116
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 3039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 3078
    iget-object p1, p1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    const-string/jumbo v1, "store_payment_slider "

    .line 1116
    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1117
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 4037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 4389
    iget-object p1, p1, Lo/releaseGlows;->onPostMessage:Lo/releaseGlows$onPostMessage;

    .line 1117
    iget-object v1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 5037
    iget-object v1, v1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 1117
    iget-object v6, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 5039
    iget-object v6, v6, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    const/4 v8, 0x3

    .line 1117
    invoke-static {v6, v3, v5, v8}, Lo/pullGlows;->extraCallback(Lo/pullGlows;ZLjava/util/Map;I)Ljava/util/List;

    move-result-object v3

    .line 5417
    invoke-interface {p1, v1, v3, v5}, Lo/releaseGlows$onPostMessage;->onPostMessage(Lo/releaseGlows;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V

    .line 1118
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 6037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 1118
    invoke-virtual {p1}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v1, "reward_payment_service_screen_cancel"

    invoke-static {v1, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_3

    .line 1121
    :cond_2
    instance-of v6, p1, Lo/addFocusables$extraCallback;

    if-eqz v6, :cond_6

    .line 1122
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 7036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onTransact:Lo/onDestroyView;

    .line 1122
    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1123
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 8036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onRelationshipValidationResult:Lo/onChildrenLoaded;

    .line 1123
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 8037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 1124
    invoke-virtual {p1}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v6, "reward_payment_success_screen_load"

    invoke-static {v6, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1125
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 9037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 1125
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1707
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v3, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1708
    new-instance v6, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v6}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v5, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1709
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v8, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 9212
    invoke-virtual {v5, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 1126
    iget-object v3, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 10036
    iget-object v3, v3, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub:Lcom/airbnb/lottie/LottieAnimationView;

    .line 1126
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 1127
    iget-object v3, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 11036
    iget-object v3, v3, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub:Lcom/airbnb/lottie/LottieAnimationView;

    .line 1127
    new-instance v5, Lo/stopInterceptRequestLayout$asInterface$extraCallback;

    invoke-direct {v5, p0}, Lo/stopInterceptRequestLayout$asInterface$extraCallback;-><init>(Lo/stopInterceptRequestLayout$asInterface;)V

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1711
    iput-boolean v7, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 1712
    :cond_4
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v3, v5, :cond_5

    .line 1713
    new-instance v3, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;

    invoke-direct {v3, p1, v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$3;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/stopInterceptRequestLayout$asInterface;)V

    check-cast v3, Lo/createCallback;

    iput-object v3, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1714
    iget-object v1, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1716
    :cond_5
    :goto_2
    new-instance v1, Lo/stopInterceptRequestLayout$asInterface$onNavigationEvent;

    invoke-direct {v1, v6, p1}, Lo/stopInterceptRequestLayout$asInterface$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    goto :goto_3

    .line 1139
    :cond_6
    instance-of v1, p1, Lo/addFocusables$onMessageChannelReady;

    if-eqz v1, :cond_7

    .line 1140
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 12036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onTransact:Lo/onDestroyView;

    .line 1140
    invoke-virtual {p1, v3}, Lo/prependViewToAllSpans;->ICustomTabsCallback(Z)V

    goto :goto_3

    .line 1144
    :cond_7
    instance-of v1, p1, Lo/addFocusables$onNavigationEvent;

    if-eqz v1, :cond_8

    .line 1145
    iget-object v1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 13036
    iget-object v1, v1, Lo/stopInterceptRequestLayout;->onRelationshipValidationResult:Lo/onChildrenLoaded;

    const/16 v3, 0x8

    .line 1145
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    iget-object v1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 14036
    iget-object v1, v1, Lo/stopInterceptRequestLayout;->onTransact:Lo/onDestroyView;

    .line 1146
    invoke-virtual {v1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1147
    iget-object v1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 14039
    iget-object v1, v1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 14078
    iget-object v1, v1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    const-string v3, "form"

    .line 1147
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1148
    new-instance v1, Lo/requestChildRectangleOnScreen;

    iget-object v3, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 15037
    iget-object v3, v3, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 1148
    move-object v9, v3

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 16005
    iget-wide v10, p1, Lo/addFocusables;->extraCallback:D

    .line 17005
    iget-object v12, p1, Lo/addFocusables;->onPostMessage:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    .line 1148
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 17036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplBaseParcelizer:Lo/stopInterceptRequestLayout;

    .line 1148
    move-object v13, p1

    check-cast v13, Lo/requestChildRectangleOnScreen$ICustomTabsCallback;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lo/requestChildRectangleOnScreen;-><init>(Landroidx/fragment/app/Fragment;DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Lo/requestChildRectangleOnScreen$ICustomTabsCallback;)V

    .line 1149
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1150
    iget-object p1, p0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 17037
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 1150
    invoke-virtual {p1}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v1, "reward_payment_failure_screen_load"

    invoke-static {v1, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_3

    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1717
    :cond_9
    :goto_3
    iput-boolean v7, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_4

    .line 1718
    :cond_a
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_b

    .line 1719
    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/stopInterceptRequestLayout$asInterface;Lo/getThumbTintList;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1720
    iget-object p1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1722
    :cond_b
    :goto_4
    new-instance p1, Lo/stopInterceptRequestLayout$asInterface$onMessageChannelReady;

    invoke-direct {p1, v4, v0}, Lo/stopInterceptRequestLayout$asInterface$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
