.class public final Lo/addTab$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addTab;-><init>()V
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
        "com/cred/pay/ui/instrumentlisting/farm/InstrumentListingFragment$onClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/addTab;


# direct methods
.method constructor <init>(Lo/addTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "UPI"

    const-string v6, "null cannot be cast to non-null type com.cred.pay.ui.PaymentContainerFragment"

    const/4 v7, 0x0

    const-string/jumbo v8, "source"

    const-string v9, "pairs"

    const-string v10, "payment farm"

    const/4 v11, 0x0

    const/4 v12, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v3, "add_button"

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 142
    instance-of v1, v2, Lo/addTintListToCache;

    if-eqz v1, :cond_10

    .line 143
    move-object v1, v2

    check-cast v1, Lo/addTintListToCache;

    .line 11011
    iget-object v2, v1, Lo/addTintListToCache;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "CARD"

    .line 143
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "add_debit_card_click"

    .line 144
    invoke-static {v2, v7}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    iget-object v2, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-static {v2}, Lo/addTab;->onNavigationEvent(Lo/addTab;)V

    .line 12011
    :cond_0
    iget-object v1, v1, Lo/addTintListToCache;->onNavigationEvent:Ljava/lang/String;

    .line 147
    invoke-static {v1, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-array v1, v12, [Lo/addWrite;

    .line 12043
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v8, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    .line 148
    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "add_cupi_account_click"

    .line 148
    invoke-static {v1, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-static {v1}, Lo/addTab;->ICustomTabsCallback(Lo/addTab;)V

    return-void

    :sswitch_1
    const-string/jumbo v2, "upi_apps"

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 154
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-static {v1, v11}, Lo/addTab;->ICustomTabsCallback(Lo/addTab;Z)V

    const-string v1, "other_upi_options_click"

    .line 155
    invoke-static {v1, v7}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :sswitch_2
    const-string/jumbo v3, "set_mpin"

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 191
    instance-of v1, v2, Lo/getTintMode;

    if-eqz v1, :cond_10

    new-array v1, v12, [Lo/addWrite;

    .line 19043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v8, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v11

    .line 192
    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "cupi_set_mpin_click"

    .line 192
    invoke-static {v1, v3}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lo/getMaxAvailableHeight;

    if-eqz v1, :cond_10

    .line 194
    move-object v1, v2

    check-cast v1, Lo/getTintMode;

    .line 20014
    iget-object v1, v1, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    if-eqz v1, :cond_3

    .line 194
    check-cast v1, Lcom/cred/pay/repository/models/CredUpiInstrument;

    .line 20269
    iget-object v1, v1, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 195
    iget-object v2, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Lo/getMaxAvailableHeight;

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 21049
    :cond_1
    iget-object v3, v1, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    .line 22048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 22072
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 195
    invoke-static {v2, v3, v1}, Lo/getMaxAvailableHeight;->onNavigationEvent(Lo/getMaxAvailableHeight;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_3
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.cred.pay.repository.models.CredUpiInstrument"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_3
    const-string/jumbo v2, "select_upi_bank"

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-array v1, v12, [Lo/addWrite;

    .line 18043
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v8, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    .line 187
    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "payment_farm_cupi_select_bank_click"

    .line 187
    invoke-static {v1, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-static {v1}, Lo/addTab;->ICustomTabsCallback(Lo/addTab;)V

    return-void

    :sswitch_4
    const-string v3, "fetch_upi"

    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 169
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    .line 15000
    iget-object v1, v1, Lo/addTab;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/updateTab;

    .line 15022
    iput-boolean v12, v1, Lo/updateTab;->onNavigationEvent:Z

    new-array v1, v12, [Lo/addWrite;

    .line 15043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v8, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v11

    .line 170
    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "payment_farm_fetch_ac_click"

    .line 170
    invoke-static {v1, v3}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    instance-of v1, v2, Lo/ScrollingTabContainerView;

    if-eqz v1, :cond_10

    .line 172
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lo/getMaxAvailableHeight;

    if-eqz v1, :cond_10

    .line 173
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lo/getMaxAvailableHeight;

    .line 15676
    new-instance v2, Lo/getMaxAvailableHeight$postMessage;

    invoke-direct {v2, v1}, Lo/getMaxAvailableHeight$postMessage;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v2, Lo/getServerTime;

    .line 15685
    invoke-virtual {v1, v2}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getServerTime;)V

    return-void

    .line 173
    :cond_4
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_5
    const-string v2, "refresh_upi"

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-array v1, v12, [Lo/addWrite;

    .line 16043
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v8, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    .line 177
    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "payment_farm_refresh_fetch_ac_click"

    .line 177
    invoke-static {v1, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 178
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lo/getMaxAvailableHeight;

    if-eqz v1, :cond_10

    .line 179
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lo/getMaxAvailableHeight;

    .line 16223
    new-instance v2, Lo/getMaxAvailableHeight$newSession;

    invoke-direct {v2, v1, v4, v12}, Lo/getMaxAvailableHeight$newSession;-><init>(Lo/getMaxAvailableHeight;IZ)V

    check-cast v2, Lo/getServerTime;

    .line 16232
    invoke-virtual {v1, v2}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getServerTime;)V

    return-void

    .line 179
    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_6
    const-string/jumbo v3, "show_more"

    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 158
    instance-of v1, v2, Lo/addTintListToCache;

    if-eqz v1, :cond_10

    .line 159
    move-object v1, v2

    check-cast v1, Lo/addTintListToCache;

    .line 13011
    iget-object v2, v1, Lo/addTintListToCache;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "NB"

    .line 159
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 160
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-static {v1}, Lo/addTab;->onMessageChannelReady(Lo/addTab;)V

    const-string/jumbo v1, "view_all_netbanking_click"

    .line 161
    invoke-static {v1, v7}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 14011
    :cond_6
    iget-object v1, v1, Lo/addTintListToCache;->onNavigationEvent:Ljava/lang/String;

    .line 162
    invoke-static {v1, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 163
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-static {v1, v12}, Lo/addTab;->ICustomTabsCallback(Lo/addTab;Z)V

    const-string v1, "payment_farm_view_all_upi_apps_click"

    .line 164
    invoke-static {v1, v7}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void

    :sswitch_7
    const-string/jumbo v3, "select_instrument"

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 117
    instance-of v1, v2, Lo/getTintMode;

    if-eqz v1, :cond_10

    .line 118
    move-object v1, v2

    check-cast v1, Lo/getTintMode;

    .line 1014
    iget-object v2, v1, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 119
    instance-of v3, v2, Lcom/cred/pay/repository/models/CardInstrument;

    if-eqz v3, :cond_8

    .line 120
    move-object v13, v2

    check-cast v13, Lcom/cred/pay/repository/models/CardInstrument;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const v34, 0xbffff

    invoke-static/range {v13 .. v34}, Lcom/cred/pay/repository/models/CardInstrument;->onMessageChannelReady(Lcom/cred/pay/repository/models/CardInstrument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;I)Lcom/cred/pay/repository/models/CardInstrument;

    move-result-object v2

    check-cast v2, Lo/isInputMethodNotNeeded;

    .line 121
    iget-object v3, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    .line 2000
    iget-object v3, v3, Lo/addTab;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuItemHoverListener;

    if-eqz v3, :cond_a

    .line 121
    move-object v5, v2

    check-cast v5, Lcom/cred/pay/repository/models/CardInstrument;

    invoke-virtual {v3, v5, v10}, Lo/MenuItemHoverListener;->onNavigationEvent(Lcom/cred/pay/repository/models/CardInstrument;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_8
    instance-of v3, v2, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    if-eqz v3, :cond_9

    move-object v3, v2

    check-cast v3, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    .line 2202
    iget-object v3, v3, Lcom/cred/pay/repository/models/UpiAppsInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 122
    sget-object v5, Lo/SearchView;->onPostMessage:Lo/SearchView;

    invoke-static {}, Lo/SearchView;->extraCallback()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 123
    iget-object v3, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    .line 3000
    iget-object v3, v3, Lo/addTab;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuItemHoverListener;

    if-eqz v3, :cond_a

    .line 3050
    iget-object v3, v3, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    if-eqz v3, :cond_a

    .line 123
    new-instance v5, Lo/throwIfInMutationOperation;

    new-instance v6, Lo/onItemHoverExit$extraCallback;

    const/4 v8, 0x6

    invoke-direct {v6, v11, v11, v8}, Lo/onItemHoverExit$extraCallback;-><init>(ZZI)V

    invoke-direct {v5, v6}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_9
    iget-object v3, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    .line 4000
    iget-object v3, v3, Lo/addTab;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuItemHoverListener;

    if-eqz v3, :cond_a

    .line 125
    invoke-virtual {v3, v2, v10, v12}, Lo/MenuItemHoverListener;->onPostMessage(Lo/isInputMethodNotNeeded;Ljava/lang/String;Z)V

    .line 127
    :cond_a
    :goto_0
    iget-object v3, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    .line 4048
    iget-object v3, v3, Lo/addTab;->extraCallback:Lo/getTintListFromCache;

    if-eqz v3, :cond_e

    .line 6000
    iget-object v3, v3, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/checkSpanForGap;

    .line 6151
    iget-object v3, v3, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v3, :cond_e

    .line 127
    check-cast v3, Ljava/lang/Iterable;

    .line 258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 265
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 266
    check-cast v6, Lo/StaggeredGridLayoutManager;

    .line 129
    instance-of v7, v6, Lo/getTintMode;

    if-eqz v7, :cond_b

    check-cast v6, Lo/getTintMode;

    .line 7014
    iget-object v6, v6, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 7019
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v7, "java.util.Collections.singletonList(element)"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :cond_b
    instance-of v7, v6, Lo/addDrawableToCache;

    if-eqz v7, :cond_c

    check-cast v6, Lo/addDrawableToCache;

    .line 7022
    iget-object v6, v6, Lo/addDrawableToCache;->onMessageChannelReady:Ljava/util/List;

    goto :goto_2

    .line 7070
    :cond_c
    sget-object v6, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v6, Ljava/util/List;

    .line 132
    :goto_2
    check-cast v6, Ljava/lang/Iterable;

    .line 267
    invoke-static {v5, v6}, Lo/getSessionPersistenceKey;->ICustomTabsCallback(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 269
    :cond_d
    move-object v7, v5

    check-cast v7, Ljava/util/List;

    :cond_e
    if-eqz v7, :cond_f

    .line 8014
    iget-object v1, v1, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 134
    invoke-interface {v7, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_3

    :cond_f
    const/4 v1, -0x1

    :goto_3
    const/4 v3, 0x3

    new-array v5, v3, [Lo/addWrite;

    .line 136
    invoke-virtual {v2}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v6

    .line 8043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "selected_instrument"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v11

    .line 137
    invoke-virtual {v2}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    .line 9043
    new-instance v6, Lo/addWrite;

    const-string v7, "payment_instrument_group"

    invoke-direct {v6, v7, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v12

    add-int/2addr v1, v12

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 10043
    new-instance v2, Lo/addWrite;

    const-string v6, "position"

    invoke-direct {v2, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v5, v4

    .line 136
    invoke-static {v5, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "payment_farm_chosen_instrument_click"

    .line 135
    invoke-static {v2, v1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :sswitch_8
    const-string v2, "change_sim"

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-array v1, v12, [Lo/addWrite;

    .line 17043
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v8, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    .line 183
    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v12}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "payment_farm_cupi_change_sim_click"

    .line 183
    invoke-static {v1, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    iget-object v1, v0, Lo/addTab$ICustomTabsCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-static {v1}, Lo/addTab;->onPostMessage(Lo/addTab;)V

    :cond_10
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f0d5838 -> :sswitch_8
        -0x72dd30f6 -> :sswitch_7
        -0x717590a9 -> :sswitch_6
        -0x52ab5e36 -> :sswitch_5
        -0x49bbf1d7 -> :sswitch_4
        -0x3b3b2170 -> :sswitch_3
        0x545ca7c5 -> :sswitch_2
        0x5738cae3 -> :sswitch_1
        0x5dd6e490 -> :sswitch_0
    .end sparse-switch
.end method
