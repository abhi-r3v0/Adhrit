.class public final Lo/getCashback_disabled;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Object;

.field private static onMessageChannelReady:Lo/OnboardCardsDataJsonAdapter;

.field private static final onPostMessage:Lo/CashBackDetailsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CashBackDetailsJsonAdapter<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/getCashback_disabled;->ICustomTabsCallback:Ljava/lang/Object;

    new-instance v0, Lo/CashBackDetails;

    invoke-direct {v0}, Lo/CashBackDetails;-><init>()V

    sput-object v0, Lo/getCashback_disabled;->onPostMessage:Lo/CashBackDetailsJsonAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lo/getCashback_disabled;->extraCallback(Landroid/content/Context;)Lo/OnboardCardsDataJsonAdapter;

    return-void
.end method

.method private static extraCallback(Landroid/content/Context;)Lo/OnboardCardsDataJsonAdapter;
    .locals 4

    sget-object v0, Lo/getCashback_disabled;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/getCashback_disabled;->onMessageChannelReady:Lo/OnboardCardsDataJsonAdapter;

    if-nez v1, :cond_1

    invoke-static {p0}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    sget-object v1, Lo/WinningTypes;->MediaMetadataCompat$TextKey:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lo/getControlMetadata;->onPostMessage(Landroid/content/Context;)Lo/OnboardCardsDataJsonAdapter;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;

    new-instance v2, Lo/setDigestSlideListener;

    invoke-direct {v2}, Lo/setDigestSlideListener;-><init>()V

    invoke-direct {v1, v2}, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;-><init>(Lo/Cta_DeeplinkJsonAdapter;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "volley"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lo/OnboardCardsDataJsonAdapter;

    new-instance v3, Lo/CashBackDisabled;

    invoke-direct {v3, v2}, Lo/CashBackDisabled;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3, v1}, Lo/OnboardCardsDataJsonAdapter;-><init>(Lo/LoanStatusResponse$BreakDownDetails;Lo/WinDetailsItemJsonAdapter;)V

    invoke-virtual {p0}, Lo/OnboardCardsDataJsonAdapter;->extraCallback()V

    :goto_0
    sput-object p0, Lo/getCashback_disabled;->onMessageChannelReady:Lo/OnboardCardsDataJsonAdapter;

    :cond_1
    sget-object p0, Lo/getCashback_disabled;->onMessageChannelReady:Lo/OnboardCardsDataJsonAdapter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/util/Map;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lo/getCashback_disabled;->onMessageChannelReady(ILjava/lang/String;Ljava/util/Map;[B)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(ILjava/lang/String;Ljava/util/Map;[B)Lo/PaymentModeListResponseJsonAdapter;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    new-instance v10, Lo/getDetails;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lo/getDetails;-><init>(Lo/CashBackDetails;)V

    new-instance v6, Lo/CashBackDetails$$Parcelable;

    move-object v11, p0

    invoke-direct {v6, p0, v0, v10}, Lo/CashBackDetails$$Parcelable;-><init>(Lo/getCashback_disabled;Ljava/lang/String;Lo/getDetails;)V

    new-instance v12, Lo/getCurrencyType;

    invoke-direct {v12, v1}, Lo/getCurrencyType;-><init>(Ljava/lang/String;)V

    new-instance v13, Lo/getMessages;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lo/getMessages;-><init>(Lo/getCashback_disabled;ILjava/lang/String;Lo/setExternalTextView;Lo/RawBankAccount;[BLjava/util/Map;Lo/getCurrencyType;)V

    invoke-static {}, Lo/getCurrencyType;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GET"

    invoke-virtual {v13}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->extraCallback()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady()[B

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Lo/getCurrencyType;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zza; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lo/getCashback_disabled;->onMessageChannelReady:Lo/OnboardCardsDataJsonAdapter;

    invoke-virtual {v0, v13}, Lo/OnboardCardsDataJsonAdapter;->onPostMessage(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    return-object v10
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lo/CashBackDetailsJsonAdapter;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lo/CashBackDetailsJsonAdapter<",
            "TT;>;)",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lo/SuggestedAmount;

    invoke-direct {v0}, Lo/SuggestedAmount;-><init>()V

    sget-object v1, Lo/getCashback_disabled;->onMessageChannelReady:Lo/OnboardCardsDataJsonAdapter;

    new-instance v2, Lo/CashBackDisabled$$Parcelable;

    invoke-direct {v2, p1, v0}, Lo/CashBackDisabled$$Parcelable;-><init>(Ljava/lang/String;Lo/SuggestedAmount;)V

    invoke-virtual {v1, v2}, Lo/OnboardCardsDataJsonAdapter;->onPostMessage(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    new-instance p1, Lo/CardValidationResponseJsonAdapter;

    invoke-direct {p1, p0, p2}, Lo/CardValidationResponseJsonAdapter;-><init>(Lo/getCashback_disabled;Lo/CashBackDetailsJsonAdapter;)V

    sget-object v1, Lo/AmexLoginStatus;->onNavigationEvent:Lo/Properties$$Parcelable;

    invoke-static {v0, p1, v1}, Lo/InvalidPaymentAmount$$Parcelable;->onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Lo/getText3;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    const-class v0, Ljava/lang/Throwable;

    new-instance v1, Lo/getSupported;

    invoke-direct {v1, p0, p2}, Lo/getSupported;-><init>(Lo/getCashback_disabled;Lo/CashBackDetailsJsonAdapter;)V

    sget-object p2, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1, p2}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/Class;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method
