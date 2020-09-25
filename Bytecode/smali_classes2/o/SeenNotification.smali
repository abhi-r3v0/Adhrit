.class public final Lo/SeenNotification;
.super Ljava/lang/Object;

# interfaces
.implements Lo/NotificationSeenAckRequestBody;
.implements Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private final onMessageChannelReady:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/GameCta;Lo/StatementPeriod;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarg;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SeenNotification;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub()Lo/setCtaState$default;

    invoke-static {}, Lo/SizeFilterJsonAdapter;->ICustomTabsCallback()Lo/SizeFilterJsonAdapter;

    move-result-object v1

    invoke-static {}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->onPostMessage()Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-result-object v10

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lo/setCtaState$default;->ICustomTabsCallback(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object p1

    iput-object p1, p0, Lo/SeenNotification;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/SeenNotification;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    .locals 0

    iget-object p0, p0, Lo/SeenNotification;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    return-object p0
.end method

.method private static onPostMessage(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/SeenNotification;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lo/OnboardMachineInternalFragment$onViewCreated$3$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, p0, p1}, Lo/OnboardMachineInternalFragment$onViewCreated$3$1$$special$$inlined$executeOnResume$1;-><init>(Lo/SeenNotification;Ljava/lang/String;)V

    invoke-static {v0}, Lo/SeenNotification;->onPostMessage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/NotificationsResponseJsonAdapter;->ICustomTabsCallback(Lo/NotificationSeenAckRequestBody;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/PlutusOrderJsonAdapter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/SeenNotification;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    new-instance v1, Lo/OnboardMachineInternalFragment$onViewCreated$3$3$$special$$inlined$executeOnResume$1;

    invoke-direct {v1, p2}, Lo/OnboardMachineInternalFragment$onViewCreated$3$3$$special$$inlined$executeOnResume$1;-><init>(Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    invoke-interface {v0, p1, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Lo/component21;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/NotificationsResponseJsonAdapter;->onMessageChannelReady(Lo/NotificationSeenAckRequestBody;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onMessageChannelReady()Lo/PlutusOrder;
    .locals 1

    new-instance v0, Lo/OrderJsonAdapter;

    invoke-direct {v0, p0}, Lo/OrderJsonAdapter;-><init>(Lo/PlutusOrderJsonAdapter;)V

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lo/NewAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {v0, p0, p1}, Lo/NewAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Lo/SeenNotification;Ljava/lang/String;)V

    invoke-static {v0}, Lo/SeenNotification;->onPostMessage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lo/pop;

    invoke-direct {v0, p0, p1}, Lo/pop;-><init>(Lo/SeenNotification;Ljava/lang/String;)V

    invoke-static {v0}, Lo/SeenNotification;->onPostMessage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/NotificationsResponseJsonAdapter;->ICustomTabsCallback(Lo/NotificationSeenAckRequestBody;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/SeenNotification;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->destroy()V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lo/OnboardMachineInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, p0, p1}, Lo/OnboardMachineInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;-><init>(Lo/SeenNotification;Ljava/lang/String;)V

    invoke-static {v0}, Lo/SeenNotification;->onPostMessage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/NotificationsResponseJsonAdapter;->extraCallback(Lo/NotificationSeenAckRequestBody;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/PlutusOrderJsonAdapter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/SeenNotification;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    new-instance v1, Lo/withObject;

    invoke-direct {v1, p0, p2}, Lo/withObject;-><init>(Lo/SeenNotification;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    invoke-interface {v0, p1, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage(Lo/OnboardCardsData;)V
    .locals 1

    iget-object v0, p0, Lo/SeenNotification;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lo/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/OnboardCardsData;)Lo/FileUploadResponseJsonAdapter;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SizeFilter;->onMessageChannelReady(Lo/FileUploadResponseJsonAdapter;)V

    return-void
.end method
