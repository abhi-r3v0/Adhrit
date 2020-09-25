.class final synthetic Lo/setCtaState;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Footer$$Parcelable;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Lo/GameCta;

.field private final onMessageChannelReady:Lo/DataListJsonAdapter;

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:Lo/StatementPeriod;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/GameCta;Lo/DataListJsonAdapter;Lo/StatementPeriod;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCtaState;->onNavigationEvent:Landroid/content/Context;

    iput-object p2, p0, Lo/setCtaState;->extraCallback:Lo/GameCta;

    iput-object p3, p0, Lo/setCtaState;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iput-object p4, p0, Lo/setCtaState;->onPostMessage:Lo/StatementPeriod;

    iput-object p5, p0, Lo/setCtaState;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 11

    iget-object v0, p0, Lo/setCtaState;->onNavigationEvent:Landroid/content/Context;

    iget-object v5, p0, Lo/setCtaState;->extraCallback:Lo/GameCta;

    iget-object v6, p0, Lo/setCtaState;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v9, p0, Lo/setCtaState;->onPostMessage:Lo/StatementPeriod;

    iget-object p1, p0, Lo/setCtaState;->ICustomTabsCallback:Ljava/lang/String;

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

    invoke-static/range {v0 .. v10}, Lo/setCtaState$default;->ICustomTabsCallback(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v0

    invoke-static {v0}, Lo/SubProvider;->onMessageChannelReady(Ljava/lang/Object;)Lo/SubProvider;

    move-result-object v1

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v2

    new-instance v3, Lo/getMeta;

    invoke-direct {v3, v1}, Lo/getMeta;-><init>(Lo/SubProvider;)V

    invoke-interface {v2, v3}, Lo/SizeFilter;->extraCallback(Lo/FileUploadConfigJsonAdapter;)V

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
