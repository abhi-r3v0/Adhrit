.class public final Lo/getControlMetadata;
.super Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onNavigationEvent:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lo/CredProtectContentModel;)V
    .locals 0

    invoke-direct {p0, p2}, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;-><init>(Lo/CredProtectContentModel;)V

    iput-object p1, p0, Lo/getControlMetadata;->onNavigationEvent:Landroid/content/Context;

    return-void
.end method

.method public static onPostMessage(Landroid/content/Context;)Lo/OnboardCardsDataJsonAdapter;
    .locals 3

    new-instance v0, Lo/getControlMetadata;

    new-instance v1, Lo/setDigestSlideListener;

    invoke-direct {v1}, Lo/setDigestSlideListener;-><init>()V

    invoke-direct {v0, p0, v1}, Lo/getControlMetadata;-><init>(Landroid/content/Context;Lo/CredProtectContentModel;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "admob_volley"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lo/OnboardCardsDataJsonAdapter;

    new-instance v2, Lo/CashBackDisabled;

    invoke-direct {v2, v1}, Lo/CashBackDisabled;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2, v0}, Lo/OnboardCardsDataJsonAdapter;-><init>(Lo/LoanStatusResponse$BreakDownDetails;Lo/WinDetailsItemJsonAdapter;)V

    invoke-virtual {p0}, Lo/OnboardCardsDataJsonAdapter;->extraCallback()V

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/initiateUPI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;)",
            "Lo/initiateUPI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzae;
        }
    .end annotation

    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo/WinningTypes;->MediaMetadataCompat$LongKey:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v0, p0, Lo/getControlMetadata;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v0}, Lo/ControlStatementRepo$TransactionItem;->extraCallback(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lo/setNotificationBadges;

    iget-object v1, p0, Lo/getControlMetadata;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/setNotificationBadges;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lo/setNotificationBadges;->extraCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/initiateUPI;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Got gmscore asset response: "

    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "Failed to get gmscore asset response: "

    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/initiateUPI;

    move-result-object p1

    return-object p1
.end method
