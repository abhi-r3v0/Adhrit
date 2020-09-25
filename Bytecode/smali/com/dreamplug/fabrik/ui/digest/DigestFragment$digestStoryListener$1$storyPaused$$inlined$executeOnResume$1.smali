.class public final Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAdd$extraCallback;->onMessageChannelReady(Z)V
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
.field private synthetic extraCallback:Z

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onNavigationEvent:Lo/animateAdd$extraCallback;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/animateAdd$extraCallback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onNavigationEvent:Lo/animateAdd$extraCallback;

    iput-boolean p4, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->extraCallback:Z

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-boolean p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->extraCallback:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onNavigationEvent:Lo/animateAdd$extraCallback;

    iget-object p1, p1, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->progress:I

    invoke-virtual {p1, v2}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/canReuseUpdatedViewHolder;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onNavigationEvent:Lo/animateAdd$extraCallback;

    iget-object v2, v2, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v2}, Lo/animateAdd;->asInterface(Lo/animateAdd;)I

    move-result v2

    .line 1051
    iget-object p1, p1, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getOldListSize;

    .line 2022
    iget-object p1, p1, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->pause()V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onNavigationEvent:Lo/animateAdd$extraCallback;

    iget-object p1, p1, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {p1, v2}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/animateChangeImpl;

    invoke-virtual {p1, v0}, Lo/animateChangeImpl;->onPostMessage(Z)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onNavigationEvent:Lo/animateAdd$extraCallback;

    iget-object p1, p1, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    invoke-static {p1}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object p1

    new-array v2, v1, [Lo/addWrite;

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "reason"

    const-string/jumbo v5, "video_buffer"

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const-string v0, "pairs"

    .line 57
    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "$this$plus"

    .line 57
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2659
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v2, Ljava/util/Map;

    .line 57
    invoke-static {v2}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "digest_story_paused"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onNavigationEvent:Lo/animateAdd$extraCallback;

    iget-object p1, p1, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {p1, v0}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/animateChangeImpl;

    invoke-static {p1}, Lo/animateChangeImpl;->onNavigationEvent(Lo/animateChangeImpl;)V

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
