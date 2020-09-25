.class final Lo/getTotalSpace$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTotalSpace;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic ICustomTabsCallback:Lo/findTargetSnapPosition;

.field private synthetic extraCallback:Lo/getTotalSpace;


# direct methods
.method constructor <init>(Lo/getTotalSpace;Lo/findTargetSnapPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getTotalSpace$extraCallback;->extraCallback:Lo/getTotalSpace;

    iput-object p2, p0, Lo/getTotalSpace$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 34
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    iget-object p1, p0, Lo/getTotalSpace$extraCallback;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    invoke-virtual {p1}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object p1

    .line 1077
    iget-object v0, p0, Lo/getTotalSpace$extraCallback;->extraCallback:Lo/getTotalSpace;

    invoke-static {v0}, Lo/getTotalSpace;->extraCallback(Lo/getTotalSpace;)Lo/getStartAfterPadding;

    move-result-object v0

    .line 1087
    iget-object v0, v0, Lo/getStartAfterPadding;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;

    .line 2048
    iget v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->onPostMessage:I

    .line 1077
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "coin_value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    iget-object v0, p0, Lo/getTotalSpace$extraCallback;->extraCallback:Lo/getTotalSpace;

    invoke-static {v0}, Lo/getTotalSpace;->extraCallback(Lo/getTotalSpace;)Lo/getStartAfterPadding;

    move-result-object v0

    .line 2087
    iget-object v0, v0, Lo/getStartAfterPadding;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;

    .line 3046
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "currency"

    .line 1078
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "type"

    const-string v1, "renew"

    .line 1079
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_sheet_cta_clicked"

    .line 1076
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1081
    iget-object p1, p0, Lo/getTotalSpace$extraCallback;->extraCallback:Lo/getTotalSpace;

    invoke-virtual {p1}, Lo/findLastVisibleItemPositions;->onTransact()V

    .line 1082
    iget-object p1, p0, Lo/getTotalSpace$extraCallback;->extraCallback:Lo/getTotalSpace;

    new-instance v0, Lo/getTotalSpace$extraCallback$2;

    invoke-direct {v0, p0}, Lo/getTotalSpace$extraCallback$2;-><init>(Lo/getTotalSpace$extraCallback;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3162
    iput-object v0, p1, Lo/findLastVisibleItemPositions;->asInterface:Lo/getServerTime;

    .line 34
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
