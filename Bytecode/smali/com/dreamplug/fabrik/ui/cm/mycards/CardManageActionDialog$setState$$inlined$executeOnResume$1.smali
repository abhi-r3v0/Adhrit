.class public final Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/markFragmentsCreated;->ICustomTabsCallback(Lo/dispatchFragmentsOnCreateView;)V
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

.field private synthetic extraCallback:Lo/markFragmentsCreated;

.field private synthetic onNavigationEvent:Lo/dispatchFragmentsOnCreateView;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/markFragmentsCreated;Lo/dispatchFragmentsOnCreateView;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/markFragmentsCreated;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onNavigationEvent:Lo/dispatchFragmentsOnCreateView;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/markFragmentsCreated;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    const-string v0, "loaderView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 1017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onNavigationEvent:Lo/dispatchFragmentsOnCreateView;

    .line 55
    instance-of v0, p1, Lo/dispatchFragmentsOnCreateView$onPostMessage;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 56
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/markFragmentsCreated;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->actionsList:I

    invoke-virtual {p1, v0}, Lo/WithHint;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "actionsList"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/markFragmentsCreated;

    invoke-static {v0}, Lo/markFragmentsCreated;->onMessageChannelReady(Lo/markFragmentsCreated;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 58
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onNavigationEvent:Lo/dispatchFragmentsOnCreateView;

    check-cast v0, Lo/dispatchFragmentsOnCreateView$onPostMessage;

    .line 1098
    iget-object v0, v0, Lo/dispatchFragmentsOnCreateView$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    .line 58
    check-cast v0, Ljava/lang/Iterable;

    .line 59
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 60
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2027
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2076
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 61
    check-cast v2, Ljava/lang/Iterable;

    .line 62
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 63
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {p1}, Lo/extraCallback;->onNavigationEvent(Ljava/util/List;)Lo/addWrite;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/markFragmentsCreated;

    invoke-static {v0}, Lo/markFragmentsCreated;->onMessageChannelReady(Lo/markFragmentsCreated;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    .line 3027
    iget-object v2, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 70
    check-cast v2, Ljava/util/List;

    const-string/jumbo v3, "value"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v0, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 4028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 71
    check-cast p1, Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/markFragmentsCreated;

    invoke-static {v0}, Lo/markFragmentsCreated;->ICustomTabsCallback(Lo/markFragmentsCreated;)Lo/getDimensionPixelOffset;

    const/4 v0, 0x3

    new-array v2, v0, [Lo/addWrite;

    const/4 v3, 0x0

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "templates_list"

    invoke-direct {v4, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 72
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/markFragmentsCreated;

    invoke-static {p1}, Lo/markFragmentsCreated;->extraCallback(Lo/markFragmentsCreated;)Lo/markFragmentsCreated$onMessageChannelReady;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 4149
    iget-object p1, p1, Lo/markFragmentsCreated$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p1, v3

    .line 5043
    :goto_1
    new-instance v4, Lo/addWrite;

    const-string v5, "instrument_id"

    invoke-direct {v4, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v1

    const/4 p1, 0x2

    .line 72
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/markFragmentsCreated;

    invoke-static {v4}, Lo/markFragmentsCreated;->extraCallback(Lo/markFragmentsCreated;)Lo/markFragmentsCreated$onMessageChannelReady;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 5149
    iget-object v4, v4, Lo/markFragmentsCreated$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v3

    .line 6043
    :goto_2
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "source"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, p1

    const-string p1, "pairs"

    .line 72
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const/16 v0, 0xc

    const-string v2, "cm_card_manage_screen_load"

    .line 72
    invoke-static {v2, p1, v3, v0}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/cm/models/Template;I)V

    goto :goto_3

    .line 74
    :cond_4
    instance-of p1, p1, Lo/dispatchFragmentsOnCreateView$onMessageChannelReady;

    if-eqz p1, :cond_5

    .line 75
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/markFragmentsCreated;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 27
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/CardManageActionDialog$setState$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
