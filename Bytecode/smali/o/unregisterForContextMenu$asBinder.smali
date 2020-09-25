.class public final Lo/unregisterForContextMenu$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/unregisterForContextMenu;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/unregisterForContextMenu;


# direct methods
.method constructor <init>(Lo/unregisterForContextMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lo/unregisterForContextMenu$asBinder;->onNavigationEvent:Lo/unregisterForContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 10

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object p3, p0, Lo/unregisterForContextMenu$asBinder;->onNavigationEvent:Lo/unregisterForContextMenu;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p3

    const-string v0, "lifecycle"

    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 294
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 295
    invoke-virtual {p3}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    .line 165
    instance-of v3, p2, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;

    if-eqz v3, :cond_4

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v5, 0xa969dbc

    const-string/jumbo v6, "toggle_checked"

    if-eq v3, v5, :cond_2

    const v5, 0x39e36fc3

    if-eq v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "toggle_unchecked"

    .line 168
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3039
    iput-object v5, v3, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->asInterface:Ljava/lang/Boolean;

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2039
    iput-object v5, v3, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->asInterface:Ljava/lang/Boolean;

    :cond_3
    :goto_1
    const/4 v3, 0x3

    new-array v5, v3, [Lo/addWrite;

    .line 170
    check-cast p2, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;

    .line 4022
    iget-object v7, p2, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    .line 4043
    new-instance v8, Lo/addWrite;

    const-string v9, "instrument_id"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v5, v1

    .line 5027
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->onNavigationEvent:Ljava/lang/String;

    .line 5043
    new-instance v1, Lo/addWrite;

    const-string v7, "brand"

    invoke-direct {v1, v7, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v4

    const/4 p2, 0x2

    .line 170
    invoke-static {p1, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 6043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v6, "toggled_value"

    invoke-direct {v1, v6, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, p2

    const-string p1, "pairs"

    .line 170
    invoke-static {v5, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p2, "ad_setup_success_toggle_click"

    .line 170
    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 297
    :cond_4
    iput-boolean v4, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 298
    :cond_5
    invoke-virtual {p3}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_6

    .line 299
    new-instance v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-direct {v1, p3, v0, p2, p1}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmResultDialog$onItemClickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/StaggeredGridLayoutManager;Ljava/lang/String;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 300
    iget-object p1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p3, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 302
    :cond_6
    :goto_2
    new-instance p1, Lo/unregisterForContextMenu$asBinder$ICustomTabsCallback;

    invoke-direct {p1, v2, p3}, Lo/unregisterForContextMenu$asBinder$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
