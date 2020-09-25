.class public final Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/startIntentSenderFromFragment$ICustomTabsService;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release",
        "com/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$3$1$onScrollStateChanged$$inlined$executeOnResume$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:I

.field private synthetic onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/startIntentSenderFromFragment$ICustomTabsService;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/startIntentSenderFromFragment$ICustomTabsService;I)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent:Lo/startIntentSenderFromFragment$ICustomTabsService;

    iput p4, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:I

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

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
    .locals 8

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:I

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent:Lo/startIntentSenderFromFragment$ICustomTabsService;

    iget-object p1, p1, Lo/startIntentSenderFromFragment$ICustomTabsService;->ICustomTabsCallback:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 55
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent:Lo/startIntentSenderFromFragment$ICustomTabsService;

    iget-object v1, v1, Lo/startIntentSenderFromFragment$ICustomTabsService;->onPostMessage:Lo/startIntentSenderFromFragment;

    const/4 v2, 0x2

    new-array v3, v2, [Lo/addWrite;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1043
    new-instance v6, Lo/addWrite;

    const-string v7, "card_position"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v4

    .line 59
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent:Lo/startIntentSenderFromFragment$ICustomTabsService;

    iget-object v4, v4, Lo/startIntentSenderFromFragment$ICustomTabsService;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-static {v4}, Lo/startIntentSenderFromFragment;->ICustomTabsCallback(Lo/startIntentSenderFromFragment;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v4

    .line 3000
    iget-object v4, v4, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/checkSpanForGap;

    .line 3151
    iget-object v4, v4, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    const-string v5, "$this$getOrNull"

    .line 59
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-ltz p1, :cond_0

    const-string v6, "$this$lastIndex"

    .line 3266
    invoke-static {v4, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4210
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v0

    if-gt p1, v6, :cond_0

    .line 3266
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v5

    .line 59
    :goto_0
    instance-of v4, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-nez v4, :cond_1

    move-object p1, v5

    :cond_1
    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz p1, :cond_2

    .line 5023
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onPostMessage:Ljava/lang/String;

    .line 5043
    :cond_2
    new-instance p1, Lo/addWrite;

    const-string/jumbo v4, "template_name"

    invoke-direct {p1, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p1, v3, v0

    const-string p1, "pairs"

    .line 57
    invoke-static {v3, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "cm_card_farm_scrolled_template"

    .line 55
    invoke-virtual {v1, v2, p1}, Lo/startIntentSenderFromFragment;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent:Lo/startIntentSenderFromFragment$ICustomTabsService;

    iget-object p1, p1, Lo/startIntentSenderFromFragment$ICustomTabsService;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 63
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent:Lo/startIntentSenderFromFragment$ICustomTabsService;

    iget-object p1, p1, Lo/startIntentSenderFromFragment$ICustomTabsService;->onPostMessage:Lo/startIntentSenderFromFragment;

    const-string v1, "cm_card_farm_scrolled_to_last"

    invoke-static {p1, v1}, Lo/startIntentSenderFromFragment;->onPostMessage(Lo/startIntentSenderFromFragment;Ljava/lang/String;)V

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
