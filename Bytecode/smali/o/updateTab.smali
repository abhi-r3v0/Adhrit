.class public final Lo/updateTab;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010 \u001a\u00020\u001fH\u0002J\u0008\u0010!\u001a\u00020\u001fH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\'\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/farm/InstrumentListingViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "getApp",
        "()Landroid/app/Application;",
        "instrumentFarmListLiveData",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lkotlin/collections/ArrayList;",
        "getInstrumentFarmListLiveData",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "isCardEnabled",
        "",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "",
        "Lcom/cred/pay/repository/models/PaymentMethod;",
        "getObserver",
        "()Landroidx/lifecycle/Observer;",
        "parentViewModel",
        "Lcom/cred/pay/ui/PaymentContainerViewModel;",
        "scrollToTopPaymentFarm",
        "getScrollToTopPaymentFarm",
        "()Z",
        "setScrollToTopPaymentFarm",
        "(Z)V",
        "sentPaymentFarmScreenLoadEventDone",
        "init",
        "",
        "sentPaymentFarmScreenLoad",
        "setPaymentList",
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
.field final ICustomTabsCallback:Lo/MediaControllerCompatApi24$TransportControls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaControllerCompatApi24$TransportControls<",
            "Ljava/util/ArrayList<",
            "Lo/StaggeredGridLayoutManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Z

.field private final asBinder:Landroid/app/Application;

.field private asInterface:Z

.field final extraCallback:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/PaymentMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Lo/MenuItemHoverListener;

.field onNavigationEvent:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lo/updateTab;->asBinder:Landroid/app/Application;

    .line 20
    new-instance p1, Lo/MediaControllerCompatApi24$TransportControls;

    invoke-direct {p1}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    iput-object p1, p0, Lo/updateTab;->ICustomTabsCallback:Lo/MediaControllerCompatApi24$TransportControls;

    .line 32
    new-instance p1, Lo/updateTab$onMessageChannelReady;

    invoke-direct {p1, p0}, Lo/updateTab$onMessageChannelReady;-><init>(Lo/updateTab;)V

    check-cast p1, Lo/setPlaybackToRemote;

    iput-object p1, p0, Lo/updateTab;->extraCallback:Lo/setPlaybackToRemote;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/updateTab;)V
    .locals 25

    move-object/from16 v0, p0

    .line 8038
    iget-object v1, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v1, :cond_1

    .line 9044
    iget-object v1, v1, Lo/MenuItemHoverListener;->asInterface:Lo/setActive;

    if-eqz v1, :cond_1

    .line 9320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 9321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8038
    :goto_0
    check-cast v1, Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 8039
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_57

    .line 8042
    check-cast v1, Ljava/lang/Iterable;

    .line 8211
    instance-of v10, v1, Ljava/util/Collection;

    const-string v11, "UPI_CRED"

    const/4 v12, 0x1

    if-eqz v10, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 8212
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cred/pay/repository/models/PaymentMethod;

    .line 10027
    iget-object v5, v4, Lcom/cred/pay/repository/models/PaymentMethod;->ICustomTabsCallback:Ljava/lang/String;

    .line 8042
    invoke-static {v5, v11}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10028
    iget-object v4, v4, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v4, :cond_4

    .line 10037
    iget-boolean v4, v4, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    .line 8045
    :goto_3
    iget-object v3, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v3, :cond_6

    .line 11035
    iget-object v3, v3, Lo/MenuItemHoverListener;->ICustomTabsCallback:Lo/onMoveStarting$onNavigationEvent;

    move-object v15, v3

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    .line 8047
    :goto_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/cred/pay/repository/models/PaymentMethod;

    .line 12025
    iget-object v3, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onPostMessage:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 8048
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    .line 12026
    :goto_6
    iget-object v4, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    const-string v6, "NB"

    .line 8049
    invoke-static {v4, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x3

    const-string v7, "Count overflow has happened."

    const-string v8, ""

    const/4 v2, 0x4

    if-eqz v4, :cond_21

    .line 8050
    new-instance v4, Lo/createCacheKey;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v13

    invoke-direct {v4, v13}, Lo/createCacheKey;-><init>(Z)V

    invoke-virtual {v9, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-gt v3, v2, :cond_11

    .line 13025
    iget-object v4, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onPostMessage:Ljava/util/List;

    if-eqz v4, :cond_f

    .line 8053
    check-cast v4, Ljava/lang/Iterable;

    .line 8214
    instance-of v13, v4, Ljava/util/Collection;

    if-eqz v13, :cond_9

    move-object v13, v4

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_c

    .line 8216
    :cond_9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v13, 0x0

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Lo/isInputMethodNotNeeded;

    .line 14008
    iget-object v2, v2, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v2, :cond_a

    .line 14042
    iget-object v2, v2, Lcom/cred/pay/repository/models/Status;->onPostMessage:Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    .line 8052
    :goto_8
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    invoke-static {v2}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v2, 0x1

    :goto_a
    xor-int/2addr v2, v12

    if-eqz v2, :cond_e

    add-int/lit8 v13, v13, 0x1

    if-ltz v13, :cond_d

    goto :goto_b

    .line 14445
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_e
    :goto_b
    const/4 v2, 0x4

    goto :goto_7

    :cond_f
    :goto_c
    const/4 v13, 0x0

    :cond_10
    if-le v13, v12, :cond_12

    .line 15028
    :cond_11
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v2, :cond_13

    .line 15037
    iget-boolean v2, v2, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v2, :cond_12

    goto :goto_d

    :cond_12
    const/16 v21, 0x0

    goto :goto_e

    :cond_13
    :goto_d
    const/16 v21, 0x1

    .line 8054
    :goto_e
    new-instance v2, Lo/addTintListToCache;

    .line 16029
    iget-object v4, v5, Lcom/cred/pay/repository/models/PaymentMethod;->extraCallback:Ljava/lang/String;

    if-nez v4, :cond_14

    move-object/from16 v19, v8

    goto :goto_f

    :cond_14
    move-object/from16 v19, v4

    .line 17028
    :goto_f
    iget-object v4, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    const/16 v22, 0x0

    .line 18026
    iget-object v13, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v23, v13

    .line 8054
    invoke-direct/range {v18 .. v23}, Lo/addTintListToCache;-><init>(Ljava/lang/String;Lcom/cred/pay/repository/models/Status;ZZLjava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 18028
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v2, :cond_15

    .line 18045
    iget-object v2, v2, Lcom/cred/pay/repository/models/Status;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_15

    .line 19000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_10

    :cond_15
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_17

    .line 8059
    invoke-static {v2}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_11

    :cond_16
    const/4 v2, 0x0

    goto :goto_12

    :cond_17
    :goto_11
    const/4 v2, 0x1

    :goto_12
    if-nez v2, :cond_1a

    .line 8060
    new-instance v2, Lo/setAllowCollapse;

    .line 19028
    iget-object v4, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v4, :cond_18

    .line 19045
    iget-object v4, v4, Lcom/cred/pay/repository/models/Status;->onMessageChannelReady:Lo/getTargetScrollPosition;

    goto :goto_13

    :cond_18
    const/4 v4, 0x0

    :goto_13
    if-nez v4, :cond_19

    .line 8060
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 20000
    :cond_19
    iget-object v4, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 8060
    invoke-direct {v2, v4}, Lo/setAllowCollapse;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 20028
    :cond_1a
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v2, :cond_1b

    .line 20037
    iget-boolean v2, v2, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v2, :cond_21

    .line 21025
    :cond_1b
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onPostMessage:Ljava/util/List;

    .line 8063
    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_1d

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_14

    :cond_1c
    const/4 v2, 0x0

    goto :goto_15

    :cond_1d
    :goto_14
    const/4 v2, 0x1

    :goto_15
    if-nez v2, :cond_21

    if-ge v3, v6, :cond_1f

    .line 22025
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onPostMessage:Ljava/util/List;

    if-eqz v2, :cond_21

    .line 8065
    check-cast v2, Ljava/lang/Iterable;

    .line 8218
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/isInputMethodNotNeeded;

    .line 8066
    new-instance v4, Lo/getTintMode;

    invoke-direct {v4, v3}, Lo/getTintMode;-><init>(Lo/isInputMethodNotNeeded;)V

    invoke-virtual {v9, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 8219
    :cond_1e
    sget-object v2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    goto :goto_17

    .line 23025
    :cond_1f
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onPostMessage:Ljava/util/List;

    if-nez v2, :cond_20

    .line 23070
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v2, Ljava/util/List;

    .line 8070
    :cond_20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lo/addDrawableToCache;

    invoke-direct {v3, v2}, Lo/addDrawableToCache;-><init>(Ljava/util/List;)V

    invoke-virtual {v9, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 24026
    :cond_21
    :goto_17
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "CARD"

    .line 8074
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 24028
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v2, :cond_23

    .line 24037
    iget-boolean v2, v2, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v2, :cond_22

    goto :goto_18

    :cond_22
    const/4 v4, 0x0

    goto :goto_19

    :cond_23
    :goto_18
    const/4 v4, 0x1

    .line 8075
    :goto_19
    iput-boolean v4, v0, Lo/updateTab;->ICustomTabsCallback$Stub:Z

    .line 8076
    new-instance v2, Lo/createCacheKey;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    invoke-direct {v2, v3}, Lo/createCacheKey;-><init>(Z)V

    invoke-virtual {v9, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 8077
    new-instance v2, Lo/addTintListToCache;

    .line 25029
    iget-object v3, v5, Lcom/cred/pay/repository/models/PaymentMethod;->extraCallback:Ljava/lang/String;

    if-nez v3, :cond_24

    move-object/from16 v19, v8

    goto :goto_1a

    :cond_24
    move-object/from16 v19, v3

    .line 26028
    :goto_1a
    iget-object v3, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    const/16 v21, 0x0

    .line 27028
    iget-object v4, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v4, :cond_26

    .line 27037
    iget-boolean v4, v4, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v4, :cond_25

    goto :goto_1b

    :cond_25
    const/16 v22, 0x0

    goto :goto_1c

    :cond_26
    :goto_1b
    const/16 v22, 0x1

    .line 28026
    :goto_1c
    iget-object v4, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    .line 8077
    invoke-direct/range {v18 .. v23}, Lo/addTintListToCache;-><init>(Ljava/lang/String;Lcom/cred/pay/repository/models/Status;ZZLjava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 28028
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v2, :cond_27

    .line 28045
    iget-object v2, v2, Lcom/cred/pay/repository/models/Status;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_27

    .line 29000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1d

    :cond_27
    const/4 v2, 0x0

    :goto_1d
    if-eqz v2, :cond_29

    .line 8082
    invoke-static {v2}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_1e

    :cond_28
    const/4 v4, 0x0

    goto :goto_1f

    :cond_29
    :goto_1e
    const/4 v4, 0x1

    :goto_1f
    if-nez v4, :cond_2c

    .line 8083
    new-instance v2, Lo/setAllowCollapse;

    .line 29028
    iget-object v3, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v3, :cond_2a

    .line 29045
    iget-object v3, v3, Lcom/cred/pay/repository/models/Status;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_2a

    .line 30000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_20

    :cond_2a
    const/4 v3, 0x0

    :goto_20
    if-nez v3, :cond_2b

    .line 8083
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2b
    invoke-direct {v2, v3}, Lo/setAllowCollapse;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 30028
    :cond_2c
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v2, :cond_2d

    .line 30037
    iget-boolean v2, v2, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v2, :cond_2f

    .line 31025
    :cond_2d
    iget-object v2, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onPostMessage:Ljava/util/List;

    if-eqz v2, :cond_2f

    .line 8086
    check-cast v2, Ljava/lang/Iterable;

    .line 8220
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/isInputMethodNotNeeded;

    .line 8087
    new-instance v4, Lo/getTintMode;

    invoke-direct {v4, v3}, Lo/getTintMode;-><init>(Lo/isInputMethodNotNeeded;)V

    invoke-virtual {v9, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 8221
    :cond_2e
    sget-object v2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    :cond_2f
    const-string v2, "UPI"

    if-eqz v14, :cond_4c

    .line 31027
    iget-object v3, v5, Lcom/cred/pay/repository/models/PaymentMethod;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v3, :cond_30

    .line 32026
    iget-object v3, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    .line 8094
    :cond_30
    invoke-static {v3, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 8095
    iget-object v3, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v3, :cond_31

    .line 32034
    iget-object v3, v3, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    if-eqz v3, :cond_31

    .line 33028
    iget-object v3, v3, Lo/setDropDownGravity;->onMessageChannelReady:Ljava/util/ArrayList;

    goto :goto_22

    :cond_31
    const/4 v3, 0x0

    .line 8095
    :goto_22
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_33

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_23

    :cond_32
    const/4 v4, 0x0

    goto :goto_24

    :cond_33
    :goto_23
    const/4 v4, 0x1

    :goto_24
    if-nez v4, :cond_4c

    .line 8096
    iget-object v3, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v3, :cond_34

    .line 33034
    iget-object v3, v3, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    if-eqz v3, :cond_34

    .line 34028
    iget-object v3, v3, Lo/setDropDownGravity;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz v3, :cond_34

    .line 8096
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    goto :goto_25

    :cond_34
    const/4 v4, 0x0

    .line 8098
    :goto_25
    new-instance v3, Lo/createCacheKey;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v13

    invoke-direct {v3, v13}, Lo/createCacheKey;-><init>(Z)V

    invoke-virtual {v9, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    if-gt v4, v3, :cond_3d

    .line 8101
    iget-object v3, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v3, :cond_3b

    .line 34034
    iget-object v3, v3, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    if-eqz v3, :cond_3b

    .line 35028
    iget-object v3, v3, Lo/setDropDownGravity;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz v3, :cond_3b

    .line 8101
    check-cast v3, Ljava/lang/Iterable;

    .line 8222
    instance-of v13, v3, Ljava/util/Collection;

    if-eqz v13, :cond_35

    move-object v13, v3

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_35

    goto :goto_2b

    .line 8224
    :cond_35
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v13, 0x0

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    .line 36008
    iget-object v6, v6, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v6, :cond_36

    .line 36042
    iget-object v6, v6, Lcom/cred/pay/repository/models/Status;->onPostMessage:Ljava/lang/String;

    goto :goto_27

    :cond_36
    const/4 v6, 0x0

    .line 8100
    :goto_27
    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_38

    invoke-static {v6}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_37

    goto :goto_28

    :cond_37
    const/4 v6, 0x0

    goto :goto_29

    :cond_38
    :goto_28
    const/4 v6, 0x1

    :goto_29
    xor-int/2addr v6, v12

    if-eqz v6, :cond_3a

    add-int/lit8 v13, v13, 0x1

    if-ltz v13, :cond_39

    goto :goto_2a

    .line 36445
    :cond_39
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_3a
    :goto_2a
    const/4 v6, 0x3

    goto :goto_26

    :cond_3b
    :goto_2b
    const/4 v13, 0x0

    :cond_3c
    if-le v13, v12, :cond_3e

    .line 37028
    :cond_3d
    iget-object v3, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v3, :cond_3f

    .line 37037
    iget-boolean v3, v3, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v3, :cond_3e

    goto :goto_2c

    :cond_3e
    const/16 v22, 0x0

    goto :goto_2d

    :cond_3f
    :goto_2c
    const/16 v22, 0x1

    .line 8102
    :goto_2d
    new-instance v3, Lo/addTintListToCache;

    .line 38029
    iget-object v6, v5, Lcom/cred/pay/repository/models/PaymentMethod;->extraCallback:Ljava/lang/String;

    if-nez v6, :cond_40

    move-object/from16 v20, v8

    goto :goto_2e

    :cond_40
    move-object/from16 v20, v6

    .line 39028
    :goto_2e
    iget-object v6, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    const/16 v23, 0x0

    .line 40026
    iget-object v7, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v24, v7

    .line 8102
    invoke-direct/range {v19 .. v24}, Lo/addTintListToCache;-><init>(Ljava/lang/String;Lcom/cred/pay/repository/models/Status;ZZLjava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 40028
    iget-object v3, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v3, :cond_41

    .line 40045
    iget-object v3, v3, Lcom/cred/pay/repository/models/Status;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_41

    .line 41000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_2f

    :cond_41
    const/4 v3, 0x0

    :goto_2f
    if-eqz v3, :cond_43

    .line 8107
    invoke-static {v3}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_30

    :cond_42
    const/4 v3, 0x0

    goto :goto_31

    :cond_43
    :goto_30
    const/4 v3, 0x1

    :goto_31
    if-nez v3, :cond_46

    .line 8108
    new-instance v3, Lo/setAllowCollapse;

    .line 41028
    iget-object v6, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v6, :cond_44

    .line 41045
    iget-object v6, v6, Lcom/cred/pay/repository/models/Status;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_44

    .line 42000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_32

    :cond_44
    const/4 v6, 0x0

    :goto_32
    if-nez v6, :cond_45

    .line 8108
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_45
    invoke-direct {v3, v6}, Lo/setAllowCollapse;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 42028
    :cond_46
    iget-object v3, v5, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v3, :cond_47

    .line 42037
    iget-boolean v3, v3, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v3, :cond_4c

    :cond_47
    const/4 v3, 0x3

    if-ge v4, v3, :cond_49

    .line 8112
    iget-object v3, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v3, :cond_4c

    .line 43034
    iget-object v3, v3, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    if-eqz v3, :cond_4c

    .line 44028
    iget-object v3, v3, Lo/setDropDownGravity;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz v3, :cond_4c

    .line 8112
    check-cast v3, Ljava/lang/Iterable;

    .line 8226
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    .line 8113
    new-instance v6, Lo/getTintMode;

    check-cast v4, Lo/isInputMethodNotNeeded;

    invoke-direct {v6, v4}, Lo/getTintMode;-><init>(Lo/isInputMethodNotNeeded;)V

    invoke-virtual {v9, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 8227
    :cond_48
    sget-object v3, Lo/addWrites;->onPostMessage:Lo/addWrites;

    goto :goto_35

    .line 8116
    :cond_49
    iget-object v3, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v3, :cond_4a

    .line 44034
    iget-object v3, v3, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    if-eqz v3, :cond_4a

    .line 45028
    iget-object v3, v3, Lo/setDropDownGravity;->onMessageChannelReady:Ljava/util/ArrayList;

    goto :goto_34

    :cond_4a
    const/4 v3, 0x0

    .line 8116
    :goto_34
    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4b

    .line 45070
    sget-object v3, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v3, Ljava/util/List;

    .line 8117
    :cond_4b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v13, 0x0

    invoke-interface {v3, v13, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lo/addDrawableToCache;

    invoke-direct {v4, v3}, Lo/addDrawableToCache;-><init>(Ljava/util/List;)V

    invoke-virtual {v9, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_4c
    :goto_35
    const/4 v13, 0x0

    .line 46027
    :goto_36
    iget-object v3, v5, Lcom/cred/pay/repository/models/PaymentMethod;->ICustomTabsCallback:Ljava/lang/String;

    .line 8123
    invoke-static {v3, v11}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v10, :cond_4d

    .line 8228
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_55

    .line 8229
    :cond_4d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cred/pay/repository/models/PaymentMethod;

    .line 47027
    iget-object v6, v4, Lcom/cred/pay/repository/models/PaymentMethod;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v6, :cond_4f

    .line 48026
    iget-object v6, v4, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    .line 8125
    :cond_4f
    invoke-static {v6, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 8126
    iget-object v6, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v6, :cond_50

    .line 48034
    iget-object v6, v6, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    if-eqz v6, :cond_50

    .line 49031
    iget-object v6, v6, Lo/setDropDownGravity;->onPostMessage:Ljava/util/ArrayList;

    goto :goto_37

    :cond_50
    const/4 v6, 0x0

    .line 8126
    :goto_37
    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_52

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_51

    goto :goto_38

    :cond_51
    const/4 v6, 0x0

    goto :goto_39

    :cond_52
    :goto_38
    const/4 v6, 0x1

    :goto_39
    if-nez v6, :cond_54

    .line 50028
    iget-object v4, v4, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v4, :cond_53

    .line 50029
    iget-boolean v4, v4, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v4, :cond_54

    :cond_53
    const/4 v4, 0x1

    goto :goto_3a

    :cond_54
    const/4 v4, 0x0

    :goto_3a
    if-eqz v4, :cond_4e

    const/4 v4, 0x1

    goto :goto_3b

    :cond_55
    const/4 v4, 0x0

    .line 8129
    :goto_3b
    new-instance v2, Lo/createCacheKey;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    invoke-direct {v2, v3}, Lo/createCacheKey;-><init>(Z)V

    invoke-virtual {v9, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 8130
    sget-object v2, Lo/SearchView;->onPostMessage:Lo/SearchView;

    iget-object v8, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-nez v8, :cond_56

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_56
    move-object v3, v9

    move-object v6, v15

    move v7, v14

    invoke-static/range {v3 .. v8}, Lo/SearchView;->onMessageChannelReady(Ljava/util/ArrayList;ZLcom/cred/pay/repository/models/PaymentMethod;Lo/onMoveStarting$onNavigationEvent;ZLo/MenuItemHoverListener;)V

    goto/16 :goto_5

    .line 8134
    :cond_57
    iget-object v1, v0, Lo/updateTab;->ICustomTabsCallback:Lo/MediaControllerCompatApi24$TransportControls;

    invoke-virtual {v1, v9}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 8135
    invoke-direct/range {p0 .. p0}, Lo/updateTab;->onPostMessage()V

    return-void
.end method

.method private final onPostMessage()V
    .locals 25

    move-object/from16 v0, p0

    .line 140
    iget-boolean v1, v0, Lo/updateTab;->asInterface:Z

    if-nez v1, :cond_f

    iget-object v1, v0, Lo/updateTab;->ICustomTabsCallback:Lo/MediaControllerCompatApi24$TransportControls;

    .line 1320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_f

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 150
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 152
    new-instance v17, Lo/updateTab$ICustomTabsCallback;

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object v6, v15

    move-object v7, v2

    move-object v8, v11

    move-object v9, v14

    move-object v10, v13

    invoke-direct/range {v4 .. v10}, Lo/updateTab$ICustomTabsCallback;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v4, v17

    check-cast v4, Lo/onDisconnectSetValue;

    .line 175
    iget-object v5, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v5, :cond_1

    .line 2034
    iget-object v5, v5, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    if-eqz v5, :cond_1

    .line 3028
    iget-object v5, v5, Lo/setDropDownGravity;->onMessageChannelReady:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 175
    :goto_1
    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    .line 3070
    sget-object v5, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v5, Ljava/util/List;

    .line 175
    :cond_2
    check-cast v5, Ljava/lang/Iterable;

    .line 231
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    .line 3212
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "upi_app_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/cred/pay/repository/models/UpiAppsInstrument;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-virtual {v12, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 179
    :cond_3
    iget-object v5, v0, Lo/updateTab;->ICustomTabsCallback:Lo/MediaControllerCompatApi24$TransportControls;

    .line 3320
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v6, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v5, v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, v3

    .line 179
    :goto_3
    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    check-cast v5, Ljava/lang/Iterable;

    .line 233
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/StaggeredGridLayoutManager;

    .line 180
    instance-of v7, v6, Lo/getTintMode;

    if-eqz v7, :cond_6

    .line 181
    check-cast v6, Lo/getTintMode;

    .line 4014
    iget-object v6, v6, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 181
    invoke-interface {v4, v6}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 182
    :cond_6
    instance-of v7, v6, Lo/addDrawableToCache;

    if-eqz v7, :cond_5

    .line 183
    check-cast v6, Lo/addDrawableToCache;

    .line 4022
    iget-object v6, v6, Lo/addDrawableToCache;->onMessageChannelReady:Ljava/util/List;

    .line 183
    check-cast v6, Ljava/lang/Iterable;

    .line 234
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/isInputMethodNotNeeded;

    .line 184
    invoke-interface {v4, v7}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 189
    :cond_7
    check-cast v1, Ljava/util/Map;

    iget-boolean v4, v0, Lo/updateTab;->ICustomTabsCallback$Stub:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "is_card_enabled"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v5, "show_upi_apps_as_separate"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/Iterable;

    const-string v2, ","

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/CharSequence;

    const-string v4, "["

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/CharSequence;

    const-string v5, "]"

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/CharSequence;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x38

    invoke-static/range {v17 .. v24}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/onDisconnectSetValue;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "order_of_intruments_cred_upi"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/Iterable;

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v24}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/onDisconnectSetValue;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "set_mpin_flag"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-object/from16 v17, v12

    check-cast v17, Ljava/lang/Iterable;

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v24}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/onDisconnectSetValue;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "order_of_intruments_upi_apps"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-object/from16 v17, v13

    check-cast v17, Ljava/lang/Iterable;

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v24}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/onDisconnectSetValue;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "order_of_intruments_NB"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-object/from16 v17, v14

    check-cast v17, Ljava/lang/Iterable;

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v24}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/onDisconnectSetValue;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "order_of_intruments_card"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v4, v16

    check-cast v4, Ljava/util/Map;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "alerts_list"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v2, Lorg/json/JSONObject;

    check-cast v15, Ljava/util/Map;

    invoke-direct {v2, v15}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "banner_list"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v2, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v2, :cond_8

    .line 4033
    iget-object v2, v2, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v2, :cond_8

    .line 5011
    iget-object v3, v2, Lcom/cred/pay/repository/models/PaymentOrder;->extraCallback:Ljava/lang/String;

    :cond_8
    const-string v2, "order_id"

    .line 198
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v2, Lo/requireArguments;

    iget-object v3, v0, Lo/updateTab;->asBinder:Landroid/app/Application;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Lo/requireArguments;-><init>(Landroid/content/Context;)V

    .line 5150
    iget-boolean v3, v2, Lo/requireArguments;->onMessageChannelReady:Z

    const/4 v4, 0x1

    if-nez v3, :cond_a

    .line 5154
    iget-boolean v2, v2, Lo/requireArguments;->onNavigationEvent:Z

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v2, 0x1

    .line 200
    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "sim_detected_flag"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v2, v0, Lo/updateTab;->onMessageChannelReady:Lo/MenuItemHoverListener;

    if-eqz v2, :cond_b

    .line 6033
    iget-object v2, v2, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v2, :cond_b

    .line 7019
    iget-object v2, v2, Lcom/cred/pay/repository/models/PaymentOrder;->onMessageChannelReady:Ljava/util/HashMap;

    if-nez v2, :cond_c

    .line 7040
    :cond_b
    sget-object v2, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v2, :cond_e

    :cond_c
    check-cast v2, Ljava/util/Map;

    .line 203
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 202
    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "key"

    .line 204
    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    const-string v2, "payment_farm_screen_load"

    .line 206
    invoke-static {v2, v1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    iput-boolean v4, v0, Lo/updateTab;->asInterface:Z

    goto :goto_9

    .line 7040
    :cond_e
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_9
    return-void
.end method
