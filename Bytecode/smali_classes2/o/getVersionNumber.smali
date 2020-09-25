.class public final Lo/getVersionNumber;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setIdentifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setIdentifier<",
        "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/showGameDetailsOnLoad;

.field private final asBinder:Lo/setPanGiven;

.field private final asInterface:Lo/GameCta;

.field private final extraCallback:Lo/DataListJsonAdapter;

.field private onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:Lo/getDomesticTransactions;

.field private onTransact:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setPanGiven;Ljava/lang/String;Lo/GameCta;Lo/DataListJsonAdapter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Webview loading for native ads."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iput-object p1, p0, Lo/getVersionNumber;->onNavigationEvent:Landroid/content/Context;

    iput-object p2, p0, Lo/getVersionNumber;->asBinder:Lo/setPanGiven;

    iput-object p4, p0, Lo/getVersionNumber;->asInterface:Lo/GameCta;

    iput-object p5, p0, Lo/getVersionNumber;->extraCallback:Lo/DataListJsonAdapter;

    iput-object p3, p0, Lo/getVersionNumber;->onTransact:Ljava/lang/String;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub()Lo/setCtaState$default;

    iget-object p1, p0, Lo/getVersionNumber;->onNavigationEvent:Landroid/content/Context;

    iget-object p4, p0, Lo/getVersionNumber;->extraCallback:Lo/DataListJsonAdapter;

    sget-object p5, Lo/WinningTypes;->MediaDescriptionCompat$1:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p5}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    iget-object v0, p0, Lo/getVersionNumber;->asInterface:Lo/GameCta;

    iget-object v1, p0, Lo/getVersionNumber;->asBinder:Lo/setPanGiven;

    invoke-virtual {v1}, Lo/DeviceAttrResponse;->A_()Lo/StatementPeriod;

    move-result-object v1

    invoke-static {p1, p4, p5, v0, v1}, Lo/setCtaState$default;->ICustomTabsCallback(Landroid/content/Context;Lo/DataListJsonAdapter;Ljava/lang/String;Lo/GameCta;Lo/StatementPeriod;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    new-instance p4, Lo/getDomesticTransactions;

    iget-object p5, p0, Lo/getVersionNumber;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {p4, p5}, Lo/getDomesticTransactions;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lo/getVersionNumber;->onPostMessage:Lo/getDomesticTransactions;

    new-instance p4, Lo/showGameDetailsOnLoad;

    invoke-direct {p4, p2, p3}, Lo/showGameDetailsOnLoad;-><init>(Lo/openRewards;Ljava/lang/String;)V

    iput-object p4, p0, Lo/getVersionNumber;->ICustomTabsCallback:Lo/showGameDetailsOnLoad;

    new-instance p2, Lo/getInstallId;

    invoke-direct {p2, p0}, Lo/getInstallId;-><init>(Lo/getVersionNumber;)V

    sget-object p3, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/getVersionNumber;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    const-string p2, "WebViewNativeAdsUtil.constructor"

    invoke-static {p1, p2}, Lo/FooterJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/getVersionNumber;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/getVersionNumber;->onTransact:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Javascript has loaded for native ads."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v1

    iget-object v6, p0, Lo/getVersionNumber;->asBinder:Lo/setPanGiven;

    new-instance v9, Lo/RecentOrder;

    iget-object v0, p0, Lo/getVersionNumber;->onNavigationEvent:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v9, v0, v2, v2}, Lo/RecentOrder;-><init>(Landroid/content/Context;Lo/StatementDetailsRequestJsonAdapter;Lo/AddressListResponseJsonAdapter;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v6

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-interface/range {v1 .. v11}, Lo/SizeFilter;->ICustomTabsCallback(Lo/zzd;Lo/getTxnCurrency;Lo/GemIntroDetails;Lo/component8;Lo/CountJsonAdapter;ZLo/StatementResponse_UserDetailsJsonAdapter;Lo/RecentOrder;Lo/isCompressed;Lo/StatementDetailsRequestJsonAdapter;)V

    iget-object v0, p0, Lo/getVersionNumber;->onPostMessage:Lo/getDomesticTransactions;

    const-string v1, "/logScionEvent"

    invoke-interface {p1, v1, v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object v0, p0, Lo/getVersionNumber;->ICustomTabsCallback:Lo/showGameDetailsOnLoad;

    invoke-interface {p1, v1, v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    invoke-static {p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/getVersionNumber;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    new-instance v1, Lo/getFcmToken;

    invoke-direct {v1, p0, p1}, Lo/getFcmToken;-><init>(Lo/getVersionNumber;Lorg/json/JSONObject;)V

    sget-object p1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method final synthetic ICustomTabsCallback(Lorg/json/JSONObject;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/getVersionNumber;->onTransact:Ljava/lang/String;

    const-string v1, "ads_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lo/SuggestedAmount;

    invoke-direct {v0}, Lo/SuggestedAmount;-><init>()V

    new-instance v1, Lo/getDevice;

    invoke-direct {v1, p0, p2, v0}, Lo/getDevice;-><init>(Lo/getVersionNumber;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/SuggestedAmount;)V

    const-string v2, "/nativeAdPreProcess"

    invoke-interface {p2, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    const-string v1, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p2, v1, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/getVersionNumber;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    new-instance v1, Lo/setAuxiliaryAttributes;

    invoke-direct {v1, p0, p1, p2}, Lo/setAuxiliaryAttributes;-><init>(Lo/getVersionNumber;Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object p1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;Lo/getText2;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic extraCallback(Lorg/json/JSONObject;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/getVersionNumber;->onTransact:Ljava/lang/String;

    const-string v1, "ads_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleImpressionPing"

    invoke-interface {p2, v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/getVersionNumber;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    new-instance v1, Lo/setInstallId;

    invoke-direct {v1, p0, p1}, Lo/setInstallId;-><init>(Lo/getVersionNumber;Lorg/json/JSONObject;)V

    sget-object p1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method final synthetic onMessageChannelReady(Lorg/json/JSONObject;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/getVersionNumber;->onTransact:Ljava/lang/String;

    const-string v1, "ads_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleClickGmsg"

    invoke-interface {p2, v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady()V
    .locals 3

    iget-object v0, p0, Lo/getVersionNumber;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    new-instance v1, Lo/setDevice;

    invoke-direct {v1, p0}, Lo/setDevice;-><init>(Lo/getVersionNumber;)V

    sget-object v2, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;Lo/getText2;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/getVersionNumber;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    new-instance v1, Lo/setApplication;

    invoke-direct {v1, p0, p1, p2}, Lo/setApplication;-><init>(Lo/getVersionNumber;Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object p1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;Lo/getText2;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lo/getVersionNumber;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    new-instance v1, Lo/getAuxiliaryAttributes;

    invoke-direct {v1, p0, p1, p2}, Lo/getAuxiliaryAttributes;-><init>(Lo/getVersionNumber;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object p1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;Lo/getText2;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final onNavigationEvent(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/getVersionNumber;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    new-instance v1, Lo/AttributesClass;

    invoke-direct {v1, p0, p1}, Lo/AttributesClass;-><init>(Lo/getVersionNumber;Lorg/json/JSONObject;)V

    sget-object p1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/getVersionNumber;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    new-instance v1, Lo/setFcmToken;

    invoke-direct {v1, p0, p1}, Lo/setFcmToken;-><init>(Lo/getVersionNumber;Lorg/json/JSONObject;)V

    sget-object p1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method final synthetic onPostMessage(Lorg/json/JSONObject;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/getVersionNumber;->onTransact:Ljava/lang/String;

    const-string v1, "ads_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleDownloadedImpressionPing"

    invoke-interface {p2, v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method
