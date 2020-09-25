.class public final Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;
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
.field private synthetic extraCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic onMessageChannelReady:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->onMessageChannelReady:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->extraCallback:Lo/StaggeredGridLayoutManager;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 53
    instance-of p1, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 2027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 55
    sget-object v0, Lo/onReset;->onPostMessage:Lo/onReset$onRelationshipValidationResult;

    .line 61
    new-instance v0, Lo/onReset$extraCallback;

    .line 62
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 3027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 3088
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 62
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getSwipedDirection()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 61
    invoke-direct {v0, p1, v2, v1, v3}, Lo/onReset$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    invoke-static {v0}, Lo/onReset$onRelationshipValidationResult;->extraCallback(Lo/onReset$extraCallback;)Lo/onReset;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->onMessageChannelReady:Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub;->onPostMessage:Lo/startIntentSenderFromFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "AddCardDialogTag"

    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/mycards/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$7;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
