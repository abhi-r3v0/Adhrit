.class public final Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAdd$getInterfaceDescriptor;->onPostMessage(Landroid/view/View;I)V
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

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

.field private synthetic onNavigationEvent:I


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/animateAdd$getInterfaceDescriptor;I)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

    iput p4, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:I

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:I

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

    iget-object p1, p1, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-static {p1}, Lo/animateAdd;->ICustomTabsCallback$Stub(Lo/animateAdd;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 59
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

    iget-object p1, p1, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->progress:I

    invoke-virtual {p1, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/canReuseUpdatedViewHolder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

    iget-object v1, v1, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v1, v2}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/animateChangeImpl;

    const-string v2, "digestSlider"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2627
    iget v1, v1, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    .line 3053
    iget-object p1, p1, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getOldListSize;

    .line 4024
    iget-object p1, p1, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->resume()V

    .line 60
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

    iget-object p1, p1, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {p1, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/animateChangeImpl;

    invoke-virtual {p1}, Lo/animateChangeImpl;->onMessageChannelReady()V

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

    iget-object p1, p1, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-static {p1}, Lo/animateAdd;->onRelationshipValidationResult(Lo/animateAdd;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

    iget-object v5, v5, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-static {v5}, Lo/animateAdd;->asBinder(Lo/animateAdd;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Lo/animateAdd;->onNavigationEvent(Lo/animateAdd;J)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

    iget-object p1, p1, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-static {p1}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object p1

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

    iget-object v3, v3, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-static {v3}, Lo/animateAdd;->onRelationshipValidationResult(Lo/animateAdd;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "time_spent"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 55
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "$this$plus"

    .line 55
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "map"

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1659
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    .line 55
    invoke-static {v1}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "digest_screen_close"

    invoke-static {v1, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$getInterfaceDescriptor;

    iget-object p1, p1, Lo/animateAdd$getInterfaceDescriptor;->extraCallback:Lo/animateAdd;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    .line 27
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$storySheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
