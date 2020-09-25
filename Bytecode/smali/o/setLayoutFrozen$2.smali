.class final Lo/setLayoutFrozen$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutFrozen;-><init>(Lo/releaseGlows;Lo/pullGlows;Lo/hasGapsToFix$onMessageChannelReady;)V
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
.field final synthetic onNavigationEvent:Lo/setLayoutFrozen;


# direct methods
.method constructor <init>(Lo/setLayoutFrozen;)V
    .locals 0

    iput-object p1, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 29
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    iget-object p1, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 2029
    iget-object p1, p1, Lo/setLayoutFrozen;->getInterfaceDescriptor:Lo/recycleFromEnd;

    .line 2251
    iget-object p1, p1, Lo/recycleFromEnd;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    .line 1072
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    const-string v1, "map"

    const-string v2, "$this$plus"

    const-string v3, "pairs"

    const-string v4, "form_status"

    const-string/jumbo v5, "reward_post_slider_cta_click"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p1, v0, :cond_1

    .line 1073
    iget-object p1, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 3029
    iget-object p1, p1, Lo/setLayoutFrozen;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;

    if-eqz p1, :cond_0

    .line 1074
    iget-object v0, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 4029
    iget-object v0, v0, Lo/setLayoutFrozen;->warmup:Lo/pullGlows;

    .line 4151
    iget-object v8, p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;->ICustomTabsCallback:Ljava/lang/String;

    .line 4152
    iget-object v9, p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 4153
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;->extraCallback:Ljava/lang/Double;

    .line 1074
    new-instance v10, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;

    iget-object v11, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 5029
    iget-object v11, v11, Lo/setLayoutFrozen;->warmup:Lo/pullGlows;

    .line 5052
    iget-object v11, v11, Lo/pullGlows;->extraCallback:Lo/consumePendingUpdateOperations;

    const/4 v12, 0x0

    const/4 v13, 0x3

    .line 1074
    invoke-static {v11, v12, v13}, Lo/consumePendingUpdateOperations;->extraCallback(Lo/consumePendingUpdateOperations;Ljava/util/Map;I)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v8, v9, p1, v10}, Lo/pullGlows;->ICustomTabsCallback(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;)V

    .line 1076
    :cond_0
    iget-object p1, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 6029
    iget-object p1, p1, Lo/setLayoutFrozen;->ICustomTabsCallback$Stub$Proxy:Lo/releaseGlows;

    .line 1076
    invoke-virtual {p1}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    new-array v0, v6, [Lo/addWrite;

    .line 6043
    new-instance v8, Lo/addWrite;

    const-string v9, "complete"

    invoke-direct {v8, v4, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v0, v7

    .line 1076
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1076
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6659
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v0, Ljava/util/Map;

    .line 1076
    invoke-static {v0}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v5, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_3

    .line 1077
    :cond_1
    iget-object p1, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 7029
    iget-object p1, p1, Lo/setLayoutFrozen;->getInterfaceDescriptor:Lo/recycleFromEnd;

    .line 7251
    iget-object p1, p1, Lo/recycleFromEnd;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    .line 1077
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    if-ne p1, v0, :cond_6

    .line 1078
    iget-object p1, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 9000
    iget-object p1, p1, Lo/setLayoutFrozen;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/repositionToWrapContentIfNecessary;

    .line 10000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 10151
    iget-object p1, p1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 1146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1147
    check-cast v8, Lo/StaggeredGridLayoutManager;

    .line 1079
    instance-of v10, v8, Lo/smoothScrollBy;

    if-eqz v10, :cond_2

    check-cast v8, Lo/smoothScrollBy;

    .line 11019
    iget-boolean v10, v8, Lo/smoothScrollBy;->onNavigationEvent:Z

    if-eqz v10, :cond_2

    .line 12017
    iget-object v8, v8, Lo/smoothScrollBy;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    :goto_2
    if-eq v0, v9, :cond_5

    .line 1082
    iget-object p1, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 12029
    iget-object p1, p1, Lo/setLayoutFrozen;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 1082
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1083
    iget-object p1, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 13029
    iget-object p1, p1, Lo/setLayoutFrozen;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo v8, "sectionRecyclerView"

    .line 1083
    invoke-static {p1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v8, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 14029
    iget-object v8, v8, Lo/setLayoutFrozen;->ICustomTabsCallback$Stub$Proxy:Lo/releaseGlows;

    .line 1083
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v8

    const-string v9, "fragment.lifecycle"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0xc8

    new-instance v11, Lo/setLayoutFrozen$2$3;

    invoke-direct {v11, p0, v0}, Lo/setLayoutFrozen$2$3;-><init>(Lo/setLayoutFrozen$2;I)V

    check-cast v11, Lo/getServerTime;

    invoke-static {p1, v8, v9, v10, v11}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 1097
    :cond_5
    iget-object p1, p0, Lo/setLayoutFrozen$2;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 15029
    iget-object p1, p1, Lo/setLayoutFrozen;->ICustomTabsCallback$Stub$Proxy:Lo/releaseGlows;

    .line 1097
    invoke-virtual {p1}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    new-array v0, v6, [Lo/addWrite;

    .line 15043
    new-instance v8, Lo/addWrite;

    const-string v9, "incomplete"

    invoke-direct {v8, v4, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v0, v7

    .line 1097
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1097
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15659
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v0, Ljava/util/Map;

    .line 1097
    invoke-static {v0}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v5, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 29
    :cond_6
    :goto_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
