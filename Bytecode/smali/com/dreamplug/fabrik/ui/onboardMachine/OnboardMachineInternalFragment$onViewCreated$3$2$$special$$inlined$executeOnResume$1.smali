.class public final Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onInterceptFocusSearch$onMessageChannelReady$1;
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
.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady$1;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onInterceptFocusSearch$onMessageChannelReady$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady$1;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady$1;

    iget-object p1, p1, Lo/onInterceptFocusSearch$onMessageChannelReady$1;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "GEMS"

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    new-array v1, p1, [Lo/addWrite;

    const/4 v2, 0x0

    .line 54
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady$1;

    iget-object v3, v3, Lo/onInterceptFocusSearch$onMessageChannelReady$1;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady;

    iget-object v3, v3, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    .line 1044
    iget-object v3, v3, Lo/onInterceptFocusSearch;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v3, :cond_0

    .line 54
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 2000
    :cond_0
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/removeItemDecoration;

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "reward_ID"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "source"

    const-string v4, "failure"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const-string v2, "pairs"

    .line 54
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "inadequate_gems_cta_click"

    .line 54
    invoke-static {p1, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady$1;

    iget-object p1, p1, Lo/onInterceptFocusSearch$onMessageChannelReady$1;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady;

    iget-object p1, p1, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    .line 4000
    iget-object p1, p1, Lo/onInterceptFocusSearch;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const-string v1, "inadequate gem"

    .line 55
    invoke-static {p1, v1}, Lo/getMoveDuration;->onRelationshipValidationResult(Lo/getMoveDuration;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady$1;

    iget-object p1, p1, Lo/onInterceptFocusSearch$onMessageChannelReady$1;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady;

    iget-object p1, p1, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady$1;

    iget-object p1, p1, Lo/onInterceptFocusSearch$onMessageChannelReady$1;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady;

    iget-object p1, p1, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    .line 5000
    iget-object p1, p1, Lo/onInterceptFocusSearch;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const-string v1, "mystery"

    .line 58
    invoke-static {p1, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;)V

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
