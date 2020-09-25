.class public final Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAdd$extraCallback;->extraCallback(Z)V
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

.field private synthetic onMessageChannelReady:Lo/animateAdd$extraCallback;

.field private synthetic onNavigationEvent:Z


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/animateAdd$extraCallback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$extraCallback;

    iput-boolean p4, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->onNavigationEvent:Z

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-boolean p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->onNavigationEvent:Z

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$extraCallback;

    iget-object p1, p1, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->progress:I

    invoke-virtual {p1, v0}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/canReuseUpdatedViewHolder;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$extraCallback;

    iget-object v0, v0, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->asInterface(Lo/animateAdd;)I

    move-result v0

    .line 1053
    iget-object p1, p1, Lo/canReuseUpdatedViewHolder;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getOldListSize;

    .line 2024
    iget-object p1, p1, Lo/getOldListSize;->onMessageChannelReady:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->resume()V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/animateAdd$extraCallback;

    iget-object p1, p1, Lo/animateAdd$extraCallback;->onNavigationEvent:Lo/animateAdd;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {p1, v0}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/animateChangeImpl;

    invoke-virtual {p1}, Lo/animateChangeImpl;->onMessageChannelReady()V

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/digest/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
