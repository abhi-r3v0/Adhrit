.class public final Lo/getCachedDrawable$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCachedDrawable;-><init>()V
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
        "com/cred/pay/ui/instrumentlisting/PaymentUpiBottomSheet$onClickListener$1",
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
.field private synthetic onMessageChannelReady:Lo/getCachedDrawable;


# direct methods
.method constructor <init>(Lo/getCachedDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 6

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const-string v0, "null cannot be cast to non-null type com.cred.pay.ui.PaymentContainerFragment"

    const-string v1, "cupi_bottom_sheet"

    const-string/jumbo v2, "source"

    const-string v3, "pairs"

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "add_button"

    .line 217
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v5, [Lo/addWrite;

    .line 7043
    new-instance p3, Lo/addWrite;

    invoke-direct {p3, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, v4

    .line 218
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7105
    new-instance p3, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "add_cupi_account_click"

    .line 218
    invoke-static {p1, p3}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    instance-of p1, p2, Lo/addTintListToCache;

    if-eqz p1, :cond_6

    .line 220
    check-cast p2, Lo/addTintListToCache;

    .line 8011
    iget-object p1, p2, Lo/addTintListToCache;->onNavigationEvent:Ljava/lang/String;

    const-string p2, "UPI"

    .line 220
    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 221
    iget-object p1, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    invoke-static {p1}, Lo/getCachedDrawable;->onPostMessage(Lo/getCachedDrawable;)V

    return-void

    :sswitch_1
    const-string/jumbo p3, "set_mpin"

    .line 225
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 226
    instance-of p1, p2, Lo/getTintMode;

    if-eqz p1, :cond_6

    new-array p1, v5, [Lo/addWrite;

    .line 8043
    new-instance p3, Lo/addWrite;

    invoke-direct {p3, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, v4

    .line 227
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance p3, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "cupi_set_mpin_click"

    .line 227
    invoke-static {p1, p3}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    iget-object p1, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lo/getMaxAvailableHeight;

    if-eqz p1, :cond_6

    .line 229
    check-cast p2, Lo/getTintMode;

    .line 9014
    iget-object p1, p2, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    if-eqz p1, :cond_2

    .line 229
    check-cast p1, Lcom/cred/pay/repository/models/CredUpiInstrument;

    .line 9269
    iget-object p1, p1, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    .line 230
    iget-object p2, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lo/getMaxAvailableHeight;

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 10049
    :cond_0
    iget-object p3, p1, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    .line 11048
    iget-object p1, p1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 11072
    iget-object p1, p1, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 230
    invoke-static {p2, p3, p1}, Lo/getMaxAvailableHeight;->onNavigationEvent(Lo/getMaxAvailableHeight;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.cred.pay.repository.models.CredUpiInstrument"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_2
    const-string/jumbo p2, "select_upi_bank"

    .line 213
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v5, [Lo/addWrite;

    .line 6043
    new-instance p2, Lo/addWrite;

    invoke-direct {p2, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, p1, v4

    .line 214
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "payment_farm_cupi_select_bank_click"

    .line 214
    invoke-static {p1, p2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 215
    iget-object p1, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    invoke-static {p1}, Lo/getCachedDrawable;->onPostMessage(Lo/getCachedDrawable;)V

    return-void

    :sswitch_3
    const-string p3, "fetch_upi"

    .line 195
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v5, [Lo/addWrite;

    .line 3043
    new-instance p3, Lo/addWrite;

    invoke-direct {p3, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, v4

    .line 196
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance p3, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "payment_farm_fetch_ac_click"

    .line 196
    invoke-static {p1, p3}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    instance-of p1, p2, Lo/ScrollingTabContainerView;

    if-eqz p1, :cond_6

    .line 198
    iget-object p1, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lo/getMaxAvailableHeight;

    if-eqz p1, :cond_6

    .line 199
    iget-object p1, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lo/getMaxAvailableHeight;

    .line 3676
    new-instance p2, Lo/getMaxAvailableHeight$postMessage;

    invoke-direct {p2, p1}, Lo/getMaxAvailableHeight$postMessage;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast p2, Lo/getServerTime;

    .line 3685
    invoke-virtual {p1, p2}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getServerTime;)V

    return-void

    .line 199
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_4
    const-string p2, "refresh_upi"

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v5, [Lo/addWrite;

    .line 4043
    new-instance p2, Lo/addWrite;

    invoke-direct {p2, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, p1, v4

    .line 204
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "payment_farm_refresh_fetch_ac_click"

    .line 204
    invoke-static {p1, p2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 205
    iget-object p1, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lo/getMaxAvailableHeight;

    if-eqz p1, :cond_6

    .line 206
    iget-object p1, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lo/getMaxAvailableHeight;

    const/4 p2, 0x2

    .line 4223
    new-instance p3, Lo/getMaxAvailableHeight$newSession;

    invoke-direct {p3, p1, p2, v5}, Lo/getMaxAvailableHeight$newSession;-><init>(Lo/getMaxAvailableHeight;IZ)V

    check-cast p3, Lo/getServerTime;

    .line 4232
    invoke-virtual {p1, p3}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getServerTime;)V

    return-void

    .line 206
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_5
    const-string/jumbo p3, "select_instrument"

    .line 188
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 189
    instance-of p1, p2, Lo/getTintMode;

    if-eqz p1, :cond_6

    new-array p1, v5, [Lo/addWrite;

    .line 191
    check-cast p2, Lo/getTintMode;

    .line 1014
    iget-object p3, p2, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 191
    invoke-virtual {p3}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object p3

    .line 1043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v1, "selected_instrument"

    invoke-direct {v0, v1, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v4

    .line 191
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    new-instance p3, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "cupi_bottom_sheet_instrument_click"

    .line 190
    invoke-static {p1, p3}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 192
    iget-object p1, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    .line 2000
    iget-object p1, p1, Lo/getCachedDrawable;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    if-eqz p1, :cond_5

    .line 2014
    iget-object p2, p2, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 192
    iget-object p3, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    .line 2049
    iget-boolean p3, p3, Lo/getCachedDrawable;->ICustomTabsCallback:Z

    const-string v0, "fetched account CRED UPI"

    .line 192
    invoke-virtual {p1, p2, v0, p3}, Lo/MenuItemHoverListener;->onPostMessage(Lo/isInputMethodNotNeeded;Ljava/lang/String;Z)V

    :cond_5
    return-void

    :sswitch_6
    const-string p2, "change_sim"

    .line 209
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v5, [Lo/addWrite;

    .line 5043
    new-instance p2, Lo/addWrite;

    invoke-direct {p2, v2, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, p1, v4

    .line 210
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "payment_farm_cupi_change_sim_click"

    .line 210
    invoke-static {p1, p2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    iget-object p1, p0, Lo/getCachedDrawable$onNavigationEvent;->onMessageChannelReady:Lo/getCachedDrawable;

    invoke-static {p1}, Lo/getCachedDrawable;->extraCallback(Lo/getCachedDrawable;)V

    :cond_6
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f0d5838 -> :sswitch_6
        -0x72dd30f6 -> :sswitch_5
        -0x52ab5e36 -> :sswitch_4
        -0x49bbf1d7 -> :sswitch_3
        -0x3b3b2170 -> :sswitch_2
        0x545ca7c5 -> :sswitch_1
        0x5dd6e490 -> :sswitch_0
    .end sparse-switch
.end method
