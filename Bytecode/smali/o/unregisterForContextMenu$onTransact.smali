.class final Lo/unregisterForContextMenu$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/unregisterForContextMenu;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/unregisterForContextMenu;


# direct methods
.method constructor <init>(Lo/unregisterForContextMenu;)V
    .locals 0

    iput-object p1, p0, Lo/unregisterForContextMenu$onTransact;->extraCallback:Lo/unregisterForContextMenu;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 43
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    iget-object p1, p0, Lo/unregisterForContextMenu$onTransact;->extraCallback:Lo/unregisterForContextMenu;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaButton1:I

    invoke-virtual {p1, v0}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1196
    iget-object p1, p0, Lo/unregisterForContextMenu$onTransact;->extraCallback:Lo/unregisterForContextMenu;

    invoke-static {p1}, Lo/unregisterForContextMenu;->onMessageChannelReady(Lo/unregisterForContextMenu;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 1237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1239
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2000
    iget-object v2, p1, Lo/getSharedElementEnterTransition;->extraCommand:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    if-eqz v2, :cond_2

    .line 2016
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 1240
    check-cast v2, Ljava/lang/Iterable;

    .line 1297
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;

    .line 2039
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->asInterface:Ljava/lang/Boolean;

    .line 1241
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1242
    new-instance v4, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupRequestBody$RegistrationDetail;

    .line 3022
    iget-object v5, v3, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    .line 1242
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v4, v5, v6}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupRequestBody$RegistrationDetail;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_0
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    .line 4022
    iget-object v5, v3, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1244
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4039
    :cond_1
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/autodebit/PayoutInstrument;->asInterface:Ljava/lang/Boolean;

    .line 1244
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1246
    :cond_2
    check-cast v1, Ljava/util/Map;

    const-string v2, "ad_setup_success_complete_click"

    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1248
    new-instance v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupRequestBody;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupRequestBody;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1250
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 5015
    iput-object v0, v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupRequestBody;->onMessageChannelReady:Ljava/util/List;

    .line 6000
    iget-object v0, p1, Lo/getSharedElementEnterTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setReenterTransition;

    .line 1251
    invoke-interface {v0, v1}, Lo/setReenterTransition;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupRequestBody;)Lo/clearScrap;

    move-result-object v0

    .line 1252
    new-instance v1, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v1, p1}, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/getSharedElementEnterTransition;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 43
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
