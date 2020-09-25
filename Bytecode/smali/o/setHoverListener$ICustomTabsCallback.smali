.class public final Lo/setHoverListener$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setHoverListener;-><init>()V
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
        "com/cred/pay/ui/bankselection/BankSelectionDialog$clickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "eventType",
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
.field private synthetic onNavigationEvent:Lo/setHoverListener;


# direct methods
.method constructor <init>(Lo/setHoverListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 8

    const-string p3, "eventType"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p3, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    invoke-static {p3}, Lo/isCurrent$onMessageChannelReady;->extraCallback(Landroid/app/Activity;)V

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, 0x2e063c

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p3, "bank"

    .line 161
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 162
    instance-of p1, p2, Lo/setHoverListener$extraCallback;

    if-eqz p1, :cond_a

    .line 163
    iget-object p1, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    .line 1050
    iget-object p1, p1, Lo/setHoverListener;->onNavigationEvent:Ljava/lang/String;

    const-string p3, "NB"

    .line 163
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "pairs"

    const-string/jumbo v1, "selected_instrument"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    .line 165
    iget-object p1, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    .line 2000
    iget-object p1, p1, Lo/setHoverListener;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 165
    iget-object v5, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    .line 2051
    iget-object v5, v5, Lo/setHoverListener;->onMessageChannelReady:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, ""

    .line 165
    :cond_1
    invoke-virtual {p1, v5}, Lo/MenuItemHoverListener;->onPostMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/cred/pay/repository/models/PaymentMethod;

    .line 3026
    iget-object v6, v6, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    .line 166
    invoke-static {v6, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v5

    .line 165
    :cond_3
    check-cast v4, Lcom/cred/pay/repository/models/PaymentMethod;

    :cond_4
    if-eqz v4, :cond_6

    .line 4025
    iget-object p1, v4, Lcom/cred/pay/repository/models/PaymentMethod;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 168
    check-cast p1, Ljava/lang/Iterable;

    .line 264
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/isInputMethodNotNeeded;

    .line 169
    instance-of v4, p3, Lcom/cred/pay/repository/models/NetBankingInstrument;

    if-eqz v4, :cond_5

    move-object v4, p3

    check-cast v4, Lcom/cred/pay/repository/models/NetBankingInstrument;

    .line 4026
    iget-object v4, v4, Lcom/cred/pay/repository/models/NetBankingInstrument;->extraCallback:Ljava/lang/String;

    .line 169
    move-object v5, p2

    check-cast v5, Lo/setHoverListener$extraCallback;

    .line 4244
    iget-object v5, v5, Lo/setHoverListener$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 169
    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-array v4, v2, [Lo/addWrite;

    .line 170
    invoke-virtual {p3}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v5

    .line 5043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v1, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v3

    .line 170
    invoke-static {v4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v4, "all_netbanking_chosen_instrument_click"

    .line 170
    invoke-static {v4, v5}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    iget-object v4, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    .line 6000
    iget-object v4, v4, Lo/setHoverListener;->onPostMessage:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MenuItemHoverListener;

    if-eqz v4, :cond_5

    .line 171
    iget-object v5, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    invoke-static {v5}, Lo/setHoverListener;->onPostMessage(Lo/setHoverListener;)Z

    move-result v5

    const-string v6, "net banking view all"

    invoke-virtual {v4, p3, v6, v5}, Lo/MenuItemHoverListener;->onPostMessage(Lo/isInputMethodNotNeeded;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    return-void

    .line 176
    :cond_7
    iget-object p1, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    .line 6054
    iget-object p1, p1, Lo/setHoverListener;->ICustomTabsCallback:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    .line 176
    check-cast p1, Ljava/lang/Iterable;

    .line 266
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    .line 6202
    iget-object v4, p3, Lcom/cred/pay/repository/models/UpiAppsInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 177
    move-object v5, p2

    check-cast v5, Lo/setHoverListener$extraCallback;

    .line 6244
    iget-object v5, v5, Lo/setHoverListener$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 177
    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-array v4, v2, [Lo/addWrite;

    .line 7212
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "upi_app_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p3, Lcom/cred/pay/repository/models/UpiAppsInstrument;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v1, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v3

    .line 178
    invoke-static {v4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v4, "other_upi_options_chosen_instrument_click"

    .line 178
    invoke-static {v4, v5}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 8202
    iget-object v4, p3, Lcom/cred/pay/repository/models/UpiAppsInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 179
    sget-object v5, Lo/SearchView;->onPostMessage:Lo/SearchView;

    invoke-static {}, Lo/SearchView;->extraCallback()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 180
    iget-object p3, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    .line 9000
    iget-object p3, p3, Lo/setHoverListener;->onPostMessage:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/MenuItemHoverListener;

    if-eqz p3, :cond_8

    .line 9050
    iget-object p3, p3, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    if-eqz p3, :cond_8

    .line 180
    new-instance v4, Lo/throwIfInMutationOperation;

    new-instance v5, Lo/onItemHoverExit$extraCallback;

    iget-object v6, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    invoke-static {v6}, Lo/setHoverListener;->onPostMessage(Lo/setHoverListener;)Z

    move-result v6

    const/4 v7, 0x2

    invoke-direct {v5, v3, v6, v7}, Lo/onItemHoverExit$extraCallback;-><init>(ZZI)V

    invoke-direct {v4, v5}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_1

    .line 182
    :cond_9
    iget-object v4, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    .line 10000
    iget-object v4, v4, Lo/setHoverListener;->onPostMessage:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MenuItemHoverListener;

    if-eqz v4, :cond_8

    .line 182
    check-cast p3, Lo/isInputMethodNotNeeded;

    iget-object v5, p0, Lo/setHoverListener$ICustomTabsCallback;->onNavigationEvent:Lo/setHoverListener;

    invoke-static {v5}, Lo/setHoverListener;->onPostMessage(Lo/setHoverListener;)Z

    move-result v5

    const-string v6, "other UPI apps"

    invoke-virtual {v4, p3, v6, v5}, Lo/MenuItemHoverListener;->onPostMessage(Lo/isInputMethodNotNeeded;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_a
    :goto_2
    return-void
.end method
