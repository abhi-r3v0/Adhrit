.class public final Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/unregisterForContextMenu$asBinder;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
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

.field private synthetic onMessageChannelReady:Lo/StaggeredGridLayoutManager;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/StaggeredGridLayoutManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    instance-of p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0xa969dbc

    const-string/jumbo v3, "toggle_checked"

    if-eq v1, v2, :cond_1

    const v2, 0x39e36fc3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "toggle_unchecked"

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2039
    iput-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->asInterface:Ljava/lang/Boolean;

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1039
    iput-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->asInterface:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    const/4 p1, 0x3

    new-array v1, p1, [Lo/addWrite;

    const/4 v2, 0x0

    .line 60
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast v4, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;

    .line 3022
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    .line 3043
    new-instance v5, Lo/addWrite;

    const-string v6, "instrument_id"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    .line 60
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;

    .line 4027
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->onNavigationEvent:Ljava/lang/String;

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v5, "brand"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v0

    const/4 v2, 0x2

    .line 60
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-static {v4, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 5043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "toggled_value"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 60
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "ad_setup_success_toggle_click"

    .line 60
    invoke-static {p1, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
