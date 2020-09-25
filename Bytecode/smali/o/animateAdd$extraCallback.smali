.class public final Lo/animateAdd$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/endAnimations;


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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1",
        "Lcom/dreamplug/fabrik/ui/digest/DigestStoryListener;",
        "storyPaused",
        "",
        "userAction",
        "",
        "storyResume",
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
.field public final synthetic onNavigationEvent:Lo/animateAdd;


# direct methods
.method constructor <init>(Lo/animateAdd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Z)V
    .locals 6

    .line 416
    iget-object v0, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;Z)V

    .line 417
    iget-object v0, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v2, "lifecycle"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v1, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 547
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 548
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 4212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 419
    iget-object p1, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->progress:I

    invoke-virtual {p1, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/canReuseUpdatedViewHolder;

    iget-object v1, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v1}, Lo/animateAdd;->asInterface(Lo/animateAdd;)I

    move-result v1

    .line 5053
    iget-object p1, p1, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getOldListSize;

    .line 6024
    iget-object p1, p1, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->resume()V

    goto :goto_0

    .line 421
    :cond_1
    iget-object p1, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {p1, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/animateChangeImpl;

    invoke-virtual {p1}, Lo/animateChangeImpl;->onMessageChannelReady()V

    .line 550
    :goto_0
    iput-boolean v5, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 551
    :cond_2
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v4, :cond_3

    .line 552
    new-instance v1, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/animateAdd$extraCallback;Z)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 553
    iget-object p1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 555
    :cond_3
    :goto_1
    new-instance p1, Lo/animateAdd$extraCallback$onPostMessage;

    invoke-direct {p1, v3, v0}, Lo/animateAdd$extraCallback$onPostMessage;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 9

    .line 403
    iget-object v0, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;Z)V

    .line 404
    iget-object v0, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v2, "lifecycle"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 537
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 538
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    if-eqz p1, :cond_1

    .line 406
    iget-object p1, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->progress:I

    invoke-virtual {p1, v5}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/canReuseUpdatedViewHolder;

    iget-object v5, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v5}, Lo/animateAdd;->asInterface(Lo/animateAdd;)I

    move-result v5

    .line 2051
    iget-object p1, p1, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getOldListSize;

    .line 3022
    iget-object p1, p1, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->pause()V

    .line 407
    iget-object p1, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {p1, v5}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/animateChangeImpl;

    invoke-virtual {p1, v3}, Lo/animateChangeImpl;->onPostMessage(Z)V

    goto :goto_1

    .line 409
    :cond_1
    iget-object p1, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    invoke-static {p1}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object p1

    new-array v5, v1, [Lo/addWrite;

    .line 3043
    new-instance v6, Lo/addWrite;

    const-string v7, "reason"

    const-string/jumbo v8, "video_buffer"

    invoke-direct {v6, v7, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v3

    const-string v3, "pairs"

    .line 409
    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v5, "$this$plus"

    .line 409
    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "map"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3659
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v3}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v5, Ljava/util/Map;

    .line 409
    invoke-static {v5}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string v3, "digest_story_paused"

    invoke-static {v3, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 410
    iget-object p1, p0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {p1, v3}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/animateChangeImpl;

    invoke-static {p1}, Lo/animateChangeImpl;->onNavigationEvent(Lo/animateChangeImpl;)V

    .line 540
    :goto_1
    iput-boolean v1, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 541
    :cond_2
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_3

    .line 542
    new-instance v1, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/animateAdd$extraCallback;Z)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 543
    iget-object p1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 545
    :cond_3
    :goto_2
    new-instance p1, Lo/animateAdd$extraCallback$onNavigationEvent;

    invoke-direct {p1, v4, v0}, Lo/animateAdd$extraCallback$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
