.class public final Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;
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
.field private synthetic ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;Lo/StaggeredGridLayoutManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    instance-of p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 56
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1086
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->requestPostMessageChannel:Lcom/dreamplug/fabrik/ui/cm/models/FooterActions;

    if-eqz v3, :cond_0

    .line 1112
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/FooterActions;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Ctas;

    if-eqz v3, :cond_0

    .line 1175
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/Ctas;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    if-eqz v3, :cond_0

    .line 2014
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_0

    .line 3000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3043
    :goto_0
    new-instance v4, Lo/addWrite;

    const-string v5, "cta_title"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 56
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "cm_card_farm_cta_click"

    .line 54
    invoke-virtual {p1, v1, v2}, Lo/startIntentSenderFromFragment;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 4027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 4088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 58
    instance-of p1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 5027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 5088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 59
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 60
    sget-object p1, Lo/markFragmentsCreated;->extraCallback:Lo/markFragmentsCreated$onNavigationEvent;

    .line 66
    new-instance p1, Lo/markFragmentsCreated$onMessageChannelReady;

    .line 67
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 6027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 6088
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 67
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    .line 66
    invoke-direct {p1, v1, v2}, Lo/markFragmentsCreated$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lo/markFragmentsCreated$onNavigationEvent;->extraCallback(Lo/markFragmentsCreated$onMessageChannelReady;)Lo/markFragmentsCreated;

    move-result-object p1

    .line 71
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const-string v2, "MANAGE_CHARGES"

    .line 65
    invoke-virtual {p1, v1, v2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
