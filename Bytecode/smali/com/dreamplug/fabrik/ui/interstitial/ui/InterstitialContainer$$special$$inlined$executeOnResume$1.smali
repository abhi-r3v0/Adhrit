.class public final Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getItemOffsets;-><init>(Landroid/view/View;Landroidx/fragment/app/Fragment;Lo/getSnakes;Lo/getRowCountForAccessibility$ICustomTabsCallback;Lo/getMoveDuration;Lo/getServerTime;)V
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

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onNavigationEvent:Lo/getItemOffsets;

.field private synthetic onPostMessage:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getItemOffsets;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getItemOffsets;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onPostMessage:Landroidx/fragment/app/Fragment;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getItemOffsets;

    .line 1027
    iget-object p1, p1, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 54
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 55
    sget-object p1, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getItemOffsets;

    .line 1036
    iget-object v2, v2, Lo/getItemOffsets;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 2021
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 55
    invoke-virtual {p1, v2}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 56
    sget-object p1, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getItemOffsets;

    .line 2029
    iget-object p1, p1, Lo/getItemOffsets;->ICustomTabsCallback:Lo/getRowCountForAccessibility$ICustomTabsCallback;

    .line 2053
    iget-object p1, p1, Lo/getRowCountForAccessibility$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lo/openOptionsMenu;->extraCallback(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getItemOffsets;

    .line 3026
    invoke-virtual {p1}, Lo/getItemOffsets;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string v2, "card_interstitial_load"

    .line 57
    invoke-static {v2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getItemOffsets;

    .line 3027
    iget-object p1, p1, Lo/getItemOffsets;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 58
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 3464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 62
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onPostMessage:Landroidx/fragment/app/Fragment;

    const v3, 0x7f0b01ff

    .line 4234
    invoke-virtual {v2, v3, p1, v0, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/interstitial/ui/InterstitialContainer$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
