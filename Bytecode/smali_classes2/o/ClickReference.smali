.class final synthetic Lo/ClickReference;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final ICustomTabsCallback$Stub:Lo/DataListJsonAdapter;

.field private final asBinder:Lo/GameCta;

.field private final asInterface:Lo/StatementPeriod;

.field private final extraCallback:Lo/SizeFilterJsonAdapter;

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Z

.field private final onRelationshipValidationResult:Lo/setCanReverse;

.field private final onTransact:Lo/LoginResponse;

.field private final warmup:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ClickReference;->ICustomTabsCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/ClickReference;->extraCallback:Lo/SizeFilterJsonAdapter;

    iput-object p3, p0, Lo/ClickReference;->onNavigationEvent:Ljava/lang/String;

    iput-boolean p4, p0, Lo/ClickReference;->onPostMessage:Z

    iput-boolean p5, p0, Lo/ClickReference;->onMessageChannelReady:Z

    iput-object p6, p0, Lo/ClickReference;->asBinder:Lo/GameCta;

    iput-object p7, p0, Lo/ClickReference;->ICustomTabsCallback$Stub:Lo/DataListJsonAdapter;

    iput-object p8, p0, Lo/ClickReference;->onRelationshipValidationResult:Lo/setCanReverse;

    iput-object p9, p0, Lo/ClickReference;->onTransact:Lo/LoginResponse;

    iput-object p10, p0, Lo/ClickReference;->asInterface:Lo/StatementPeriod;

    iput-object p11, p0, Lo/ClickReference;->warmup:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lo/ClickReference;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v1, p0, Lo/ClickReference;->extraCallback:Lo/SizeFilterJsonAdapter;

    iget-object v2, p0, Lo/ClickReference;->onNavigationEvent:Ljava/lang/String;

    iget-boolean v3, p0, Lo/ClickReference;->onPostMessage:Z

    iget-boolean v11, p0, Lo/ClickReference;->onMessageChannelReady:Z

    iget-object v5, p0, Lo/ClickReference;->asBinder:Lo/GameCta;

    iget-object v6, p0, Lo/ClickReference;->ICustomTabsCallback$Stub:Lo/DataListJsonAdapter;

    iget-object v7, p0, Lo/ClickReference;->onRelationshipValidationResult:Lo/setCanReverse;

    iget-object v8, p0, Lo/ClickReference;->onTransact:Lo/LoginResponse;

    iget-object v9, p0, Lo/ClickReference;->asInterface:Lo/StatementPeriod;

    iget-object v10, p0, Lo/ClickReference;->warmup:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    new-instance v12, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    move v4, v11

    invoke-static/range {v0 .. v10}, Lo/CredCurrencyResponse;->extraCallback(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)Lo/CredCurrencyResponse;

    move-result-object v0

    invoke-direct {v12, v0}, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v0

    invoke-virtual {v0, v12, v11}, Lo/getAccount_number;->ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    move-result-object v0

    invoke-interface {v12, v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lo/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, v12}, Lo/CardLinkFragment$linkResultStateObserver$1$1$$special$$inlined$executeOnResume$1;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    invoke-interface {v12, v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v12
.end method
