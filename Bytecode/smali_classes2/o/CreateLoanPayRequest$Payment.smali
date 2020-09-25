.class final synthetic Lo/CreateLoanPayRequest$Payment;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final ICustomTabsCallback$Stub:Lo/StatementPeriod;

.field private final asBinder:Lo/GameCta;

.field private final asInterface:Lo/DataListJsonAdapter;

.field private final extraCallback:Ljava/lang/String;

.field private final getInterfaceDescriptor:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Z

.field private final onPostMessage:Lo/SizeFilterJsonAdapter;

.field private final onRelationshipValidationResult:Lo/LoginResponse;

.field private final onTransact:Lo/setCanReverse;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CreateLoanPayRequest$Payment;->ICustomTabsCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/CreateLoanPayRequest$Payment;->onPostMessage:Lo/SizeFilterJsonAdapter;

    iput-object p3, p0, Lo/CreateLoanPayRequest$Payment;->extraCallback:Ljava/lang/String;

    iput-boolean p4, p0, Lo/CreateLoanPayRequest$Payment;->onMessageChannelReady:Z

    iput-boolean p5, p0, Lo/CreateLoanPayRequest$Payment;->onNavigationEvent:Z

    iput-object p6, p0, Lo/CreateLoanPayRequest$Payment;->asBinder:Lo/GameCta;

    iput-object p7, p0, Lo/CreateLoanPayRequest$Payment;->asInterface:Lo/DataListJsonAdapter;

    iput-object p8, p0, Lo/CreateLoanPayRequest$Payment;->onTransact:Lo/setCanReverse;

    iput-object p9, p0, Lo/CreateLoanPayRequest$Payment;->onRelationshipValidationResult:Lo/LoginResponse;

    iput-object p10, p0, Lo/CreateLoanPayRequest$Payment;->ICustomTabsCallback$Stub:Lo/StatementPeriod;

    iput-object p11, p0, Lo/CreateLoanPayRequest$Payment;->getInterfaceDescriptor:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lo/CreateLoanPayRequest$Payment;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v1, p0, Lo/CreateLoanPayRequest$Payment;->onPostMessage:Lo/SizeFilterJsonAdapter;

    iget-object v2, p0, Lo/CreateLoanPayRequest$Payment;->extraCallback:Ljava/lang/String;

    iget-boolean v3, p0, Lo/CreateLoanPayRequest$Payment;->onMessageChannelReady:Z

    iget-boolean v11, p0, Lo/CreateLoanPayRequest$Payment;->onNavigationEvent:Z

    iget-object v5, p0, Lo/CreateLoanPayRequest$Payment;->asBinder:Lo/GameCta;

    iget-object v6, p0, Lo/CreateLoanPayRequest$Payment;->asInterface:Lo/DataListJsonAdapter;

    iget-object v7, p0, Lo/CreateLoanPayRequest$Payment;->onTransact:Lo/setCanReverse;

    iget-object v8, p0, Lo/CreateLoanPayRequest$Payment;->onRelationshipValidationResult:Lo/LoginResponse;

    iget-object v9, p0, Lo/CreateLoanPayRequest$Payment;->ICustomTabsCallback$Stub:Lo/StatementPeriod;

    iget-object v10, p0, Lo/CreateLoanPayRequest$Payment;->getInterfaceDescriptor:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move v4, v11

    invoke-static/range {v0 .. v10}, Lo/CreateLoanPayRequest_ItemJsonAdapter;->extraCallback(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)Lo/CreateLoanPayRequest_ItemJsonAdapter;

    move-result-object v0

    new-instance v1, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-direct {v1, v0}, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    new-instance v2, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v2, v1, v11}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)V

    new-instance v3, Lo/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v3, v1}, Lo/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    invoke-virtual {v0, v3}, Lo/CreateLoanPayRequest_ItemJsonAdapter;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v2}, Lo/CreateLoanPayRequestJsonAdapter;->onPostMessage(Lo/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;)V

    invoke-virtual {v0, v2}, Lo/CreateLoanPayRequestJsonAdapter;->onPostMessage(Lo/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;)V

    invoke-virtual {v0, v2}, Lo/CreateLoanPayRequestJsonAdapter;->onNavigationEvent(Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;)V

    invoke-virtual {v0, v2}, Lo/CreateLoanPayRequestJsonAdapter;->onNavigationEvent(Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;)V

    invoke-virtual {v0, v2}, Lo/CreateLoanPayRequest_ItemJsonAdapter;->onPostMessage(Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;)V

    return-object v1
.end method
