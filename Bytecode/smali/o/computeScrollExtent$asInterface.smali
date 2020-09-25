.class final Lo/computeScrollExtent$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollExtent;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onMessageChannelReady:Lo/computeScrollExtent;


# direct methods
.method constructor <init>(Lo/computeScrollExtent;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$asInterface;->onMessageChannelReady:Lo/computeScrollExtent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 65
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    iget-object p1, p0, Lo/computeScrollExtent$asInterface;->onMessageChannelReady:Lo/computeScrollExtent;

    .line 2069
    iget-object p1, p1, Lo/computeScrollExtent;->onMessageChannelReady:Lo/onQueryRefine$onPostMessage;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3007
    iget-object p1, p1, Lo/onQueryRefine$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    if-eqz p1, :cond_1

    .line 3016
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->asInterface:Ljava/util/List;

    if-eqz p1, :cond_1

    const-string v2, "$this$getOrNull"

    .line 1304
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$lastIndex"

    .line 3266
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 3266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1304
    :goto_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    if-eqz p1, :cond_1

    .line 5076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 5090
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->extraCallback:Ljava/lang/String;

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 1306
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "certificate"

    .line 1319
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1322
    iget-object v0, p0, Lo/computeScrollExtent$asInterface;->onMessageChannelReady:Lo/computeScrollExtent;

    .line 9000
    iget-object v0, v0, Lo/computeScrollExtent;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const-string/jumbo v1, "rewardId"

    .line 1322
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9351
    new-instance v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-direct {v1, p1}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;-><init>(Ljava/lang/String;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v0, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto :goto_2

    :sswitch_1
    const-string v0, "deeplink"

    .line 1313
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1316
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {v0, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_2
    const-string v0, "game"

    .line 1325
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1328
    iget-object v0, p0, Lo/computeScrollExtent$asInterface;->onMessageChannelReady:Lo/computeScrollExtent;

    .line 11000
    iget-object v0, v0, Lo/computeScrollExtent;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    if-eqz v0, :cond_3

    .line 11281
    new-instance v1, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;

    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;

    invoke-direct {v2, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lo/onGetChildDrawingOrder$INotificationSideChannel$Stub$Proxy;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$extraCallback;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v0, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto :goto_2

    :sswitch_3
    const-string/jumbo v3, "web"

    .line 1307
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1310
    iget-object v2, p0, Lo/computeScrollExtent$asInterface;->onMessageChannelReady:Lo/computeScrollExtent;

    .line 7000
    iget-object v2, v2, Lo/computeScrollExtent;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    const/4 v3, 0x6

    .line 1310
    invoke-static {v2, p1, v0, v1, v3}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;ZLjava/lang/Boolean;I)V

    .line 65
    :cond_3
    :goto_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1cb54 -> :sswitch_3
        0x304bf2 -> :sswitch_2
        0x258156e6 -> :sswitch_1
        0x745f4197 -> :sswitch_0
    .end sparse-switch
.end method
