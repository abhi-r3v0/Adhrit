.class public final Lo/DefaultItemAnimator$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DefaultItemAnimator;-><init>(Landroidx/fragment/app/Fragment;Lo/onAddFocusables$extraCallback;Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V
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
        "com/dreamplug/fabrik/ui/control/payments/statusV2/PaymentSuccessFabrikDialog$listItemClickListener$1",
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
.field private synthetic onNavigationEvent:Lo/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lo/DefaultItemAnimator$asBinder;->onNavigationEvent:Lo/DefaultItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    instance-of v3, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    const-string v4, "click"

    const-string v5, "land"

    const v6, 0x5a5c588

    const v7, 0x3291eb

    const-string v8, "pairs"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_2

    .line 230
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v3, v7, :cond_1

    if-eq v3, v6, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    iget-object v3, v0, Lo/DefaultItemAnimator$asBinder;->onNavigationEvent:Lo/DefaultItemAnimator;

    .line 6069
    iput-boolean v11, v3, Lo/DefaultItemAnimator;->onPostMessage:Z

    .line 239
    iget-object v3, v0, Lo/DefaultItemAnimator$asBinder;->onNavigationEvent:Lo/DefaultItemAnimator;

    move-object v12, v2

    check-cast v12, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    invoke-static {v3, v12}, Lo/DefaultItemAnimator;->extraCallback(Lo/DefaultItemAnimator;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    iget-object v3, v0, Lo/DefaultItemAnimator$asBinder;->onNavigationEvent:Lo/DefaultItemAnimator;

    const/4 v12, 0x3

    new-array v13, v12, [Lo/addWrite;

    .line 233
    move-object v14, v2

    check-cast v14, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1020
    iget-object v15, v14, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 1138
    iget-object v15, v15, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->onPostMessage:Ljava/lang/String;

    .line 2043
    new-instance v6, Lo/addWrite;

    const-string v7, "category"

    invoke-direct {v6, v7, v15}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v13, v10

    .line 3021
    iget-object v6, v14, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 3043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v15, "template_id"

    invoke-direct {v7, v15, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v13, v11

    .line 4020
    iget-object v6, v14, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 4137
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->ICustomTabsCallback:Ljava/lang/String;

    .line 5043
    new-instance v7, Lo/addWrite;

    const-string v14, "instrument_id"

    invoke-direct {v7, v14, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v13, v9

    .line 232
    invoke-static {v13, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    invoke-static {v6, v13}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v7, "nba_card_land"

    .line 232
    invoke-virtual {v3, v7, v6}, Lo/DefaultItemAnimator;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    :cond_2
    :goto_0
    instance-of v3, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;

    if-eqz v3, :cond_5

    .line 244
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string v6, "id"

    const-string v7, "payment_success"

    const-string v12, "nba_screen"

    const v13, 0x3291eb

    if-eq v3, v13, :cond_4

    const v13, 0x5a5c588

    if-eq v3, v13, :cond_3

    goto :goto_1

    .line 251
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    iget-object v1, v0, Lo/DefaultItemAnimator$asBinder;->onNavigationEvent:Lo/DefaultItemAnimator;

    new-array v3, v9, [Lo/addWrite;

    .line 9043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v12, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v10

    .line 254
    check-cast v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;

    .line 9083
    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->ICustomTabsCallback:Ljava/lang/String;

    .line 10043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v11

    .line 252
    invoke-static {v3, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v4, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v3, "nba_data_list_item_cta"

    .line 252
    invoke-virtual {v1, v3, v4}, Lo/DefaultItemAnimator;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 11088
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->onTransact:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 257
    sget-object v2, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {v2, v1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    .line 258
    iget-object v1, v0, Lo/DefaultItemAnimator$asBinder;->onNavigationEvent:Lo/DefaultItemAnimator;

    invoke-static {v1}, Lo/DefaultItemAnimator;->ICustomTabsService(Lo/DefaultItemAnimator;)V

    return-void

    .line 245
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 246
    iget-object v1, v0, Lo/DefaultItemAnimator$asBinder;->onNavigationEvent:Lo/DefaultItemAnimator;

    new-array v3, v9, [Lo/addWrite;

    .line 7043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v12, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v10

    .line 248
    check-cast v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;

    .line 7083
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/DataListItem;->ICustomTabsCallback:Ljava/lang/String;

    .line 8043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v11

    .line 246
    invoke-static {v3, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v3, "nba_data_list_item_land"

    .line 246
    invoke-virtual {v1, v3, v2}, Lo/DefaultItemAnimator;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    :goto_1
    return-void
.end method
