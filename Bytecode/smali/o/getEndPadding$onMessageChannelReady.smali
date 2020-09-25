.class final Lo/getEndPadding$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getEndPadding;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic ICustomTabsCallback:Lo/findTargetSnapPosition;

.field private synthetic onNavigationEvent:Lo/getEndPadding;


# direct methods
.method constructor <init>(Lo/getEndPadding;Lo/findTargetSnapPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getEndPadding$onMessageChannelReady;->onNavigationEvent:Lo/getEndPadding;

    iput-object p2, p0, Lo/getEndPadding$onMessageChannelReady;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 23
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    iget-object p1, p0, Lo/getEndPadding$onMessageChannelReady;->ICustomTabsCallback:Lo/findTargetSnapPosition;

    invoke-virtual {p1}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "winner"

    .line 1046
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_sheet_cta_clicked"

    .line 1045
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1048
    iget-object p1, p0, Lo/getEndPadding$onMessageChannelReady;->onNavigationEvent:Lo/getEndPadding;

    invoke-static {p1}, Lo/getEndPadding;->onPostMessage(Lo/getEndPadding;)Lo/findSnapView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1092
    iget-object p1, p1, Lo/findSnapView;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;

    if-eqz p1, :cond_0

    .line 2077
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz p1, :cond_0

    .line 2087
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    .line 1048
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x258156e6

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "deeplink"

    .line 1049
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1050
    iget-object p1, p0, Lo/getEndPadding$onMessageChannelReady;->onNavigationEvent:Lo/getEndPadding;

    invoke-static {p1}, Lo/getEndPadding;->onNavigationEvent(Lo/getEndPadding;)Lo/getMoveDuration;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-static {p1, v0, v2, v1, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1051
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    iget-object v1, p0, Lo/getEndPadding$onMessageChannelReady;->onNavigationEvent:Lo/getEndPadding;

    invoke-static {v1}, Lo/getEndPadding;->onPostMessage(Lo/getEndPadding;)Lo/findSnapView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2092
    iget-object v1, v1, Lo/findSnapView;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;

    if-eqz v1, :cond_3

    .line 3077
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameOverSheetBlock;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz v1, :cond_3

    .line 3088
    iget-object v0, v1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onMessageChannelReady:Ljava/lang/String;

    .line 1051
    :cond_3
    invoke-virtual {p1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_2

    .line 1054
    :cond_4
    :goto_1
    iget-object p1, p0, Lo/getEndPadding$onMessageChannelReady;->onNavigationEvent:Lo/getEndPadding;

    invoke-static {p1}, Lo/getEndPadding;->onNavigationEvent(Lo/getEndPadding;)Lo/getMoveDuration;

    move-result-object p1

    const/4 v2, 0x7

    invoke-static {p1, v0, v1, v1, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 23
    :goto_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
