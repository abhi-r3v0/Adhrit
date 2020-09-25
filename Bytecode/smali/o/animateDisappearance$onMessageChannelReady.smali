.class final Lo/animateDisappearance$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateDisappearance;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;Landroidx/lifecycle/LiveData;Lo/setActive;Lo/setActive;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinGridViewHolder$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/animateDisappearance$extraCallback;

.field private synthetic extraCallback:I

.field private synthetic onPostMessage:Lo/animateDisappearance;


# direct methods
.method constructor <init>(ILo/animateDisappearance$extraCallback;Lo/animateDisappearance;)V
    .locals 0

    iput p1, p0, Lo/animateDisappearance$onMessageChannelReady;->extraCallback:I

    iput-object p2, p0, Lo/animateDisappearance$onMessageChannelReady;->ICustomTabsCallback:Lo/animateDisappearance$extraCallback;

    iput-object p3, p0, Lo/animateDisappearance$onMessageChannelReady;->onPostMessage:Lo/animateDisappearance;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 49
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    iget-object p1, p0, Lo/animateDisappearance$onMessageChannelReady;->onPostMessage:Lo/animateDisappearance;

    .line 2037
    iget-object p1, p1, Lo/didChildRangeChange;->onPostMessage:Lo/clearOldPositions;

    if-nez p1, :cond_0

    const-string v0, "itemData"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3008
    :cond_0
    iget-object p1, p1, Lo/clearOldPositions;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 3024
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 1061
    iget v0, p0, Lo/animateDisappearance$onMessageChannelReady;->extraCallback:I

    const-string v1, "$this$getOrNull"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    const-string v2, "$this$lastIndex"

    .line 3266
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_1

    .line 3266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1061
    :goto_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    if-eqz p1, :cond_6

    .line 1062
    iget-object v0, p0, Lo/animateDisappearance$onMessageChannelReady;->onPostMessage:Lo/animateDisappearance;

    invoke-virtual {v0, p1}, Lo/didChildRangeChange;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo/animateDisappearance$onMessageChannelReady;->ICustomTabsCallback:Lo/animateDisappearance$extraCallback;

    const/4 v2, 0x6

    new-array v3, v2, [Lo/addWrite;

    .line 4301
    iget-object v4, v0, Lo/animateDisappearance$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 5043
    new-instance v5, Lo/addWrite;

    const-string v6, "aspect_ratio"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v5, v3, v4

    .line 4302
    iget-object v5, v0, Lo/animateDisappearance$extraCallback;->asBinder:Landroid/widget/TextView;

    const-string/jumbo v6, "stackCount"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    .line 4345
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 6043
    new-instance v6, Lo/addWrite;

    const-string v7, "is_stack_shown"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v1

    .line 4303
    iget-object v5, v0, Lo/animateDisappearance$extraCallback;->asInterface:Landroid/widget/TextView;

    const-string/jumbo v6, "timer"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    .line 4346
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 7043
    new-instance v7, Lo/addWrite;

    const-string v8, "is_timer_shown"

    invoke-direct {v7, v8, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    .line 4304
    iget-object v5, v0, Lo/animateDisappearance$extraCallback;->ICustomTabsService:Landroid/widget/TextView;

    const-string v6, "onlinePlayers"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    .line 4347
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 8043
    new-instance v7, Lo/addWrite;

    const-string v8, "is_player_count_shown"

    invoke-direct {v7, v8, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    .line 4305
    iget-object v0, v0, Lo/animateDisappearance$extraCallback;->onRelationshipValidationResult:Landroid/widget/ImageView;

    const-string v5, "lock"

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 4348
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 9043
    new-instance v4, Lo/addWrite;

    const-string v5, "is_locked"

    invoke-direct {v4, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v0

    const/4 v0, 0x5

    .line 4306
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10043
    new-instance v4, Lo/addWrite;

    const-string v5, "is_grid"

    invoke-direct {v4, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v0

    const-string v0, "pairs"

    .line 4300
    invoke-static {v3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "$this$plus"

    .line 1062
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "map"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10659
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    .line 1062
    invoke-static {v1}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "win_farm_card_click"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1064
    :cond_6
    iget-object p1, p0, Lo/animateDisappearance$onMessageChannelReady;->onPostMessage:Lo/animateDisappearance;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "grid_item"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/animateDisappearance$onMessageChannelReady;->extraCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    .line 49
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
