.class public final Lo/SearchView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JR\u0010\u0007\u001a\u00020\u00082\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000eJ\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/cred/pay/ui/upi/UpiHelper;",
        "",
        "()V",
        "CRED_UPI_APP_PACKAGE_NAME",
        "",
        "getCRED_UPI_APP_PACKAGE_NAME",
        "()Ljava/lang/String;",
        "addUpiListItems",
        "",
        "list",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lkotlin/collections/ArrayList;",
        "upiAppsAvailable",
        "",
        "paymentMethod",
        "Lcom/cred/pay/repository/models/PaymentMethod;",
        "upiResponse",
        "Lcom/dreamplug/upi/UpiPaymentData$UpiAccountResult;",
        "showUpiAppsAsSeparateSection",
        "viewModel",
        "Lcom/cred/pay/ui/PaymentContainerViewModel;",
        "showHeader",
        "getPackageIcon",
        "Landroid/graphics/drawable/Drawable;",
        "packageName",
        "context",
        "Landroid/content/Context;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final ICustomTabsCallback:Ljava/lang/String; = "UPI_CRED_APP"

.field public static final onPostMessage:Lo/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/SearchView;

    invoke-direct {v0}, Lo/SearchView;-><init>()V

    sput-object v0, Lo/SearchView;->onPostMessage:Lo/SearchView;

    const-string v0, "UPI_CRED_APP"

    .line 15
    sput-object v0, Lo/SearchView;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lo/SearchView;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public static extraCallback(Ljava/util/ArrayList;ZLcom/cred/pay/repository/models/PaymentMethod;Lo/onMoveStarting$onNavigationEvent;ZLo/MenuItemHoverListener;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/StaggeredGridLayoutManager;",
            ">;Z",
            "Lcom/cred/pay/repository/models/PaymentMethod;",
            "Lo/onMoveStarting$onNavigationEvent;",
            "Z",
            "Lo/MenuItemHoverListener;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-string v4, "list"

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "paymentMethod"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "viewModel"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v4, Lo/onChangeStarting;->onPostMessage:Lo/onChangeStarting;

    invoke-static {}, Lo/onChangeStarting;->ICustomTabsCallback()Lcom/dreamplug/upi/UpiData;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/dreamplug/upi/UpiData;->getUpiBankListLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1320
    iget-object v4, v4, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v6, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 25
    :goto_0
    check-cast v4, Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_2

    if-nez p4, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 2028
    :goto_2
    iget-object v9, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    const-string v10, ""

    if-eqz v9, :cond_a

    .line 2037
    iget-boolean v9, v9, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v9, :cond_3

    goto :goto_5

    .line 74
    :cond_3
    new-instance v2, Lo/addTintListToCache;

    .line 20029
    iget-object v3, v1, Lcom/cred/pay/repository/models/PaymentMethod;->extraCallback:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v12, v10

    goto :goto_3

    :cond_4
    move-object v12, v3

    .line 21028
    :goto_3
    iget-object v13, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 22026
    iget-object v3, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    const/16 v17, 0x1

    move-object v11, v2

    move-object/from16 v16, v3

    .line 74
    invoke-direct/range {v11 .. v17}, Lo/addTintListToCache;-><init>(Ljava/lang/String;Lcom/cred/pay/repository/models/Status;ZZLjava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 22028
    iget-object v2, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v2, :cond_5

    .line 22045
    iget-object v2, v2, Lcom/cred/pay/repository/models/Status;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_5

    .line 23000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_5
    move-object v2, v5

    :goto_4
    if-eqz v2, :cond_6

    .line 80
    invoke-static {v2}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v6, 0x1

    :cond_7
    if-nez v6, :cond_24

    .line 81
    new-instance v2, Lo/setAllowCollapse;

    .line 23028
    iget-object v1, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v1, :cond_8

    .line 23045
    iget-object v1, v1, Lcom/cred/pay/repository/models/Status;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_8

    .line 24000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    :cond_8
    if-nez v5, :cond_9

    .line 81
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    invoke-direct {v2, v5}, Lo/setAllowCollapse;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_a
    :goto_5
    if-eqz v2, :cond_24

    .line 2259
    iget-object v9, v2, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v9, :cond_f

    .line 3259
    iget-object v3, v2, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v3, :cond_b

    .line 4135
    iget-object v3, v3, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_6

    :cond_b
    move-object v3, v5

    :goto_6
    const-string v4, "NO_PERMISSION"

    .line 31
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 32
    new-instance v2, Lo/ScrollingTabContainerView;

    .line 5028
    iget-object v1, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    .line 32
    invoke-direct {v2, v7, v8, v1}, Lo/ScrollingTabContainerView;-><init>(IZLcom/cred/pay/repository/models/Status;)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 5259
    :cond_c
    iget-object v2, v2, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v2, :cond_d

    .line 6135
    iget-object v5, v2, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    :cond_d
    const-string v2, "D001"

    .line 33
    invoke-static {v5, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 34
    new-instance v2, Lo/ScrollingTabContainerView;

    const/4 v3, 0x4

    .line 7028
    iget-object v1, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    .line 34
    invoke-direct {v2, v3, v1}, Lo/ScrollingTabContainerView;-><init>(ILcom/cred/pay/repository/models/Status;)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 36
    :cond_e
    new-instance v2, Lo/ScrollingTabContainerView;

    const/4 v3, 0x3

    .line 8028
    iget-object v1, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    .line 36
    invoke-direct {v2, v3, v8, v1}, Lo/ScrollingTabContainerView;-><init>(IZLcom/cred/pay/repository/models/Status;)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 8258
    :cond_f
    iget-object v9, v2, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz v9, :cond_24

    .line 9258
    iget-object v9, v2, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz v9, :cond_10

    .line 10011
    iget-object v9, v9, Lcom/cred/pay/repository/models/UpiAccountResponse;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_7

    :cond_10
    move-object v9, v5

    :goto_7
    const-string/jumbo v11, "true"

    .line 39
    invoke-static {v9, v11}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 10258
    iget-object v9, v2, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz v9, :cond_11

    .line 11013
    iget-object v9, v9, Lcom/cred/pay/repository/models/UpiAccountResponse;->extraCallback:Ljava/util/List;

    goto :goto_8

    :cond_11
    move-object v9, v5

    .line 40
    :goto_8
    check-cast v9, Ljava/util/Collection;

    if-eqz v9, :cond_13

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_9

    :cond_12
    const/4 v9, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    const/4 v9, 0x1

    :goto_a
    if-eqz v9, :cond_14

    .line 41
    new-instance v2, Lo/ScrollingTabContainerView;

    const/4 v3, 0x2

    .line 11028
    iget-object v1, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    .line 41
    invoke-direct {v2, v3, v1}, Lo/ScrollingTabContainerView;-><init>(ILcom/cred/pay/repository/models/Status;)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_14
    if-eqz p6, :cond_1d

    .line 45
    new-instance v9, Lo/addTintListToCache;

    .line 11029
    iget-object v11, v1, Lcom/cred/pay/repository/models/PaymentMethod;->extraCallback:Ljava/lang/String;

    if-nez v11, :cond_15

    move-object v12, v10

    goto :goto_b

    :cond_15
    move-object v12, v11

    .line 12028
    :goto_b
    iget-object v13, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    const/4 v14, 0x0

    .line 13028
    iget-object v10, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v10, :cond_17

    .line 13037
    iget-boolean v10, v10, Lcom/cred/pay/repository/models/Status;->extraCallback:Z

    if-eqz v10, :cond_16

    goto :goto_c

    :cond_16
    const/4 v15, 0x0

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v15, 0x1

    .line 14026
    :goto_d
    iget-object v10, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    const/16 v17, 0x1

    move-object v11, v9

    move-object/from16 v16, v10

    .line 45
    invoke-direct/range {v11 .. v17}, Lo/addTintListToCache;-><init>(Ljava/lang/String;Lcom/cred/pay/repository/models/Status;ZZLjava/lang/String;Z)V

    invoke-virtual {v0, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 14028
    iget-object v9, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v9, :cond_18

    .line 14045
    iget-object v9, v9, Lcom/cred/pay/repository/models/Status;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_18

    .line 15000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_18
    move-object v9, v5

    :goto_e
    if-eqz v9, :cond_1a

    .line 52
    invoke-static {v9}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_f

    :cond_19
    const/4 v7, 0x0

    :cond_1a
    :goto_f
    if-nez v7, :cond_1d

    .line 53
    new-instance v7, Lo/setAllowCollapse;

    .line 15028
    iget-object v1, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    if-eqz v1, :cond_1b

    .line 15045
    iget-object v1, v1, Lcom/cred/pay/repository/models/Status;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_1b

    .line 16000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_10

    :cond_1b
    move-object v1, v5

    :goto_10
    if-nez v1, :cond_1c

    .line 53
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1c
    invoke-direct {v7, v1}, Lo/setAllowCollapse;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 16258
    :cond_1d
    iget-object v1, v2, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz v1, :cond_22

    .line 57
    invoke-virtual {v1}, Lcom/cred/pay/repository/models/UpiAccountResponse;->onPostMessage()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 101
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cred/pay/repository/models/VpaAccount;

    .line 58
    new-instance v7, Lcom/cred/pay/repository/models/CredUpiInstrument;

    const/16 v9, 0x1e

    invoke-direct {v7, v2, v9}, Lcom/cred/pay/repository/models/CredUpiInstrument;-><init>(Lcom/cred/pay/repository/models/VpaAccount;I)V

    if-eqz v4, :cond_20

    .line 61
    move-object v9, v4

    check-cast v9, Ljava/lang/Iterable;

    .line 102
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;

    .line 17048
    iget-object v12, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 17063
    iget-object v12, v12, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 60
    invoke-virtual {v11}, Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    goto :goto_12

    :cond_1f
    move-object v10, v5

    .line 103
    :goto_12
    check-cast v10, Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;

    if-eqz v10, :cond_20

    invoke-virtual {v10}, Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;->getLogo_url()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_20
    move-object v2, v5

    .line 17270
    :goto_13
    iput-object v2, v7, Lcom/cred/pay/repository/models/CredUpiInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 18269
    iget-object v2, v7, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v2, :cond_21

    .line 19048
    iget-object v2, v2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v2, :cond_21

    .line 19063
    iget-object v2, v2, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    goto :goto_14

    :cond_21
    move-object v2, v5

    .line 62
    :goto_14
    invoke-virtual {v3, v2}, Lo/MenuItemHoverListener;->extraCallback(Ljava/lang/String;)Lcom/cred/pay/repository/models/Status;

    move-result-object v2

    .line 20008
    iput-object v2, v7, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    .line 63
    new-instance v2, Lo/getTintMode;

    check-cast v7, Lo/isInputMethodNotNeeded;

    invoke-direct {v2, v7}, Lo/getTintMode;-><init>(Lo/isInputMethodNotNeeded;)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_22
    :goto_15
    if-eqz v8, :cond_24

    .line 67
    new-instance v1, Lo/setTabSelected;

    invoke-direct {v1, v6}, Lo/setTabSelected;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 69
    :cond_23
    new-instance v2, Lo/ScrollingTabContainerView;

    .line 20028
    iget-object v1, v1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    .line 69
    invoke-direct {v2, v7, v8, v1}, Lo/ScrollingTabContainerView;-><init>(IZLcom/cred/pay/repository/models/Status;)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_24
    :goto_16
    return-void
.end method

.method public static synthetic onMessageChannelReady(Ljava/util/ArrayList;ZLcom/cred/pay/repository/models/PaymentMethod;Lo/onMoveStarting$onNavigationEvent;ZLo/MenuItemHoverListener;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 24
    invoke-static/range {v0 .. v6}, Lo/SearchView;->extraCallback(Ljava/util/ArrayList;ZLcom/cred/pay/repository/models/PaymentMethod;Lo/onMoveStarting$onNavigationEvent;ZLo/MenuItemHoverListener;Z)V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 91
    sget-object v2, Lo/SearchView;->ICustomTabsCallback:Ljava/lang/String;

    if-nez p0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 24056
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 90
    :cond_2
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method
