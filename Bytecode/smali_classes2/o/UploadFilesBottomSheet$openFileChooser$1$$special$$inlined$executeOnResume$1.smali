.class public final Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;
.super Lo/NotificationsResponse;

# interfaces
.implements Lo/SizeFilter;
.implements Lo/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;
.implements Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;
.implements Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;
.implements Lo/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/NotificationsResponse<",
        "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
        ">;",
        "Lo/SizeFilter;",
        "Lo/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;",
        "Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;",
        "Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;",
        "Lo/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/GemIntroDetails;

.field private ICustomTabsCallback$Stub:Lo/component8;

.field private ICustomTabsCallback$Stub$Proxy:Lo/StatementResponse_UserDetailsJsonAdapter;

.field private ICustomTabsService:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private ICustomTabsService$Stub:Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;

.field private ICustomTabsService$Stub$Proxy:Lo/isCompressed;

.field private INotificationSideChannel:Landroid/view/View$OnAttachStateChangeListener;

.field private IPostMessageService:Lo/StatementDetailsRequestJsonAdapter;

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:I

.field private asBinder:Lo/FileUploadResponseJsonAdapter;

.field private asInterface:Lo/UploadFilters;

.field private extraCallback:Lo/FileUploadConfigJsonAdapter;

.field private final extraCommand:Lo/isImmediate;

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

.field private newSession:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:Lo/zzd;

.field private onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private onRelationshipValidationResult:Z

.field private onTransact:Lo/getTxnCurrency;

.field private postMessage:Lo/CountJsonAdapter;

.field private requestPostMessageChannel:Z

.field private updateVisuals:Lo/RecentOrder;

.field private validateRelationship:Z

.field private warmup:Z


# direct methods
.method public constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)V
    .locals 4

    new-instance v0, Lo/isImmediate;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->extraCommand()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lo/WinMachineCardJsonAdapter;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/WinMachineCardJsonAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lo/isImmediate;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Landroid/content/Context;Lo/WinMachineCardJsonAdapter;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ZLo/isImmediate;Lo/RewardServiceCurrencyAdapter;)V

    return-void
.end method

.method private constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ZLo/isImmediate;Lo/RewardServiceCurrencyAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/NotificationsResponse;-><init>()V

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/Object;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Z

    iput-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iput-boolean p2, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->warmup:Z

    iput-object p3, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCommand:Lo/isImmediate;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

    return-void
.end method

.method private final ICustomTabsCallback(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/RewardServiceCurrencyAdapter;->extraCallback()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lo/getParcel;->onMessageChannelReady()Lo/CampaignIntroDetailsJsonAdapter;

    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lo/CampaignIntroDetailsJsonAdapter;->extraCallback(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->warmup:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsCallback:Lo/StatementResponse_WaiverJsonAdapter;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsCallback:Lo/StatementResponse_WaiverJsonAdapter;

    iget-object v0, p1, Lo/StatementResponse_WaiverJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService:Lo/StatementDetailsRequestJsonAdapter;

    invoke-interface {p1, v0}, Lo/StatementDetailsRequestJsonAdapter;->extraCallback(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCallback(Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V

    return-void
.end method

.method private final extraCallback(Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V
    .locals 2

    invoke-interface {p2}, Lo/StatementDetailsRequestJsonAdapter;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lo/StatementDetailsRequestJsonAdapter;->onMessageChannelReady(Landroid/view/View;)V

    invoke-interface {p2}, Lo/StatementDetailsRequestJsonAdapter;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/CreateLoanOrderRequestJsonAdapter;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/CreateLoanOrderRequestJsonAdapter;-><init>(Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final extraCommand()V
    .locals 2

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/FileUploadConfigJsonAdapter;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService$Stub$Proxy:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->validateRelationship:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/FileUploadConfigJsonAdapter;

    iget-boolean v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->validateRelationship:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lo/FileUploadConfigJsonAdapter;->extraCallback(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/FileUploadConfigJsonAdapter;

    :cond_2
    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->RemoteActionCompatParcelizer()V

    return-void
.end method

.method private final mayLaunchUrl()V
    .locals 2

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->INotificationSideChannel:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->INotificationSideChannel:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final onNavigationEvent(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x14

    if-gt v2, v3, :cond_8

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v4, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v4

    iget-object v5, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v5}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v6}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v6

    iget-object v6, v6, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v1, v3}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v4, Lo/getCurrencyType;

    invoke-direct {v4}, Lo/getCurrencyType;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lo/getCurrencyType;->onNavigationEvent(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Lo/getCurrencyType;->onNavigationEvent(Ljava/net/HttpURLConnection;I)V

    const/16 v4, 0x12c

    if-lt v6, v4, :cond_6

    const/16 v4, 0x190

    if-ge v6, v4, :cond_6

    const-string v4, "Location"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Protocol is null"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-object v5

    :cond_1
    const-string v7, "http"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "https"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string p1, "Unsupported scheme: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_2
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-object v5

    :cond_3
    const-string v0, "Redirecting to "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :goto_3
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v6

    goto/16 :goto_0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing Location header in redirect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {v3}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid protocol."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const/16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Too many redirects (20)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    iget-object v3, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lo/StatementDetailsRequestJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid.js"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->getInterfaceDescriptor()V

    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lo/WinningTypes;->read:Lo/WinRaffleTicketResponseJsonAdapter;

    :goto_0
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lo/WinningTypes;->write:Lo/WinRaffleTicketResponseJsonAdapter;

    goto :goto_0

    :cond_3
    sget-object v1, Lo/WinningTypes;->setDefaultImpl:Lo/WinRaffleTicketResponseJsonAdapter;

    goto :goto_0

    :goto_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v3, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v4

    iget-object v4, v4, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    :try_start_0
    iget-object v1, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    iget-object v3, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lo/TemplateProperties;->onNavigationEvent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v1, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-static {v1}, Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lo/getParcel;->warmup()Lo/ValuesJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lo/ValuesJsonAdapter;->onNavigationEvent(Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;)Lo/PostSliderFormInitDataJsonAdapter;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lo/PostSliderFormInitDataJsonAdapter;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lo/PostSliderFormInitDataJsonAdapter;->onNavigationEvent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_6
    invoke-static {}, Lo/getCurrencyType;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lo/WinningTypes;->isBrowsable:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_7
    return-object v2

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    const-string v1, "AdWebViewClient.interceptRequest"

    invoke-virtual {v0, p1, v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v2
.end method

.method public final ICustomTabsCallback(Lo/zzd;Lo/getTxnCurrency;Lo/GemIntroDetails;Lo/component8;Lo/CountJsonAdapter;ZLo/StatementResponse_UserDetailsJsonAdapter;Lo/RecentOrder;Lo/isCompressed;Lo/StatementDetailsRequestJsonAdapter;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p7

    move-object/from16 v15, p9

    move-object/from16 v1, p10

    if-nez p8, :cond_0

    new-instance v2, Lo/RecentOrder;

    iget-object v3, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lo/RecentOrder;-><init>(Landroid/content/Context;Lo/StatementDetailsRequestJsonAdapter;Lo/AddressListResponseJsonAdapter;)V

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    new-instance v2, Lo/RewardServiceCurrencyAdapter;

    iget-object v3, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v2, v3, v15}, Lo/RewardServiceCurrencyAdapter;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/isCompressed;)V

    iput-object v2, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

    iput-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService:Lo/StatementDetailsRequestJsonAdapter;

    sget-object v1, Lo/WinningTypes;->run:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lo/StatementResponse$StatementDetails$Transactions$DomesticTransaction;

    invoke-direct {v1, v12}, Lo/StatementResponse$StatementDetails$Transactions$DomesticTransaction;-><init>(Lo/getTxnCurrency;)V

    const-string v2, "/adMetadata"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_1
    new-instance v1, Lo/StatementResponse$UserDetails;

    invoke-direct {v1, v13}, Lo/StatementResponse$UserDetails;-><init>(Lo/component8;)V

    const-string v2, "/appEvent"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->onRelationshipValidationResult:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/backButton"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->newSession:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/refresh"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->onMessageChannelReady:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/canOpenURLs"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->extraCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/canOpenIntents"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/click"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->onNavigationEvent:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/close"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->onPostMessage:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/customClose"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->warmup:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/instrument"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->updateVisuals:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/delayPageLoaded"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->extraCommand:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/delayPageClosed"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->postMessage:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/getLocationInfo"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/httpTrack"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->ICustomTabsCallback$Stub:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/log"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    new-instance v1, Lo/getInternationalTransactions;

    iget-object v2, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

    invoke-direct {v1, v11, v2, v15}, Lo/getInternationalTransactions;-><init>(Lo/RecentOrder;Lo/RewardServiceCurrencyAdapter;Lo/isCompressed;)V

    const-string v2, "/mraid"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCommand:Lo/isImmediate;

    const-string v2, "/mraidLoaded"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    new-instance v10, Lo/getTxnDescription;

    iget-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v3

    iget-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->cancel()Lo/GameCta;

    move-result-object v4

    iget-object v9, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

    move-object v1, v10

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v16, v9

    move-object/from16 v9, p3

    move-object v15, v10

    move-object v10, v11

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lo/getTxnDescription;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/GameCta;Lo/CountJsonAdapter;Lo/zzd;Lo/getTxnCurrency;Lo/component8;Lo/GemIntroDetails;Lo/RecentOrder;Lo/RewardServiceCurrencyAdapter;)V

    const-string v1, "/open"

    invoke-virtual {v0, v1, v15}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    new-instance v1, Lo/getCandidateInstrument;

    invoke-direct {v1}, Lo/getCandidateInstrument;-><init>()V

    const-string v2, "/precache"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->asBinder:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/touch"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->ICustomTabsService:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/video"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->ICustomTabsCallback$Stub$Proxy:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/videoMeta"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/Template;->extraCallback(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lo/getDomesticTransactions;

    iget-object v2, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/getDomesticTransactions;-><init>(Landroid/content/Context;)V

    const-string v2, "/logScionEvent"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_2
    if-eqz v14, :cond_3

    new-instance v1, Lo/StatementResponse_StatementDetails_Transactions_InternationalTransactionJsonAdapter;

    invoke-direct {v1, v14}, Lo/StatementResponse_StatementDetails_Transactions_InternationalTransactionJsonAdapter;-><init>(Lo/StatementResponse_UserDetailsJsonAdapter;)V

    const-string v2, "/setInterstitialProperties"

    invoke-virtual {v0, v2, v1}, Lo/NotificationsResponse;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_3
    move-object/from16 v1, p1

    iput-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/zzd;

    move-object/from16 v1, p3

    iput-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/GemIntroDetails;

    iput-object v12, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/getTxnCurrency;

    iput-object v13, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/component8;

    move-object/from16 v1, p5

    iput-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->postMessage:Lo/CountJsonAdapter;

    move-object/from16 v2, v17

    iput-object v2, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->updateVisuals:Lo/RecentOrder;

    move-object/from16 v1, p9

    iput-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsService$Stub$Proxy:Lo/isCompressed;

    iput-object v14, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/StatementResponse_UserDetailsJsonAdapter;

    move/from16 v1, p6

    iput-boolean v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Z

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Z

    return-void
.end method

.method public final ICustomTabsCallback(ZILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v1

    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/zzd;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lo/CreateLoanPayRequest;

    iget-object v2, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v4, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/GemIntroDetails;

    invoke-direct {v1, v2, v4}, Lo/CreateLoanPayRequest;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/GemIntroDetails;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/getTxnCurrency;

    iget-object v6, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/component8;

    iget-object v7, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->postMessage:Lo/CountJsonAdapter;

    iget-object v8, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v8}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/zzd;Lo/GemIntroDetails;Lo/getTxnCurrency;Lo/component8;Lo/CountJsonAdapter;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ZILjava/lang/String;Lo/DataListJsonAdapter;)V

    invoke-direct {p0, v13}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 2

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->getInterfaceDescriptor:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->validateRelationship:Z

    invoke-direct {p0}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCommand()V

    return-void
.end method

.method public final synthetic ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    return-object v0
.end method

.method public final ICustomTabsService()Lo/StatementDetailsRequestJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService:Lo/StatementDetailsRequestJsonAdapter;

    return-object v0
.end method

.method public final asBinder()V
    .locals 3

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCallback(Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl()V

    new-instance v1, Lo/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;

    invoke-direct {v1, p0, v0}, Lo/InterstitialContainer$onActionComplete$$inlined$executeOnResume$1;-><init>(Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;Lo/StatementDetailsRequestJsonAdapter;)V

    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->INotificationSideChannel:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->INotificationSideChannel:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final asInterface()V
    .locals 2

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->requestPostMessageChannel:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService$Stub$Proxy:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService$Stub$Proxy:I

    invoke-direct {p0}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCommand()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final extraCallback(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->getInterfaceDescriptor:Z

    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->write()V

    iput-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsService:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->newSession:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final extraCallback(Lo/FileUploadConfigJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/FileUploadConfigJsonAdapter;

    return-void
.end method

.method public final extraCallback(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService$Stub:Z

    iget-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->asBinder:Lo/FileUploadResponseJsonAdapter;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/FileUploadResponseJsonAdapter;->onNavigationEvent()V

    const/4 p1, 0x0

    iput-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->asBinder:Lo/FileUploadResponseJsonAdapter;

    :cond_0
    invoke-direct {p0}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCommand()V

    return-void
.end method

.method public final extraCallback(ZI)V
    .locals 10

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v0

    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/zzd;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/GemIntroDetails;

    iget-object v4, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->postMessage:Lo/CountJsonAdapter;

    iget-object v5, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v5}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/zzd;Lo/GemIntroDetails;Lo/CountJsonAdapter;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ZILo/DataListJsonAdapter;)V

    invoke-direct {p0, v9}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 2

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->warmup:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getInterfaceDescriptor()V
    .locals 3

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->warmup:Z

    sget-object v1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v2, Lo/CreateLoanOrderRequest;

    invoke-direct {v2, p0}, Lo/CreateLoanOrderRequest;-><init>(Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final newSession()Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;
    .locals 1

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsService$Stub:Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/RecentOrder;
    .locals 1

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->updateVisuals:Lo/RecentOrder;

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/FileUploadResponseJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->asBinder:Lo/FileUploadResponseJsonAdapter;

    return-void
.end method

.method public final onMessageChannelReady(Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsService$Stub:Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;

    return-void
.end method

.method public final onMessageChannelReady(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)Z
    .locals 11

    iget-object v0, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lo/NotificationsResponse;->onPostMessage(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/zzd;

    if-eqz v0, :cond_5

    sget-object v0, Lo/WinningTypes;->onConnectionFailed:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/zzd;

    invoke-interface {v0}, Lo/zzd;->u_()V

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, p1}, Lo/StatementDetailsRequestJsonAdapter;->extraCallback(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/zzd;

    :cond_5
    return v4

    :cond_6
    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_b

    :try_start_0
    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->cancel()Lo/GameCta;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Lo/GameCta;->onMessageChannelReady(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v5}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v4, v5}, Lo/GameCta;->extraCallback(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcj; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    const-string v1, "Unable to append parameter to URL: "

    iget-object v3, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_3
    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    :goto_4
    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->updateVisuals:Lo/RecentOrder;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lo/RecentOrder;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->updateVisuals:Lo/RecentOrder;

    iget-object p1, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/RecentOrder;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    :goto_5
    new-instance p1, Lo/StatementResponse_WaiverJsonAdapter;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "android.intent.action.VIEW"

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lo/StatementResponse_WaiverJsonAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage(Lo/StatementResponse_WaiverJsonAdapter;)V

    goto :goto_7

    :cond_b
    const-string v0, "AdWebView unable to handle URL: "

    iget-object p1, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :goto_7
    return v2
.end method

.method public final onNavigationEvent()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsService:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Lo/UploadFilters;)V
    .locals 0

    iput-object p1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->asInterface:Lo/UploadFilters;

    return-void
.end method

.method public final onPostMessage()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->newSession:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onPostMessage(II)V
    .locals 1

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo/RewardServiceCurrencyAdapter;->onMessageChannelReady(II)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(IIZ)V
    .locals 1

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCommand:Lo/isImmediate;

    invoke-virtual {v0, p1, p2}, Lo/isImmediate;->onNavigationEvent(II)V

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lo/RewardServiceCurrencyAdapter;->extraCallback(IIZ)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 0

    iget-object p1, p1, Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lo/NotificationsResponse;->onPostMessage(Landroid/net/Uri;)Z

    return-void
.end method

.method public final onPostMessage(Lo/StatementResponse_WaiverJsonAdapter;)V
    .locals 8

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v0

    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/zzd;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/GemIntroDetails;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->postMessage:Lo/CountJsonAdapter;

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/StatementResponse_WaiverJsonAdapter;Lo/zzd;Lo/GemIntroDetails;Lo/CountJsonAdapter;Lo/DataListJsonAdapter;)V

    invoke-direct {p0, v7}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final onPostMessage(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v1

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/zzd;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lo/CreateLoanPayRequest;

    iget-object v2, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v4, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/GemIntroDetails;

    invoke-direct {v1, v2, v4}, Lo/CreateLoanPayRequest;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/GemIntroDetails;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/getTxnCurrency;

    iget-object v6, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/component8;

    iget-object v7, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->postMessage:Lo/CountJsonAdapter;

    iget-object v8, v0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v8}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/zzd;Lo/GemIntroDetails;Lo/getTxnCurrency;Lo/component8;Lo/CountJsonAdapter;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ZILjava/lang/String;Ljava/lang/String;Lo/DataListJsonAdapter;)V

    invoke-direct {p0, v14}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService$Stub$Proxy:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService$Stub$Proxy:I

    invoke-direct {p0}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCommand()V

    return-void
.end method

.method public final onTransact()Z
    .locals 2

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->requestPostMessageChannel:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic updateVisuals()V
    .locals 1

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->write()V

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->updateVisuals()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->warmup()V

    :cond_0
    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->asInterface:Lo/UploadFilters;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/UploadFilters;->onMessageChannelReady()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->asInterface:Lo/UploadFilters;

    :cond_1
    return-void
.end method

.method public final warmup()V
    .locals 4

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService:Lo/StatementDetailsRequestJsonAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/StatementDetailsRequestJsonAdapter;->onPostMessage()V

    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->IPostMessageService:Lo/StatementDetailsRequestJsonAdapter;

    :cond_0
    invoke-direct {p0}, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl()V

    invoke-super {p0}, Lo/NotificationsResponse;->warmup()V

    iget-object v0, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/zzd;

    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/GemIntroDetails;

    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/FileUploadConfigJsonAdapter;

    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->asBinder:Lo/FileUploadResponseJsonAdapter;

    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/getTxnCurrency;

    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/component8;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Z

    iput-boolean v2, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->warmup:Z

    iput-boolean v2, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->getInterfaceDescriptor:Z

    iput-boolean v2, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->requestPostMessageChannel:Z

    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->postMessage:Lo/CountJsonAdapter;

    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->asInterface:Lo/UploadFilters;

    iget-object v2, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lo/RewardServiceCurrencyAdapter;->onPostMessage(Z)V

    iput-object v1, p0, Lo/UploadFilesBottomSheet$openFileChooser$1$$special$$inlined$executeOnResume$1;->mayLaunchUrl:Lo/RewardServiceCurrencyAdapter;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
