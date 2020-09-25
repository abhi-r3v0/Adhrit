.class public final Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
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
.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onMessageChannelReady:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onNavigationEvent:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onMessageChannelReady:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onNavigationEvent:Ljava/lang/String;

    .line 1043
    new-instance v3, Lo/addWrite;

    const-string v4, "cta_title"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v2, "pairs"

    .line 53
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "cm_card_farm_cta_click"

    .line 53
    invoke-virtual {p1, v1, v2}, Lo/startIntentSenderFromFragment;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    sget-object p1, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    .line 56
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onMessageChannelReady:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 57
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onMessageChannelReady:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

    iget-object v2, v2, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v3, Lo/detachViewInternal;

    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v3, v4}, Lo/detachViewInternal;-><init>(Ljava/lang/String;)V

    const-string v4, "control header"

    .line 55
    invoke-static {p1, v1, v2, v3, v4}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Lo/setItemPrefetchEnabled;Landroidx/fragment/app/Fragment;Lo/requestExtraBinder;Lo/detachViewInternal;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
