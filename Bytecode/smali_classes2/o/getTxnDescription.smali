.class public final Lo/getTxnDescription;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;",
        ":",
        "Lo/DigestFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
        ":",
        "Lo/setTime;",
        ":",
        "Lo/setTimer;",
        ":",
        "Lo/FileUploadConfig;",
        ">",
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/zzd;

.field private final ICustomTabsCallback$Stub:Lo/getTxnCurrency;

.field private final asBinder:Lo/RecentOrder;

.field private final asInterface:Lo/component8;

.field private final extraCallback:Landroid/content/Context;

.field private final getInterfaceDescriptor:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private final onMessageChannelReady:Lo/DataListJsonAdapter;

.field private final onNavigationEvent:Lo/CountJsonAdapter;

.field private final onPostMessage:Lo/GameCta;

.field private final onRelationshipValidationResult:Lo/GemIntroDetails;

.field private final onTransact:Lo/RewardServiceCurrencyAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/GameCta;Lo/CountJsonAdapter;Lo/zzd;Lo/getTxnCurrency;Lo/component8;Lo/GemIntroDetails;Lo/RecentOrder;Lo/RewardServiceCurrencyAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/getTxnDescription;->getInterfaceDescriptor:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iput-object p1, p0, Lo/getTxnDescription;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/getTxnDescription;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iput-object p3, p0, Lo/getTxnDescription;->onPostMessage:Lo/GameCta;

    iput-object p4, p0, Lo/getTxnDescription;->onNavigationEvent:Lo/CountJsonAdapter;

    iput-object p5, p0, Lo/getTxnDescription;->ICustomTabsCallback:Lo/zzd;

    iput-object p6, p0, Lo/getTxnDescription;->ICustomTabsCallback$Stub:Lo/getTxnCurrency;

    iput-object p7, p0, Lo/getTxnDescription;->asInterface:Lo/component8;

    iput-object p9, p0, Lo/getTxnDescription;->asBinder:Lo/RecentOrder;

    iput-object p10, p0, Lo/getTxnDescription;->onTransact:Lo/RewardServiceCurrencyAdapter;

    iput-object p8, p0, Lo/getTxnDescription;->onRelationshipValidationResult:Lo/GemIntroDetails;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "custom_close"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static onNavigationEvent(Landroid/content/Context;Lo/GameCta;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/GameCta;->extraCallback(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, p0, p3, p4}, Lo/GameCta;->extraCallback(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcj; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUrl"

    invoke-virtual {p1, p0, p3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    return-object p2
.end method

.method private final onNavigationEvent(Z)V
    .locals 1

    iget-object v0, p0, Lo/getTxnDescription;->onTransact:Lo/RewardServiceCurrencyAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/RewardServiceCurrencyAdapter;->onPostMessage(Z)V

    :cond_0
    return-void
.end method

.method private static onPostMessage(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object p0

    invoke-virtual {p0}, Lo/getAccount_number;->onMessageChannelReady()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "l"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object p0

    invoke-virtual {p0}, Lo/getAccount_number;->ICustomTabsCallback()I

    move-result p0

    return p0

    :cond_1
    const-string v0, "c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object p0

    invoke-virtual {p0}, Lo/getAccount_number;->onPostMessage()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10

    const-string v0, "OpenGmsgHandler.onGmsg"

    check-cast p1, Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;

    const-string v1, "u"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lo/TemplateProperties;->onNavigationEvent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "a"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string p1, "Action missing from an open GMSG."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lo/getTxnDescription;->asBinder:Lo/RecentOrder;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lo/RecentOrder;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p1, p0, Lo/getTxnDescription;->asBinder:Lo/RecentOrder;

    invoke-virtual {p1, v1}, Lo/RecentOrder;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "expand"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Lo/DigestFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/DigestFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Cannot expand WebView that is already expanded."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, v4}, Lo/getTxnDescription;->onNavigationEvent(Z)V

    check-cast p1, Lo/setTime;

    invoke-static {p2}, Lo/getTxnDescription;->ICustomTabsCallback(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p2}, Lo/getTxnDescription;->onPostMessage(Ljava/util/Map;)I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/setTime;->ICustomTabsCallback(ZI)V

    return-void

    :cond_3
    const-string v3, "webapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v4}, Lo/getTxnDescription;->onNavigationEvent(Z)V

    check-cast p1, Lo/setTime;

    invoke-static {p2}, Lo/getTxnDescription;->ICustomTabsCallback(Ljava/util/Map;)Z

    move-result v0

    if-eqz v1, :cond_4

    invoke-static {p2}, Lo/getTxnDescription;->onPostMessage(Ljava/util/Map;)I

    move-result p2

    invoke-interface {p1, v0, p2, v1}, Lo/setTime;->ICustomTabsCallback(ZILjava/lang/String;)V

    return-void

    :cond_4
    invoke-static {p2}, Lo/getTxnDescription;->onPostMessage(Ljava/util/Map;)I

    move-result v1

    const-string v2, "html"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "baseurl"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, p2}, Lo/setTime;->ICustomTabsCallback(ZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v3, "app"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const-string v2, "system_browser"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v3}, Lo/getTxnDescription;->onNavigationEvent(Z)V

    invoke-interface {p1}, Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "Destination url cannot be empty."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance v0, Lo/getTxnAmount;

    invoke-interface {p1}, Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lo/setTimer;

    invoke-interface {v2}, Lo/setTimer;->cancel()Lo/GameCta;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lo/FileUploadConfig;

    invoke-interface {v3}, Lo/FileUploadConfig;->newSession()Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/getTxnAmount;-><init>(Landroid/content/Context;Lo/GameCta;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lo/getTxnAmount;->ICustomTabsCallback(Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p2

    :try_start_0
    check-cast p1, Lo/setTime;

    new-instance v0, Lo/StatementResponse_WaiverJsonAdapter;

    invoke-direct {v0, p2}, Lo/StatementResponse_WaiverJsonAdapter;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Lo/setTime;->onNavigationEvent(Lo/StatementResponse_WaiverJsonAdapter;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-direct {p0, v3}, Lo/getTxnDescription;->onNavigationEvent(Z)V

    const-string v2, "intent_url"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    :try_start_1
    invoke-static {v2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "Error parsing the url: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2, v4}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_1
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    :try_start_2
    invoke-interface {p1}, Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Lo/setTimer;

    invoke-interface {v6}, Lo/setTimer;->cancel()Lo/GameCta;

    move-result-object v6

    move-object v7, p1

    check-cast v7, Lo/FileUploadConfig;

    invoke-interface {v7}, Lo/FileUploadConfig;->newSession()Landroid/view/View;

    move-result-object v7

    invoke-interface {p1}, Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v5, v6, v4, v7, v8}, Lo/getTxnDescription;->onNavigationEvent(Landroid/content/Context;Lo/GameCta;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    const-string v6, "Error occurred while adding signals."

    invoke-static {v6, v5}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2
    :try_start_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v5

    const-string v6, "Error parsing the uri: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v4, v5}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_b
    :goto_4
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_c
    if-eqz v3, :cond_d

    check-cast p1, Lo/setTime;

    new-instance p2, Lo/StatementResponse_WaiverJsonAdapter;

    invoke-direct {p2, v3}, Lo/StatementResponse_WaiverJsonAdapter;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, p2}, Lo/setTime;->onNavigationEvent(Lo/StatementResponse_WaiverJsonAdapter;)V

    return-void

    :cond_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p1}, Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lo/setTimer;

    invoke-interface {v2}, Lo/setTimer;->cancel()Lo/GameCta;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lo/FileUploadConfig;

    invoke-interface {v3}, Lo/FileUploadConfig;->newSession()Landroid/view/View;

    move-result-object v3

    invoke-interface {p1}, Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0, v2, v1, v3, v4}, Lo/getTxnDescription;->onNavigationEvent(Landroid/content/Context;Lo/GameCta;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    :cond_e
    move-object v4, v1

    check-cast p1, Lo/setTime;

    new-instance v0, Lo/StatementResponse_WaiverJsonAdapter;

    const-string v1, "i"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const-string v1, "m"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const-string v1, "p"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const-string v1, "c"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    const-string v1, "f"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    const-string v1, "e"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lo/StatementResponse_WaiverJsonAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lo/setTime;->onNavigationEvent(Lo/StatementResponse_WaiverJsonAdapter;)V

    return-void
.end method
