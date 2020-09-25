.class public final Lo/removeAllTabs;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeAllTabs$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001(B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eJ\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020\tH\u0002J \u0010$\u001a\u00020\u001b2\u0016\u0010%\u001a\u0012\u0012\u0004\u0012\u00020\u001e0&j\u0008\u0012\u0004\u0012\u00020\u001e`\'H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006)"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "getApp",
        "()Landroid/app/Application;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcom/cred/pay/repository/models/PreferredInstruments;",
        "getObserver",
        "()Landroidx/lifecycle/Observer;",
        "parentViewModel",
        "Lcom/cred/pay/ui/PaymentContainerViewModel;",
        "selectedInstrumentLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/cred/pay/repository/models/Instrument;",
        "getSelectedInstrumentLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "sentShowRecommendationsFragmentEventDone",
        "",
        "stateLiveData",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsViewModel$RecommendationsState;",
        "getStateLiveData",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "init",
        "",
        "onInstrumentSelected",
        "data",
        "Lcom/cred/pay/ui/instrumentlisting/adapter/InstrumentItem;",
        "sendShowRecommendationsFragmentEvent",
        "templateType",
        "",
        "setupList",
        "preferredInstruments",
        "updateUiAsInstrumentList",
        "list",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "RecommendationsState",
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
.field ICustomTabsCallback:Lo/MenuItemHoverListener;

.field private final asInterface:Landroid/app/Application;

.field final extraCallback:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lcom/cred/pay/repository/models/PreferredInstruments;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/isInputMethodNotNeeded;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaControllerCompatApi24$TransportControls<",
            "Lo/removeAllTabs$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lo/removeAllTabs;->asInterface:Landroid/app/Application;

    .line 21
    new-instance p1, Lo/MediaControllerCompatApi24$TransportControls;

    invoke-direct {p1}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    iput-object p1, p0, Lo/removeAllTabs;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    .line 22
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/removeAllTabs;->onMessageChannelReady:Lo/setActive;

    .line 32
    new-instance p1, Lo/removeAllTabs$extraCallback;

    invoke-direct {p1, p0}, Lo/removeAllTabs$extraCallback;-><init>(Lo/removeAllTabs;)V

    check-cast p1, Lo/setPlaybackToRemote;

    iput-object p1, p0, Lo/removeAllTabs;->extraCallback:Lo/setPlaybackToRemote;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 5

    .line 124
    iget-boolean v0, p0, Lo/removeAllTabs;->onTransact:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    check-cast v0, Ljava/util/Map;

    const-string/jumbo v2, "template_value"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lo/removeAllTabs;->ICustomTabsCallback:Lo/MenuItemHoverListener;

    if-eqz p1, :cond_0

    .line 6033
    iget-object p1, p1, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz p1, :cond_0

    .line 7011
    iget-object p1, p1, Lcom/cred/pay/repository/models/PaymentOrder;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "order_id"

    .line 136
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance p1, Lo/requireArguments;

    iget-object v2, p0, Lo/removeAllTabs;->asInterface:Landroid/app/Application;

    check-cast v2, Landroid/content/Context;

    invoke-direct {p1, v2}, Lo/requireArguments;-><init>(Landroid/content/Context;)V

    .line 7150
    iget-boolean v2, p1, Lo/requireArguments;->onMessageChannelReady:Z

    if-nez v2, :cond_2

    .line 7154
    iget-boolean p1, p1, Lo/requireArguments;->onNavigationEvent:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 138
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v2, "sim_detected_flag"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object p1, p0, Lo/removeAllTabs;->ICustomTabsCallback:Lo/MenuItemHoverListener;

    if-eqz p1, :cond_3

    .line 8033
    iget-object p1, p1, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz p1, :cond_3

    .line 9019
    iget-object p1, p1, Lcom/cred/pay/repository/models/PaymentOrder;->onMessageChannelReady:Ljava/util/HashMap;

    if-nez p1, :cond_4

    .line 9040
    :cond_3
    sget-object p1, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz p1, :cond_7

    :cond_4
    check-cast p1, Ljava/util/Map;

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 139
    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "key"

    .line 141
    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 143
    :cond_5
    iget-object p1, p0, Lo/removeAllTabs;->ICustomTabsCallback:Lo/MenuItemHoverListener;

    if-eqz p1, :cond_6

    .line 10033
    iget-object p1, p1, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz p1, :cond_6

    .line 11019
    iget-object p1, p1, Lcom/cred/pay/repository/models/PaymentOrder;->onMessageChannelReady:Ljava/util/HashMap;

    if-eqz p1, :cond_6

    const-string/jumbo v2, "source"

    const-string v3, "recommendations"

    .line 143
    invoke-virtual {p1, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string p1, "pi_recommendation_botton_card_screen_load"

    .line 144
    invoke-static {p1, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 9040
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_8
    :goto_4
    iput-boolean v1, p0, Lo/removeAllTabs;->onTransact:Z

    return-void
.end method

.method private final extraCallback(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/getTintMode;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lo/removeAllTabs;->onMessageChannelReady:Lo/setActive;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 102
    :goto_0
    check-cast v0, Lo/isInputMethodNotNeeded;

    if-eqz v0, :cond_3

    .line 105
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lo/getTintMode;

    .line 2014
    iget-object v4, v4, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 106
    invoke-static {v4, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 105
    :goto_1
    check-cast v3, Lo/getTintMode;

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_6

    .line 110
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 174
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getTintMode;

    .line 3014
    iget-object v4, v1, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 4008
    iget-object v4, v4, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v4, :cond_5

    .line 4037
    iget-boolean v4, v4, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v4, :cond_4

    :cond_5
    if-nez v3, :cond_4

    move-object v3, v1

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    const/4 v0, 0x1

    .line 5016
    iput-boolean v0, v3, Lo/getTintMode;->onNavigationEvent:Z

    .line 5151
    :cond_7
    iget-object v0, p0, Lo/removeAllTabs;->onMessageChannelReady:Lo/setActive;

    if-eqz v3, :cond_8

    .line 6014
    iget-object v2, v3, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 5151
    :cond_8
    invoke-virtual {v0, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lo/removeAllTabs;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    new-instance v1, Lo/removeAllTabs$onPostMessage$onNavigationEvent;

    check-cast p1, Ljava/util/List;

    invoke-direct {v1, p1}, Lo/removeAllTabs$onPostMessage$onNavigationEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/removeAllTabs;Lcom/cred/pay/repository/models/PreferredInstruments;)V
    .locals 10

    .line 11040
    iget-object v0, p0, Lo/removeAllTabs;->ICustomTabsCallback:Lo/MenuItemHoverListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12035
    iget-object v0, v0, Lo/MenuItemHoverListener;->ICustomTabsCallback:Lo/onMoveStarting$onNavigationEvent;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 11042
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12053
    iget-object v3, p1, Lcom/cred/pay/repository/models/PreferredInstruments;->ICustomTabsCallback:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 11045
    check-cast v3, Ljava/lang/Iterable;

    .line 11162
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 11163
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

    .line 11044
    iget-object v9, p0, Lo/removeAllTabs;->ICustomTabsCallback:Lo/MenuItemHoverListener;

    if-eqz v9, :cond_2

    .line 12071
    iget-object v8, v8, Lo/getInputMethodMode;->onPostMessage:Lo/isInputMethodNotNeeded;

    .line 11044
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

    .line 11164
    :cond_3
    check-cast v6, Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    .line 11165
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getInputMethodMode;

    .line 13071
    iget-object v6, v6, Lo/getInputMethodMode;->onPostMessage:Lo/isInputMethodNotNeeded;

    .line 11047
    new-instance v7, Lo/getTintMode;

    invoke-direct {v7, v6}, Lo/getTintMode;-><init>(Lo/isInputMethodNotNeeded;)V

    .line 14015
    iput-boolean v5, v7, Lo/getTintMode;->onMessageChannelReady:Z

    .line 11047
    invoke-virtual {v2, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 11052
    :cond_4
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_5

    .line 11053
    invoke-direct {p0, v2}, Lo/removeAllTabs;->extraCallback(Ljava/util/ArrayList;)V

    const-string p1, "recommended_instruments"

    .line 11054
    invoke-direct {p0, p1}, Lo/removeAllTabs;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void

    .line 14061
    :cond_5
    iget-object v2, p1, Lcom/cred/pay/repository/models/PreferredInstruments;->onPostMessage:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_19

    if-eqz v0, :cond_7

    .line 14258
    iget-object v2, v0, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    goto :goto_5

    :cond_7
    move-object v2, v1

    :goto_5
    if-nez v2, :cond_9

    if-eqz v0, :cond_8

    .line 14259
    iget-object v2, v0, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v2, :cond_8

    .line 15135
    iget-object v2, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v3, "NO_PERMISSION"

    .line 11057
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lo/removeAllTabs;->ICustomTabsCallback:Lo/MenuItemHoverListener;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lo/MenuItemHoverListener;->ICustomTabsCallback()Z

    move-result v2

    if-ne v2, v5, :cond_8

    goto :goto_6

    .line 11094
    :cond_8
    iget-object p0, p0, Lo/removeAllTabs;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object p1, Lo/removeAllTabs$onPostMessage$extraCallback;->extraCallback:Lo/removeAllTabs$onPostMessage$extraCallback;

    invoke-virtual {p0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void

    .line 15258
    :cond_9
    :goto_6
    iget-object v2, v0, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz v2, :cond_a

    .line 16011
    iget-object v2, v2, Lcom/cred/pay/repository/models/UpiAccountResponse;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_7

    :cond_a
    move-object v2, v1

    :goto_7
    const-string/jumbo v3, "true"

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_8

    .line 16056
    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_8
    if-eqz v2, :cond_16

    .line 16258
    iget-object p1, v0, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz p1, :cond_f

    .line 11060
    invoke-virtual {p1}, Lcom/cred/pay/repository/models/UpiAccountResponse;->onPostMessage()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 11167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 11168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/cred/pay/repository/models/VpaAccount;

    .line 17048
    iget-object v6, v6, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 17069
    iget-object v6, v6, Lcom/cred/pay/repository/models/Account;->onTransact:Ljava/lang/String;

    if-nez v6, :cond_d

    const/4 v6, 0x0

    goto :goto_a

    .line 18056
    :cond_d
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    :goto_a
    if-eqz v6, :cond_c

    .line 11061
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 11169
    :cond_e
    check-cast v0, Ljava/util/List;

    goto :goto_b

    :cond_f
    move-object v0, v1

    .line 11062
    :goto_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_13

    .line 11063
    check-cast v0, Ljava/lang/Iterable;

    .line 11170
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cred/pay/repository/models/VpaAccount;

    .line 11064
    iget-object v3, p0, Lo/removeAllTabs;->ICustomTabsCallback:Lo/MenuItemHoverListener;

    if-eqz v3, :cond_11

    invoke-virtual {v3, v2}, Lo/MenuItemHoverListener;->onPostMessage(Lcom/cred/pay/repository/models/VpaAccount;)Lcom/cred/pay/repository/models/CredUpiInstrument;

    move-result-object v2

    goto :goto_d

    :cond_11
    move-object v2, v1

    :goto_d
    if-eqz v2, :cond_10

    .line 19008
    iget-object v3, v2, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v3, :cond_12

    .line 19037
    iget-boolean v3, v3, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v3, :cond_10

    .line 11066
    :cond_12
    new-instance v3, Lo/getTintMode;

    check-cast v2, Lo/isInputMethodNotNeeded;

    invoke-direct {v3, v2}, Lo/getTintMode;-><init>(Lo/isInputMethodNotNeeded;)V

    .line 20015
    iput-boolean v5, v3, Lo/getTintMode;->onMessageChannelReady:Z

    .line 11067
    invoke-virtual {p1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 11071
    :cond_13
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 11074
    sget-object v0, Lo/setOnItemSelectedListener;->extraCallback:Lo/setOnItemSelectedListener;

    .line 21000
    sget-object v0, Lo/setOnItemSelectedListener;->onPostMessage:Lo/SortedList$BatchedCallback;

    sget-object v1, Lo/setOnItemSelectedListener;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lo/SortedListAdapterCallback;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11075
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 11172
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_14

    new-instance v2, Lo/removeAllTabs$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/removeAllTabs$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/util/Comparator;

    const-string v0, "$this$sortWith"

    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21042
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_14

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11080
    :cond_14
    iget-object v0, p0, Lo/removeAllTabs;->ICustomTabsCallback:Lo/MenuItemHoverListener;

    if-eqz v0, :cond_15

    .line 22037
    iget-object v0, v0, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz v0, :cond_15

    .line 22040
    iget-object v0, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    if-eqz v0, :cond_15

    .line 22056
    iget v0, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->extraCallback:I

    goto :goto_e

    :cond_15
    const/4 v0, 0x3

    .line 11082
    :goto_e
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lo/removeAllTabs;->extraCallback(Ljava/util/ArrayList;)V

    const-string p1, "cupi"

    .line 11083
    invoke-direct {p0, p1}, Lo/removeAllTabs;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void

    .line 22058
    :cond_16
    iget-object p1, p1, Lcom/cred/pay/repository/models/PreferredInstruments;->onNavigationEvent:Ljava/lang/Boolean;

    .line 11087
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    sget-object p1, Lo/setOnItemSelectedListener;->extraCallback:Lo/setOnItemSelectedListener;

    .line 23000
    sget-object p1, Lo/setOnItemSelectedListener;->onNavigationEvent:Lo/SortedList$Callback;

    sget-object v0, Lo/setOnItemSelectedListener;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Lo/SortedListAdapterCallback;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 11087
    iget-object v0, p0, Lo/removeAllTabs;->ICustomTabsCallback:Lo/MenuItemHoverListener;

    if-eqz v0, :cond_17

    .line 23037
    iget-object v0, v0, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz v0, :cond_17

    .line 23040
    iget-object v0, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    if-eqz v0, :cond_17

    .line 23053
    iget v0, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onPostMessage:I

    goto :goto_f

    :cond_17
    const/4 v0, 0x2

    :goto_f
    if-ge p1, v0, :cond_18

    .line 11088
    iget-object p1, p0, Lo/removeAllTabs;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object v0, Lo/removeAllTabs$onPostMessage$onMessageChannelReady;->extraCallback:Lo/removeAllTabs$onPostMessage$onMessageChannelReady;

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    const-string p1, "cupi_fetch_ac"

    .line 11089
    invoke-direct {p0, p1}, Lo/removeAllTabs;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void

    .line 11091
    :cond_18
    iget-object p0, p0, Lo/removeAllTabs;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object p1, Lo/removeAllTabs$onPostMessage$extraCallback;->extraCallback:Lo/removeAllTabs$onPostMessage$extraCallback;

    invoke-virtual {p0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void

    .line 11097
    :cond_19
    iget-object p0, p0, Lo/removeAllTabs;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object p1, Lo/removeAllTabs$onPostMessage$extraCallback;->extraCallback:Lo/removeAllTabs$onPostMessage$extraCallback;

    invoke-virtual {p0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
