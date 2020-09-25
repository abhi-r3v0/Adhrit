.class final Lo/onRequestFocusInDescendants$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onRequestFocusInDescendants;-><init>(Landroidx/fragment/app/Fragment;Lo/pullGlows;)V
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
.field private synthetic onMessageChannelReady:Lo/onRequestFocusInDescendants;


# direct methods
.method constructor <init>(Lo/onRequestFocusInDescendants;)V
    .locals 0

    iput-object p1, p0, Lo/onRequestFocusInDescendants$1;->onMessageChannelReady:Lo/onRequestFocusInDescendants;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 31
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/View;

    const-string v1, "it"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1092
    iget-object v2, v0, Lo/onRequestFocusInDescendants$1;->onMessageChannelReady:Lo/onRequestFocusInDescendants;

    .line 2178
    iget-object v3, v2, Lo/onRequestFocusInDescendants;->mayLaunchUrl:Lo/setActive;

    .line 2320
    iget-object v3, v3, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2178
    :goto_0
    move-object v9, v3

    check-cast v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-eqz v9, :cond_e

    const/4 v3, 0x4

    new-array v4, v3, [Lo/addWrite;

    .line 3040
    iget-wide v6, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onMessageChannelReady:D

    .line 2179
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 3043
    new-instance v7, Lo/addWrite;

    const-string v8, "amount_to_pay"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v7, v4, v6

    .line 4042
    iget-wide v7, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    .line 2180
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 4043
    new-instance v8, Lo/addWrite;

    const-string v10, "Coins_discount"

    invoke-direct {v8, v10, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v8, v4, v7

    .line 2181
    iget-object v8, v2, Lo/onRequestFocusInDescendants;->ICustomTabsService$Stub:Ljava/lang/Double;

    .line 5043
    new-instance v10, Lo/addWrite;

    const-string/jumbo v11, "total_cost"

    invoke-direct {v10, v11, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x2

    aput-object v10, v4, v8

    const/4 v10, 0x3

    .line 2182
    invoke-static {v9, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5204
    iget-object v1, v2, Lo/onRequestFocusInDescendants;->cancel:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-nez v1, :cond_1

    iget-object v1, v2, Lo/onRequestFocusInDescendants;->extraCommand:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-nez v1, :cond_1

    const-string v11, "minSliderSlab"

    invoke-static {v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6034
    :cond_1
    iget-wide v11, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    .line 7034
    iget-wide v13, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_2

    const-string v1, "low"

    move-object v5, v1

    goto :goto_1

    .line 8034
    :cond_2
    iget-wide v11, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    .line 9034
    iget-wide v5, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    sub-long/2addr v11, v5

    cmp-long v5, v11, v13

    if-gez v5, :cond_3

    const-string v5, "high"

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "same"

    .line 9043
    :goto_1
    new-instance v6, Lo/addWrite;

    const-string/jumbo v11, "user_selection"

    invoke-direct {v6, v11, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v10

    const-string v5, "pairs"

    .line 2179
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9088
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 2183
    iget-object v4, v2, Lo/onRequestFocusInDescendants;->getInterfaceDescriptor:Ljava/util/Map;

    const-string v6, "map"

    const-string v10, "$this$plus"

    if-eqz v4, :cond_4

    invoke-static {v4, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9659
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v11, v5}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v11, Ljava/util/Map;

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 2183
    :goto_2
    invoke-static {v11}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v11, "reward_payment_screen_proceed_click"

    invoke-static {v11, v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 2185
    iget-object v4, v2, Lo/onRequestFocusInDescendants;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    const-string v11, "currencyType"

    if-nez v4, :cond_5

    invoke-static {v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10042
    :cond_5
    iget-wide v12, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    .line 2185
    invoke-static {v4, v12, v13}, Lo/onRequestFocusInDescendants;->extraCallback(Ljava/lang/String;D)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2186
    iget-object v3, v2, Lo/onRequestFocusInDescendants;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    if-nez v3, :cond_6

    invoke-static {v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 11042
    :cond_6
    iget-wide v12, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    const-string v4, "CRED_POINTS"

    .line 11341
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 11342
    sget-object v3, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v3}, Lo/onPanelClosed;->onPostMessage()J

    move-result-wide v14

    goto :goto_3

    .line 11343
    :cond_7
    sget-object v3, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v3}, Lo/onPanelClosed;->ICustomTabsCallback()J

    move-result-wide v14

    :goto_3
    long-to-double v14, v14

    sub-double/2addr v12, v14

    double-to-int v3, v12

    .line 2187
    iget-object v12, v2, Lo/onRequestFocusInDescendants;->newSession:Lo/onActivityResult;

    iget-object v13, v2, Lo/onRequestFocusInDescendants;->INotificationSideChannel$Stub$Proxy:Landroidx/fragment/app/Fragment;

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "fragment.requireContext()"

    invoke-static {v13, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2188
    sget-object v14, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    iget-object v14, v2, Lo/onRequestFocusInDescendants;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    if-nez v14, :cond_8

    invoke-static {v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    invoke-static {v14, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const v4, 0x7f13028d

    goto :goto_4

    :cond_9
    const v4, 0x7f13028f

    :goto_4
    new-array v8, v8, [Ljava/lang/Object;

    .line 2189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/Number;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfe

    invoke-static/range {v14 .. v21}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v1, 0x0

    aput-object v3, v8, v1

    .line 12040
    iget-wide v14, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onMessageChannelReady:D

    .line 2190
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/Number;

    const/4 v15, 0x0

    invoke-static/range {v14 .. v21}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v8, v7

    .line 2188
    invoke-static {v4, v8}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context"

    .line 13031
    invoke-static {v13, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "text"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13032
    sget v4, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    const/4 v1, 0x0

    invoke-virtual {v12, v13, v3, v1, v4}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 2191
    iget-object v1, v2, Lo/onRequestFocusInDescendants;->getInterfaceDescriptor:Ljava/util/Map;

    if-eqz v1, :cond_a

    invoke-static {v1, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13659
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v5}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    .line 2191
    :goto_5
    invoke-static {v5}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "reward_payment_screen_proceed_failure"

    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_7

    .line 2194
    :cond_b
    iget-object v4, v2, Lo/onRequestFocusInDescendants;->ICustomTabsCallback$Stub:Lo/recycleFromEnd;

    sget-object v5, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v4, v5}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 2195
    iget-object v8, v2, Lo/onRequestFocusInDescendants;->IPostMessageService:Ljava/lang/String;

    if-eqz v8, :cond_e

    .line 2196
    iget-object v7, v2, Lo/onRequestFocusInDescendants;->setDefaultImpl:Lo/pullGlows;

    iget-object v10, v2, Lo/onRequestFocusInDescendants;->ICustomTabsService$Stub:Ljava/lang/Double;

    iget-object v2, v2, Lo/onRequestFocusInDescendants;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    if-nez v2, :cond_c

    invoke-static {v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_c
    const-string/jumbo v4, "rewardUsageId"

    invoke-static {v8, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "selectedSlabId"

    invoke-static {v9, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "currency"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15000
    iget-object v4, v7, Lo/pullGlows;->ICustomTabsService$Stub$Proxy:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/computeHorizontalScrollExtent;

    .line 13997
    iget-object v5, v7, Lo/pullGlows;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v5, :cond_d

    .line 16000
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->extraCallback:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    :goto_6
    const-string v6, "post_slider"

    const/4 v1, 0x0

    .line 13997
    invoke-static {v4, v5, v6, v1, v3}, Lo/computeHorizontalScrollExtent$onNavigationEvent;->onNavigationEvent(Lo/computeHorizontalScrollExtent;Ljava/lang/String;Ljava/lang/String;ZI)Lo/clearScrap;

    move-result-object v1

    new-instance v3, Lo/pullGlows$onNavigationEvent;

    move-object v6, v3

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Lo/pullGlows$onNavigationEvent;-><init>(Lo/pullGlows;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;Ljava/lang/Double;Ljava/lang/String;)V

    check-cast v3, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 31
    :cond_e
    :goto_7
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
