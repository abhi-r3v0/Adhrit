.class public final Lo/stopInterceptRequestLayout$16;
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$29",
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
.field private synthetic onMessageChannelReady:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lo/stopInterceptRequestLayout$16;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

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

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_4

    .line 408
    iget-object p2, p0, Lo/stopInterceptRequestLayout$16;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 1039
    iget-object p2, p2, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1078
    iget-object p2, p2, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 1320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 408
    :goto_0
    check-cast p2, Ljava/lang/String;

    const-string/jumbo v2, "store_payment_slider "

    invoke-static {p2, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 409
    iget-object p2, p0, Lo/stopInterceptRequestLayout$16;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 2039
    iget-object p2, p2, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 409
    invoke-virtual {p2}, Lo/pullGlows;->onRelationshipValidationResult()Z

    .line 411
    :cond_1
    iget-object p2, p0, Lo/stopInterceptRequestLayout$16;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object p2, p2, Lo/stopInterceptRequestLayout;->mayLaunchUrl:Lo/onRequestFocusInDescendants;

    .line 3327
    iput-boolean v1, p2, Lo/onRequestFocusInDescendants;->onMessageChannelReady:Z

    .line 3328
    iget-object v2, p2, Lo/onRequestFocusInDescendants;->ICustomTabsCallback$Stub:Lo/recycleFromEnd;

    sget-object v3, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v2, v3}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 3329
    iget-object v2, p2, Lo/onRequestFocusInDescendants;->onRelationshipValidationResult:Lo/findFirstReferenceChildPosition;

    invoke-virtual {v2, v1}, Lo/findFirstReferenceChildPosition;->setProgress(I)V

    .line 3330
    iget-object v2, p2, Lo/onRequestFocusInDescendants;->warmup:Lo/createFullSpanItemFromEnd;

    const-string v3, "recommended"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3331
    iput-boolean v1, p2, Lo/onRequestFocusInDescendants;->cancelAll:Z

    .line 412
    iget-object p2, p0, Lo/stopInterceptRequestLayout$16;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 4039
    iget-object p2, p2, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 4070
    iget-object p2, p2, Lo/pullGlows;->newSession:Lo/setActive;

    .line 4320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p2, v1, :cond_2

    move-object v0, p2

    .line 412
    :cond_2
    check-cast v0, Lo/getThumbTintList;

    if-eqz v0, :cond_3

    .line 5005
    iput-boolean p1, v0, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x3

    if-ne p2, v2, :cond_a

    .line 414
    iget-object p2, p0, Lo/stopInterceptRequestLayout$16;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 5036
    iget-object p2, p2, Lo/stopInterceptRequestLayout;->mayLaunchUrl:Lo/onRequestFocusInDescendants;

    .line 5160
    iget-boolean v2, p2, Lo/onRequestFocusInDescendants;->onMessageChannelReady:Z

    if-nez v2, :cond_a

    .line 5161
    iput-boolean p1, p2, Lo/onRequestFocusInDescendants;->onMessageChannelReady:Z

    .line 5162
    iget-object v2, p2, Lo/onRequestFocusInDescendants;->notify:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-eqz v2, :cond_5

    .line 5163
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p2, Lo/onRequestFocusInDescendants;->INotificationSideChannel$Stub$Proxy:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v3

    const-string v4, "fragment.lifecycle"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0xc8

    new-instance v6, Lo/onRequestFocusInDescendants$onNavigationEvent;

    invoke-direct {v6, p2}, Lo/onRequestFocusInDescendants$onNavigationEvent;-><init>(Lo/onRequestFocusInDescendants;)V

    check-cast v6, Lo/getServerTime;

    invoke-static {v2, v3, v4, v5, v6}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    goto :goto_1

    .line 5167
    :cond_5
    iget-object v2, p2, Lo/onRequestFocusInDescendants;->ICustomTabsCallback$Stub:Lo/recycleFromEnd;

    sget-object v3, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v2, v3}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 5168
    iget-object v2, p2, Lo/onRequestFocusInDescendants;->mayLaunchUrl:Lo/setActive;

    iget-object v3, p2, Lo/onRequestFocusInDescendants;->extraCommand:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-nez v3, :cond_6

    const-string v4, "minSliderSlab"

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 5170
    :goto_1
    iget-object v2, p2, Lo/onRequestFocusInDescendants;->getInterfaceDescriptor:Ljava/util/Map;

    if-eqz v2, :cond_9

    const/4 v3, 0x2

    new-array v4, v3, [Lo/addWrite;

    .line 5171
    iget-object v5, p2, Lo/onRequestFocusInDescendants;->IPostMessageService$Stub$Proxy:Lo/getItemDecorationCount;

    if-eqz v5, :cond_7

    .line 6053
    iget-object v5, v5, Lo/getItemDecorationCount;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    if-eqz v5, :cond_7

    .line 7025
    iget-object v0, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onRelationshipValidationResult:Ljava/lang/String;

    :cond_7
    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 5171
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 7043
    new-instance v5, Lo/addWrite;

    const-string v6, "recommended_present"

    invoke-direct {v5, v6, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    .line 5172
    iget-boolean p2, p2, Lo/onRequestFocusInDescendants;->INotificationSideChannel:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 8043
    new-instance v0, Lo/addWrite;

    const-string v1, "recommended_valid"

    invoke-direct {v0, v1, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v4, p1

    const-string p1, "pairs"

    .line 5170
    invoke-static {v4, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p2, "$this$plus"

    .line 5170
    invoke-static {v2, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "map"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8659
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 5170
    :cond_9
    invoke-static {v0}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo p2, "reward_payment_screen_load"

    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_a
    return-void
.end method
