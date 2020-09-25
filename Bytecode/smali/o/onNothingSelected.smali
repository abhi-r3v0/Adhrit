.class public final Lo/onNothingSelected;
.super Lo/setQueue;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00060\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/retry/RetryRecommendationViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "parentViewModel",
        "Lcom/cred/pay/ui/PaymentContainerViewModel;",
        "retryPreferredInstruments",
        "",
        "Lcom/cred/pay/repository/models/InstrumentWrapper;",
        "viewList",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "getViewList",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "setViewList",
        "(Landroidx/lifecycle/MediatorLiveData;)V",
        "createList",
        "",
        "init",
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
.field private ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getInputMethodMode;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Lo/MenuItemHoverListener;

.field onPostMessage:Lo/MediaControllerCompatApi24$TransportControls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaControllerCompatApi24$TransportControls<",
            "Ljava/util/List<",
            "Lo/StaggeredGridLayoutManager;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 17
    new-instance v0, Lo/MediaControllerCompatApi24$TransportControls;

    invoke-direct {v0}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    iput-object v0, p0, Lo/onNothingSelected;->onPostMessage:Lo/MediaControllerCompatApi24$TransportControls;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/onNothingSelected;)V
    .locals 14

    .line 1028
    iget-object v0, p0, Lo/onNothingSelected;->onNavigationEvent:Lo/MenuItemHoverListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, v0, Lo/MenuItemHoverListener;->ICustomTabsCallback:Lo/onMoveStarting$onNavigationEvent;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1029
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    iget-object v3, p0, Lo/onNothingSelected;->ICustomTabsCallback:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_d

    check-cast v3, Ljava/lang/Iterable;

    .line 1062
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 1063
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lo/getInputMethodMode;

    .line 1031
    iget-object v9, p0, Lo/onNothingSelected;->onNavigationEvent:Lo/MenuItemHoverListener;

    if-eqz v9, :cond_2

    .line 2071
    iget-object v8, v8, Lo/getInputMethodMode;->onPostMessage:Lo/isInputMethodNotNeeded;

    .line 1031
    invoke-virtual {v9, v8}, Lo/MenuItemHoverListener;->onNavigationEvent(Lo/isInputMethodNotNeeded;)Z

    move-result v8

    if-ne v8, v5, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_1

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1064
    :cond_3
    check-cast v6, Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    .line 1065
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getInputMethodMode;

    .line 3071
    iget-object v7, v6, Lo/getInputMethodMode;->onPostMessage:Lo/isInputMethodNotNeeded;

    .line 1035
    instance-of v8, v7, Lcom/cred/pay/repository/models/CredUpiInstrument;

    if-eqz v8, :cond_c

    if-eqz v0, :cond_a

    .line 3258
    iget-object v6, v0, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz v6, :cond_a

    .line 1037
    invoke-virtual {v6}, Lcom/cred/pay/repository/models/UpiAccountResponse;->onPostMessage()Ljava/util/ArrayList;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 1066
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/cred/pay/repository/models/VpaAccount;

    .line 1038
    move-object v10, v7

    check-cast v10, Lcom/cred/pay/repository/models/CredUpiInstrument;

    .line 3273
    iget-object v11, v10, Lcom/cred/pay/repository/models/CredUpiInstrument;->onNavigationEvent:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 4273
    iget-object v10, v10, Lcom/cred/pay/repository/models/CredUpiInstrument;->onNavigationEvent:Ljava/lang/String;

    .line 5048
    iget-object v9, v9, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 5062
    iget-object v9, v9, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 1039
    invoke-static {v10, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    goto :goto_5

    .line 6048
    :cond_6
    iget-object v11, v9, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 6063
    iget-object v11, v11, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 6271
    iget-object v10, v10, Lcom/cred/pay/repository/models/CredUpiInstrument;->onPostMessage:Ljava/lang/String;

    .line 1042
    invoke-static {v11, v10}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 7048
    iget-object v9, v9, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 7069
    iget-object v9, v9, Lcom/cred/pay/repository/models/Account;->onTransact:Ljava/lang/String;

    if-nez v9, :cond_7

    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    const-string/jumbo v10, "true"

    .line 8056
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    :goto_4
    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_5

    goto :goto_6

    :cond_9
    move-object v8, v1

    .line 1067
    :goto_6
    check-cast v8, Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v8, :cond_a

    .line 1044
    iget-object v6, p0, Lo/onNothingSelected;->onNavigationEvent:Lo/MenuItemHoverListener;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v8}, Lo/MenuItemHoverListener;->onPostMessage(Lcom/cred/pay/repository/models/VpaAccount;)Lcom/cred/pay/repository/models/CredUpiInstrument;

    move-result-object v6

    .line 9008
    iget-object v8, v7, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v8, :cond_b

    .line 10008
    iget-object v7, v7, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    .line 11008
    iput-object v7, v6, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    goto :goto_7

    :cond_a
    move-object v6, v1

    .line 1043
    :cond_b
    :goto_7
    check-cast v6, Lo/isInputMethodNotNeeded;

    goto :goto_8

    .line 11071
    :cond_c
    iget-object v6, v6, Lo/getInputMethodMode;->onPostMessage:Lo/isInputMethodNotNeeded;

    :goto_8
    if-eqz v6, :cond_4

    .line 1052
    new-instance v7, Lo/getTintMode;

    invoke-direct {v7, v6}, Lo/getTintMode;-><init>(Lo/isInputMethodNotNeeded;)V

    invoke-virtual {v2, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_d
    new-array v0, v5, [Lo/addWrite;

    .line 1055
    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    .line 1069
    new-instance v3, Ljava/util/ArrayList;

    const-string v6, "$this$collectionSizeOrDefault"

    invoke-static {v1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12039
    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    .line 1069
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1070
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1071
    check-cast v6, Lo/getTintMode;

    .line 13014
    iget-object v6, v6, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 1055
    invoke-virtual {v6}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1072
    :cond_e
    check-cast v3, Ljava/util/List;

    move-object v6, v3

    check-cast v6, Ljava/lang/Iterable;

    const-string v1, ","

    .line 1055
    move-object v7, v1

    check-cast v7, Ljava/lang/CharSequence;

    const-string v1, "["

    move-object v8, v1

    check-cast v8, Ljava/lang/CharSequence;

    const-string v1, "]"

    move-object v9, v1

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x38

    invoke-static/range {v6 .. v13}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/onDisconnectSetValue;I)Ljava/lang/String;

    move-result-object v1

    .line 13043
    new-instance v3, Lo/addWrite;

    const-string v6, "order_of_instruments"

    invoke-direct {v3, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v4

    const-string v1, "pairs"

    .line 1055
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "pi_retry_recommendation_botton_card_screen_load"

    .line 1054
    invoke-static {v0, v1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1057
    iget-object p0, p0, Lo/onNothingSelected;->onPostMessage:Lo/MediaControllerCompatApi24$TransportControls;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/onNothingSelected;Ljava/util/List;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lo/onNothingSelected;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method
