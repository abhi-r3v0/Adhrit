.class public Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;
.super Landroid/webkit/WebViewClient;

# interfaces
.implements Lo/SizeFilter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final extraCallback:[Ljava/lang/String;

.field private static final onPostMessage:[Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private ICustomTabsCallback$Stub:Lo/FileUploadResponseJsonAdapter;

.field private ICustomTabsCallback$Stub$Proxy:Lo/component8;

.field private ICustomTabsService:Lo/getTxnCurrency;

.field private final ICustomTabsService$Stub:Lo/isImmediate;

.field private ICustomTabsService$Stub$Proxy:Lo/isCompressed;

.field private INotificationSideChannel:Z

.field private IPostMessageService:Lo/RecentOrder;

.field private IPostMessageService$Stub:Lo/CountJsonAdapter;

.field private IPostMessageService$Stub$Proxy:Z

.field private asBinder:Lo/FileUploadConfigJsonAdapter;

.field private asInterface:Lo/zzd;

.field private cancel:I

.field private cancelAll:Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;

.field private extraCommand:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private getInterfaceDescriptor:Lo/UploadFilters;

.field private mayLaunchUrl:Z

.field private newSession:Z

.field private notify:Landroid/view/View$OnAttachStateChangeListener;

.field private final onMessageChannelReady:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected onNavigationEvent:Lo/StatementDetailsRequestJsonAdapter;

.field private onRelationshipValidationResult:Lo/GemIntroDetails;

.field private final onTransact:Ljava/lang/Object;

.field private postMessage:Z

.field private requestPostMessageChannel:Z

.field private updateVisuals:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private validateRelationship:Lo/RewardServiceCurrencyAdapter;

.field private warmup:Lo/StatementResponse_UserDetailsJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "UNKNOWN"

    const-string v1, "HOST_LOOKUP"

    const-string v2, "UNSUPPORTED_AUTH_SCHEME"

    const-string v3, "AUTHENTICATION"

    const-string v4, "PROXY_AUTHENTICATION"

    const-string v5, "CONNECT"

    const-string v6, "IO"

    const-string v7, "TIMEOUT"

    const-string v8, "REDIRECT_LOOP"

    const-string v9, "UNSUPPORTED_SCHEME"

    const-string v10, "FAILED_SSL_HANDSHAKE"

    const-string v11, "BAD_URL"

    const-string v12, "FILE"

    const-string v13, "FILE_NOT_FOUND"

    const-string v14, "TOO_MANY_REQUESTS"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCallback:[Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    const-string v2, "EXPIRED"

    const-string v3, "ID_MISMATCH"

    const-string v4, "UNTRUSTED"

    const-string v5, "DATE_INVALID"

    const-string v6, "INVALID"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage:[Ljava/lang/String;

    return-void
.end method

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

    invoke-direct {p0, p1, p2, v0, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ZLo/isImmediate;Lo/RewardServiceCurrencyAdapter;)V

    return-void
.end method

.method private constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ZLo/isImmediate;Lo/RewardServiceCurrencyAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/HashMap;

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->newSession:Z

    iput-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iput-boolean p2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->postMessage:Z

    iput-object p3, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsService$Stub:Lo/isImmediate;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->validateRelationship:Lo/RewardServiceCurrencyAdapter;

    return-void
.end method

.method private final ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$MediaItem$Flags:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    const-string p3, "host"

    invoke-virtual {v5, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v1

    iget-object p2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object p2

    iget-object v3, p2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v4, "gmob-apps"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic extraCallback(Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady(Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V

    return-void
.end method

.method private final extraCommand()V
    .locals 2

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asBinder:Lo/FileUploadConfigJsonAdapter;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService$Stub$Proxy:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->cancel:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->INotificationSideChannel:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asBinder:Lo/FileUploadConfigJsonAdapter;

    iget-boolean v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->INotificationSideChannel:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lo/FileUploadConfigJsonAdapter;->extraCallback(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asBinder:Lo/FileUploadConfigJsonAdapter;

    :cond_2
    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->RemoteActionCompatParcelizer()V

    return-void
.end method

.method private final onMessageChannelReady(Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V
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

    new-instance v1, Lo/CredProtectContentModelJsonAdapter;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/CredProtectContentModelJsonAdapter;-><init>(Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_8

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v3

    iget-object v4, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v5}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v5

    iget-object v5, v5, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1, v2}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v3, Lo/getCurrencyType;

    invoke-direct {v3}, Lo/getCurrencyType;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lo/getCurrencyType;->onNavigationEvent(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lo/getCurrencyType;->onNavigationEvent(Ljava/net/HttpURLConnection;I)V

    const/16 v3, 0x12c

    if-lt v5, v3, :cond_6

    const/16 v3, 0x190

    if-ge v5, v3, :cond_6

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Protocol is null"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-object v4

    :cond_1
    const-string v6, "http"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "https"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string p1, "Unsupported scheme: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-object v4

    :cond_3
    const-string v0, "Redirecting to "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_3
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v5

    goto/16 :goto_0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {v2}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Too many redirects (20)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final onPostMessage(Landroid/net/Uri;)V
    .locals 6

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {p1}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Received GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    iget-object v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1, v2, p1}, Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No GMSG handler found for GMSG: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method private final onPostMessage(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->validateRelationship:Lo/RewardServiceCurrencyAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/RewardServiceCurrencyAdapter;->extraCallback()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lo/getParcel;->onMessageChannelReady()Lo/CampaignIntroDetailsJsonAdapter;

    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lo/CampaignIntroDetailsJsonAdapter;->extraCallback(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->warmup:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsCallback:Lo/StatementResponse_WaiverJsonAdapter;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsCallback:Lo/StatementResponse_WaiverJsonAdapter;

    iget-object v0, p1, Lo/StatementResponse_WaiverJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent:Lo/StatementDetailsRequestJsonAdapter;

    invoke-interface {p1, v0}, Lo/StatementDetailsRequestJsonAdapter;->extraCallback(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final requestPostMessageChannel()V
    .locals 2

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->notify:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->notify:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
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

    iget-object v3, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

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

    iget-object v3, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v2, v3, v15}, Lo/RewardServiceCurrencyAdapter;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/isCompressed;)V

    iput-object v2, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->validateRelationship:Lo/RewardServiceCurrencyAdapter;

    iput-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent:Lo/StatementDetailsRequestJsonAdapter;

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

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_1
    new-instance v1, Lo/StatementResponse$UserDetails;

    invoke-direct {v1, v13}, Lo/StatementResponse$UserDetails;-><init>(Lo/component8;)V

    const-string v2, "/appEvent"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->onRelationshipValidationResult:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/backButton"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->newSession:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/refresh"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->onMessageChannelReady:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/canOpenURLs"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->extraCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/canOpenIntents"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/click"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->onNavigationEvent:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/close"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->onPostMessage:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/customClose"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->warmup:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/instrument"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->updateVisuals:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/delayPageLoaded"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->extraCommand:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/delayPageClosed"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->postMessage:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/getLocationInfo"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/httpTrack"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->ICustomTabsCallback$Stub:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/log"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    new-instance v1, Lo/getInternationalTransactions;

    iget-object v2, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->validateRelationship:Lo/RewardServiceCurrencyAdapter;

    invoke-direct {v1, v11, v2, v15}, Lo/getInternationalTransactions;-><init>(Lo/RecentOrder;Lo/RewardServiceCurrencyAdapter;Lo/isCompressed;)V

    const-string v2, "/mraid"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsService$Stub:Lo/isImmediate;

    const-string v2, "/mraidLoaded"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    new-instance v10, Lo/getTxnDescription;

    iget-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v3

    iget-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->cancel()Lo/GameCta;

    move-result-object v4

    iget-object v9, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->validateRelationship:Lo/RewardServiceCurrencyAdapter;

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

    invoke-virtual {v0, v1, v15}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    new-instance v1, Lo/getCandidateInstrument;

    invoke-direct {v1}, Lo/getCandidateInstrument;-><init>()V

    const-string v2, "/precache"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->asBinder:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/touch"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->ICustomTabsService:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/video"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v1, Lo/StatementResponse$Waiver;->ICustomTabsCallback$Stub$Proxy:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/videoMeta"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/Template;->extraCallback(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lo/getDomesticTransactions;

    iget-object v2, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/getDomesticTransactions;-><init>(Landroid/content/Context;)V

    const-string v2, "/logScionEvent"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_2
    if-eqz v14, :cond_3

    new-instance v1, Lo/StatementResponse_StatementDetails_Transactions_InternationalTransactionJsonAdapter;

    invoke-direct {v1, v14}, Lo/StatementResponse_StatementDetails_Transactions_InternationalTransactionJsonAdapter;-><init>(Lo/StatementResponse_UserDetailsJsonAdapter;)V

    const-string v2, "/setInterstitialProperties"

    invoke-virtual {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_3
    move-object/from16 v1, p1

    iput-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asInterface:Lo/zzd;

    move-object/from16 v1, p3

    iput-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/GemIntroDetails;

    iput-object v12, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsService:Lo/getTxnCurrency;

    iput-object v13, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/component8;

    move-object/from16 v1, p5

    iput-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService$Stub:Lo/CountJsonAdapter;

    move-object/from16 v2, v17

    iput-object v2, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService:Lo/RecentOrder;

    move-object/from16 v1, p9

    iput-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsService$Stub$Proxy:Lo/isCompressed;

    iput-object v14, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->warmup:Lo/StatementResponse_UserDetailsJsonAdapter;

    move/from16 v1, p6

    iput-boolean v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->newSession:Z

    return-void
.end method

.method public final ICustomTabsCallback(ZILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v1

    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asInterface:Lo/zzd;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lo/getUsageId;

    iget-object v2, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v4, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/GemIntroDetails;

    invoke-direct {v1, v2, v4}, Lo/getUsageId;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/GemIntroDetails;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsService:Lo/getTxnCurrency;

    iget-object v6, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/component8;

    iget-object v7, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService$Stub:Lo/CountJsonAdapter;

    iget-object v8, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v8}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/zzd;Lo/GemIntroDetails;Lo/getTxnCurrency;Lo/component8;Lo/CountJsonAdapter;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ZILjava/lang/String;Lo/DataListJsonAdapter;)V

    invoke-direct {p0, v13}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 2

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->requestPostMessageChannel:Z

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

    iput-boolean v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->INotificationSideChannel:Z

    invoke-direct {p0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCommand()V

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()V
    .locals 4

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent:Lo/StatementDetailsRequestJsonAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/StatementDetailsRequestJsonAdapter;->onPostMessage()V

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent:Lo/StatementDetailsRequestJsonAdapter;

    :cond_0
    invoke-direct {p0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->requestPostMessageChannel()V

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asInterface:Lo/zzd;

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/GemIntroDetails;

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asBinder:Lo/FileUploadConfigJsonAdapter;

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/FileUploadResponseJsonAdapter;

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsService:Lo/getTxnCurrency;

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/component8;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->newSession:Z

    iput-boolean v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->postMessage:Z

    iput-boolean v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->requestPostMessageChannel:Z

    iput-boolean v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->mayLaunchUrl:Z

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService$Stub:Lo/CountJsonAdapter;

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->getInterfaceDescriptor:Lo/UploadFilters;

    iget-object v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->validateRelationship:Lo/RewardServiceCurrencyAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->validateRelationship:Lo/RewardServiceCurrencyAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lo/RewardServiceCurrencyAdapter;->onPostMessage(Z)V

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->validateRelationship:Lo/RewardServiceCurrencyAdapter;

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

.method public final ICustomTabsService()Lo/StatementDetailsRequestJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent:Lo/StatementDetailsRequestJsonAdapter;

    return-object v0
.end method

.method public final asBinder()V
    .locals 3

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady(Landroid/view/View;Lo/StatementDetailsRequestJsonAdapter;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->requestPostMessageChannel()V

    new-instance v1, Lo/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v1, p0, v0}, Lo/BottomPaymentFabrikDialogFragment$sheetStateListener$1$onStateChanged$$inlined$executeOnResume$1;-><init>(Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;Lo/StatementDetailsRequestJsonAdapter;)V

    iput-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->notify:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->notify:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final asInterface()V
    .locals 2

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->mayLaunchUrl:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->cancel:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->cancel:I

    invoke-direct {p0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCommand()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected final extraCallback(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lo/TemplateProperties;->onNavigationEvent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2, p2}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lo/getParcel;->warmup()Lo/ValuesJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/ValuesJsonAdapter;->onNavigationEvent(Lo/RedeemDialogPresenter$25$onStateChanged$$inlined$executeOnResume$1;)Lo/PostSliderFormInitDataJsonAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/PostSliderFormInitDataJsonAdapter;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v2}, Lo/PostSliderFormInitDataJsonAdapter;->onNavigationEvent()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    invoke-static {}, Lo/getCurrencyType;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lo/WinningTypes;->isBrowsable:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    invoke-virtual {p2, p1, v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public final extraCallback(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->requestPostMessageChannel:Z

    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->write()V

    iput-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCommand:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->updateVisuals:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;Lo/component21;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/component21<",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    invoke-interface {p2, v3}, Lo/component21;->extraCallback(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

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

    iput-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asBinder:Lo/FileUploadConfigJsonAdapter;

    return-void
.end method

.method public final extraCallback(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v1

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asInterface:Lo/zzd;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lo/getUsageId;

    iget-object v2, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v4, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/GemIntroDetails;

    invoke-direct {v1, v2, v4}, Lo/getUsageId;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/GemIntroDetails;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsService:Lo/getTxnCurrency;

    iget-object v6, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Lo/component8;

    iget-object v7, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService$Stub:Lo/CountJsonAdapter;

    iget-object v8, v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v8}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/zzd;Lo/GemIntroDetails;Lo/getTxnCurrency;Lo/component8;Lo/CountJsonAdapter;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ZILjava/lang/String;Ljava/lang/String;Lo/DataListJsonAdapter;)V

    invoke-direct {p0, v14}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 2

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->postMessage:Z

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

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->newSession:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->postMessage:Z

    sget-object v1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v2, Lo/setup;

    invoke-direct {v2, p0}, Lo/setup;-><init>(Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;)V

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

.method final synthetic newSession()V
    .locals 1

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->write()V

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->updateVisuals()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->warmup()V

    :cond_0
    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->getInterfaceDescriptor:Lo/UploadFilters;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/UploadFilters;->onMessageChannelReady()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->getInterfaceDescriptor:Lo/UploadFilters;

    :cond_1
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()Lo/RecentOrder;
    .locals 1

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService:Lo/RecentOrder;

    return-object v0
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

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady(Lo/FileUploadResponseJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/FileUploadResponseJsonAdapter;

    return-void
.end method

.method public final onMessageChannelReady(Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->cancelAll:Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;

    return-void
.end method

.method public final onMessageChannelReady(ZI)V
    .locals 10

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v0

    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asInterface:Lo/zzd;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/GemIntroDetails;

    iget-object v4, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService$Stub:Lo/CountJsonAdapter;

    iget-object v5, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v5}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/zzd;Lo/GemIntroDetails;Lo/CountJsonAdapter;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;ZILo/DataListJsonAdapter;)V

    invoke-direct {p0, v9}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final onNavigationEvent()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCommand:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Lo/StatementResponse_WaiverJsonAdapter;)V
    .locals 8

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v0

    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asInterface:Lo/zzd;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/GemIntroDetails;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService$Stub:Lo/CountJsonAdapter;

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lo/StatementResponse_WaiverJsonAdapter;Lo/zzd;Lo/GemIntroDetails;Lo/CountJsonAdapter;Lo/DataListJsonAdapter;)V

    invoke-direct {p0, v7}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/UploadFilters;)V
    .locals 0

    iput-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->getInterfaceDescriptor:Lo/UploadFilters;

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    invoke-static {p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object p2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setDefaultImpl()V

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService$Stub$Proxy:Z

    iget-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/FileUploadResponseJsonAdapter;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/FileUploadResponseJsonAdapter;->onNavigationEvent()V

    const/4 p1, 0x0

    iput-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/FileUploadResponseJsonAdapter;

    :cond_1
    invoke-direct {p0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCommand()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onPostMessage()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->updateVisuals:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

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

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->validateRelationship:Lo/RewardServiceCurrencyAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo/RewardServiceCurrencyAdapter;->onMessageChannelReady(II)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(IIZ)V
    .locals 1

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsService$Stub:Lo/isImmediate;

    invoke-virtual {v0, p1, p2}, Lo/isImmediate;->onNavigationEvent(II)V

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->validateRelationship:Lo/RewardServiceCurrencyAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lo/RewardServiceCurrencyAdapter;->extraCallback(IIZ)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 3
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

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->newSession:Z

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCallback:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v2

    invoke-virtual {v2, p3}, Lo/getAccount_number;->onPostMessage(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ssl_err"

    invoke-direct {p0, v1, v3, v0, v2}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->cancel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->cancel:I

    invoke-direct {p0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCommand()V

    return-void
.end method

.method public final onTransact()Z
    .locals 2

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->mayLaunchUrl:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Landroid/net/Uri;)V

    goto/16 :goto_7

    :cond_1
    iget-boolean v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->newSession:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

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

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asInterface:Lo/zzd;

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

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asInterface:Lo/zzd;

    invoke-interface {v0}, Lo/zzd;->u_()V

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Lo/StatementDetailsRequestJsonAdapter;->extraCallback(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->asInterface:Lo/zzd;

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    iget-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_b

    :try_start_0
    iget-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->cancel()Lo/GameCta;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Lo/GameCta;->onMessageChannelReady(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v3, v4}, Lo/GameCta;->extraCallback(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcj; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_4

    :catch_0
    nop

    const-string p1, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_3
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    :goto_4
    iget-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService:Lo/RecentOrder;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lo/RecentOrder;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->IPostMessageService:Lo/RecentOrder;

    invoke-virtual {p1, p2}, Lo/RecentOrder;->onNavigationEvent(Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent(Lo/StatementResponse_WaiverJsonAdapter;)V

    goto :goto_7

    :cond_b
    const-string p1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_6
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :goto_7
    return v2
.end method

.method public final warmup()Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;
    .locals 1

    iget-object v0, p0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->cancelAll:Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;

    return-object v0
.end method
