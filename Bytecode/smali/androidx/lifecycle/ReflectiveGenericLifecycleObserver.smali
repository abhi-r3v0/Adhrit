.class public Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private final extraCallback:Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->ICustomTabsCallback:Ljava/lang/Object;

    .line 32
    sget-object p1, Lo/MediaControllerCompat$TransportControlsBase;->ICustomTabsCallback:Lo/MediaControllerCompat$TransportControlsBase;

    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/MediaControllerCompat$TransportControlsBase;->onPostMessage(Ljava/lang/Class;)Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->extraCallback:Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 3

    .line 37
    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->extraCallback:Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;

    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1185
    iget-object v2, v0, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1, p2, v1}, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;->onMessageChannelReady(Ljava/util/List;Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;Ljava/lang/Object;)V

    .line 1186
    iget-object v0, v0, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;->ICustomTabsCallback:Ljava/util/Map;

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_ANY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;->onMessageChannelReady(Ljava/util/List;Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;Ljava/lang/Object;)V

    return-void
.end method
