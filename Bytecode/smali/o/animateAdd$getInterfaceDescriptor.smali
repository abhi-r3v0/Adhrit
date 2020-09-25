.class public final Lo/animateAdd$getInterfaceDescriptor;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAdd;-><init>()V
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
        "com/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1",
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
.field public final synthetic extraCallback:Lo/animateAdd;


# direct methods
.method constructor <init>(Lo/animateAdd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 9

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 537
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 538
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    float-to-double v5, p2

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 149
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float p2, v7

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 150
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v1, v5

    .line 151
    iget-object v3, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->progress:I

    invoke-virtual {v3, v5}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/canReuseUpdatedViewHolder;

    const-string v5, "progress"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lo/canReuseUpdatedViewHolder;->setAlpha(F)V

    .line 152
    iget-object v3, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->dummyView:I

    invoke-virtual {v3, v5}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "dummyView"

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setAlpha(F)V

    .line 153
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->shareCta:I

    invoke-virtual {p2, v3}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string/jumbo v3, "shareCta"

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 154
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->overflowCta:I

    invoke-virtual {p2, v3}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string v3, "overflowCta"

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 155
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->swipeCta:I

    invoke-virtual {p2, v3}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string/jumbo v3, "swipeCta"

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 156
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->swipeLottie:I

    invoke-virtual {p2, v3}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v3, "swipeLottie"

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    .line 157
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->shimGradient:I

    invoke-virtual {p2, v3}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string/jumbo v3, "shimGradient"

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 158
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->shimSolid:I

    invoke-virtual {p2, v3}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string/jumbo v3, "shimSolid"

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 540
    iput-boolean v4, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_2

    .line 542
    new-instance v1, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onSlide$$inlined$executeOnResume$1;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onSlide$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/animateAdd$getInterfaceDescriptor;F)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 543
    iget-object p2, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 545
    :cond_2
    :goto_0
    new-instance p2, Lo/animateAdd$getInterfaceDescriptor$onMessageChannelReady;

    invoke-direct {p2, v2, p1}, Lo/animateAdd$getInterfaceDescriptor$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)V
    .locals 11

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 547
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 548
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    const/4 v3, 0x5

    if-eq p2, v3, :cond_2

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 169
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-static {p2}, Lo/animateAdd;->ICustomTabsCallback$Stub(Lo/animateAdd;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 170
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->progress:I

    invoke-virtual {p2, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/canReuseUpdatedViewHolder;

    iget-object v1, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v1, v3}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/animateChangeImpl;

    const-string v3, "digestSlider"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4627
    iget v1, v1, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 5053
    iget-object p2, p2, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getOldListSize;

    .line 6024
    iget-object p2, p2, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->resume()V

    .line 171
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {p2, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/animateChangeImpl;

    invoke-virtual {p2}, Lo/animateChangeImpl;->onMessageChannelReady()V

    goto :goto_2

    .line 165
    :cond_2
    :goto_1
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-static {p2}, Lo/animateAdd;->onRelationshipValidationResult(Lo/animateAdd;)J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v3, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-static {v3}, Lo/animateAdd;->asBinder(Lo/animateAdd;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    add-long/2addr v5, v7

    invoke-static {p2, v5, v6}, Lo/animateAdd;->onNavigationEvent(Lo/animateAdd;J)V

    .line 166
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-static {p2}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object p2

    new-array v3, v4, [Lo/addWrite;

    iget-object v5, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-static {v5}, Lo/animateAdd;->onRelationshipValidationResult(Lo/animateAdd;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 3043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "time_spent"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v1

    const-string v1, "pairs"

    .line 166
    invoke-static {v3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v3, "$this$plus"

    .line 166
    invoke-static {p2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "map"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3659
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v3, Ljava/util/Map;

    .line 166
    invoke-static {v3}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    const-string v1, "digest_screen_close"

    invoke-static {v1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 167
    iget-object p2, p0, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-virtual {p2}, Landroid/app/Activity;->onBackPressed()V

    .line 550
    :cond_4
    :goto_2
    iput-boolean v4, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_3

    .line 551
    :cond_5
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_6

    .line 552
    new-instance v1, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/animateAdd$getInterfaceDescriptor;I)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 553
    iget-object p2, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 555
    :cond_6
    :goto_3
    new-instance p2, Lo/animateAdd$getInterfaceDescriptor$extraCallback;

    invoke-direct {p2, v2, p1}, Lo/animateAdd$getInterfaceDescriptor$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
