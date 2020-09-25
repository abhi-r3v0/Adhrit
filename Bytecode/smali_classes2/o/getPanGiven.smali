.class final Lo/getPanGiven;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/getCounts;

.field private final synthetic extraCallback:Lo/RawBankAccountJsonAdapter;

.field private final synthetic onPostMessage:Lo/TrackBalanceConfigsJsonAdapter;


# direct methods
.method constructor <init>(Lo/RawBankAccountJsonAdapter;Lo/getCounts;Lo/TrackBalanceConfigsJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/getPanGiven;->extraCallback:Lo/RawBankAccountJsonAdapter;

    iput-object p2, p0, Lo/getPanGiven;->ICustomTabsCallback:Lo/getCounts;

    iput-object p3, p0, Lo/getPanGiven;->onPostMessage:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    :try_start_0
    iget-object v0, p0, Lo/getPanGiven;->extraCallback:Lo/RawBankAccountJsonAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getPanGiven;->extraCallback:Lo/RawBankAccountJsonAdapter;

    invoke-interface {v0}, Lo/RawBankAccountJsonAdapter;->newSession()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lo/getPanGiven;->extraCallback:Lo/RawBankAccountJsonAdapter;

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/RawBankAccountJsonAdapter;->onMessageChannelReady(Lo/getEventName;)V

    iget-object p1, p0, Lo/getPanGiven;->ICustomTabsCallback:Lo/getCounts;

    iget-object p1, p1, Lo/getCounts;->onPostMessage:Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;

    invoke-virtual {p1}, Lo/DeviceAttrResponse;->u_()V

    return-void

    :cond_0
    invoke-static {p1}, Lo/setCreditScoreExist;->onPostMessage(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    return-void

    :cond_1
    iget-object v0, p0, Lo/getPanGiven;->onPostMessage:Lo/TrackBalanceConfigsJsonAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/getPanGiven;->onPostMessage:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-interface {v0}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lo/getPanGiven;->onPostMessage:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/TrackBalanceConfigsJsonAdapter;->extraCallback(Lo/getEventName;)V

    iget-object p1, p0, Lo/getPanGiven;->ICustomTabsCallback:Lo/getCounts;

    iget-object p1, p1, Lo/getCounts;->onPostMessage:Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;

    invoke-virtual {p1}, Lo/DeviceAttrResponse;->u_()V

    return-void

    :cond_2
    invoke-static {p1}, Lo/setCreditScoreExist;->onPostMessage(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unable to call handleClick on mapper"

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
