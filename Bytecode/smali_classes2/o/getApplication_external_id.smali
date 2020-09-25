.class public final Lo/getApplication_external_id;
.super Lo/SlabLevelMeta;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

.field private final ICustomTabsCallback$Stub:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsService:Lo/activateCredProtect;

.field private final asBinder:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/StatementResponse$StatementDetails$CardLimits;

.field private final extraCallback:Lo/Actionable;

.field private final extraCommand:Lo/DataListJsonAdapter;

.field private final getInterfaceDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mayLaunchUrl:Ljava/lang/Object;

.field private final newSession:Ljava/lang/String;

.field private final onMessageChannelReady:Landroid/content/Context;

.field private final onNavigationEvent:Lo/PendingUsers;

.field private final onPostMessage:Lo/BankAccountData;

.field private final onRelationshipValidationResult:Lo/getSignInMethods;

.field private final onTransact:Lo/setCurrentItem$default;

.field private final postMessage:Lo/StatementPeriod;

.field private updateVisuals:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/clone;",
            ">;"
        }
    .end annotation
.end field

.field private final warmup:Lo/TemplatePropertiesMachineJsonAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/PendingUsers;Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;Lo/Actionable;Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;Lo/fromMediaItemList;Lo/fromMediaItemList;Lo/activateCredProtect;Lo/TemplatePropertiesMachineJsonAdapter;Lo/StatementPeriod;Lo/getSignInMethods;Lo/setCurrentItem$default;Lo/StatementResponse$StatementDetails$CardLimits;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lo/BankAccountData;",
            "Lo/DataListJsonAdapter;",
            "Lo/PendingUsers;",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;",
            "Lo/Actionable;",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;",
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;",
            ">;",
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;",
            "Lo/activateCredProtect;",
            "Lo/TemplatePropertiesMachineJsonAdapter;",
            "Lo/StatementPeriod;",
            "Lo/getSignInMethods;",
            "Lo/setCurrentItem$default;",
            "Lo/StatementResponse$StatementDetails$CardLimits;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lo/SlabLevelMeta;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lo/getApplication_external_id;->mayLaunchUrl:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lo/getApplication_external_id;->onMessageChannelReady:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lo/getApplication_external_id;->newSession:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lo/getApplication_external_id;->onPostMessage:Lo/BankAccountData;

    move-object v1, p4

    iput-object v1, v0, Lo/getApplication_external_id;->extraCommand:Lo/DataListJsonAdapter;

    move-object v1, p5

    iput-object v1, v0, Lo/getApplication_external_id;->onNavigationEvent:Lo/PendingUsers;

    move-object v1, p8

    iput-object v1, v0, Lo/getApplication_external_id;->ICustomTabsCallback$Stub:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    move-object v1, p6

    iput-object v1, v0, Lo/getApplication_external_id;->ICustomTabsCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    move-object v1, p7

    iput-object v1, v0, Lo/getApplication_external_id;->extraCallback:Lo/Actionable;

    move-object v1, p9

    iput-object v1, v0, Lo/getApplication_external_id;->asBinder:Lo/fromMediaItemList;

    move-object v1, p10

    iput-object v1, v0, Lo/getApplication_external_id;->ICustomTabsCallback$Stub$Proxy:Lo/fromMediaItemList;

    move-object v1, p11

    iput-object v1, v0, Lo/getApplication_external_id;->ICustomTabsService:Lo/activateCredProtect;

    invoke-direct {p0}, Lo/getApplication_external_id;->ICustomTabsCallback$Stub()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/getApplication_external_id;->getInterfaceDescriptor:Ljava/util/List;

    move-object v1, p12

    iput-object v1, v0, Lo/getApplication_external_id;->warmup:Lo/TemplatePropertiesMachineJsonAdapter;

    move-object v1, p13

    iput-object v1, v0, Lo/getApplication_external_id;->postMessage:Lo/StatementPeriod;

    move-object/from16 v1, p14

    iput-object v1, v0, Lo/getApplication_external_id;->onRelationshipValidationResult:Lo/getSignInMethods;

    move-object/from16 v1, p15

    iput-object v1, v0, Lo/getApplication_external_id;->onTransact:Lo/setCurrentItem$default;

    move-object/from16 v1, p16

    iput-object v1, v0, Lo/getApplication_external_id;->asInterface:Lo/StatementResponse$StatementDetails$CardLimits;

    iget-object v1, v0, Lo/getApplication_external_id;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v1}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    return-void
.end method

.method private final ICustomTabsCallback(I)V
    .locals 1

    iget-object p1, p0, Lo/getApplication_external_id;->onNavigationEvent:Lo/PendingUsers;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Lo/PendingUsers;->onNavigationEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed calling onAdFailedToLoad."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private final ICustomTabsCallback$Stub()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lo/getApplication_external_id;->ICustomTabsCallback$Stub:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lo/getApplication_external_id;->ICustomTabsCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lo/getApplication_external_id;->extraCallback:Lo/Actionable;

    if-eqz v1, :cond_2

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lo/getApplication_external_id;->asBinder:Lo/fromMediaItemList;

    invoke-virtual {v1}, Lo/fromMediaItemList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method static synthetic extraCallback(Lo/getApplication_external_id;Lo/setLastItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/getApplication_external_id;->extraCallback(Lo/setLastItem;)V

    return-void
.end method

.method private final extraCallback(Lo/setLastItem;)V
    .locals 8

    sget-object v0, Lo/WinningTypes;->MediaDescriptionCompatApi23:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/getApplication_external_id;->extraCallback:Lo/Actionable;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/getApplication_external_id;->ICustomTabsCallback(I)V

    return-void

    :cond_0
    new-instance v7, Lo/Item;

    iget-object v1, p0, Lo/getApplication_external_id;->onMessageChannelReady:Landroid/content/Context;

    iget-object v2, p0, Lo/getApplication_external_id;->postMessage:Lo/StatementPeriod;

    iget-object v3, p0, Lo/getApplication_external_id;->onTransact:Lo/setCurrentItem$default;

    iget-object v4, p0, Lo/getApplication_external_id;->newSession:Ljava/lang/String;

    iget-object v5, p0, Lo/getApplication_external_id;->onPostMessage:Lo/BankAccountData;

    iget-object v6, p0, Lo/getApplication_external_id;->extraCommand:Lo/DataListJsonAdapter;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/Item;-><init>(Landroid/content/Context;Lo/StatementPeriod;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/getApplication_external_id;->updateVisuals:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lo/getApplication_external_id;->onRelationshipValidationResult:Lo/getSignInMethods;

    const-string v1, "setOnPublisherAdViewLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->INotificationSideChannel:Lo/getSignInMethods;

    iget-object v0, p0, Lo/getApplication_external_id;->asInterface:Lo/StatementResponse$StatementDetails$CardLimits;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/StatementResponse$StatementDetails$CardLimits;->extraCallback()Lo/StatisticsItemJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getApplication_external_id;->asInterface:Lo/StatementResponse$StatementDetails$CardLimits;

    invoke-virtual {v0}, Lo/StatementResponse$StatementDetails$CardLimits;->extraCallback()Lo/StatisticsItemJsonAdapter;

    move-result-object v0

    invoke-virtual {v7, v0}, Lo/DeviceAttrResponse;->extraCallback(Lo/StatisticsItemJsonAdapter;)V

    :cond_1
    iget-object v0, p0, Lo/getApplication_external_id;->asInterface:Lo/StatementResponse$StatementDetails$CardLimits;

    invoke-virtual {v0}, Lo/StatementResponse$StatementDetails$CardLimits;->onMessageChannelReady()Z

    move-result v0

    invoke-virtual {v7, v0}, Lo/DeviceAttrResponse;->onPostMessage(Z)V

    :cond_2
    iget-object v0, p0, Lo/getApplication_external_id;->ICustomTabsCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    iget-object v0, p0, Lo/getApplication_external_id;->extraCallback:Lo/Actionable;

    const-string v1, "setOnUnifiedNativeAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    iget-object v0, p0, Lo/getApplication_external_id;->ICustomTabsCallback$Stub:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    iget-object v0, p0, Lo/getApplication_external_id;->asBinder:Lo/fromMediaItemList;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    iget-object v0, p0, Lo/getApplication_external_id;->ICustomTabsCallback$Stub$Proxy:Lo/fromMediaItemList;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    iget-object v0, p0, Lo/getApplication_external_id;->ICustomTabsService:Lo/activateCredProtect;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/Item;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub:Lo/activateCredProtect;

    invoke-direct {p0}, Lo/getApplication_external_id;->ICustomTabsCallback$Stub()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lo/Item;->extraCallback(Ljava/util/List;)V

    iget-object v0, p0, Lo/getApplication_external_id;->onNavigationEvent:Lo/PendingUsers;

    invoke-virtual {v7, v0}, Lo/DeviceAttrResponse;->onPostMessage(Lo/PendingUsers;)V

    iget-object v0, p0, Lo/getApplication_external_id;->warmup:Lo/TemplatePropertiesMachineJsonAdapter;

    invoke-virtual {v7, v0}, Lo/DeviceAttrResponse;->onNavigationEvent(Lo/TemplatePropertiesMachineJsonAdapter;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lo/getApplication_external_id;->onPostMessage()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lo/getApplication_external_id;->onRelationshipValidationResult:Lo/getSignInMethods;

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v7, v0}, Lo/Item;->onMessageChannelReady(Ljava/util/List;)V

    invoke-direct {p0}, Lo/getApplication_external_id;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const-string v1, "ina"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-object v0, p0, Lo/getApplication_external_id;->onRelationshipValidationResult:Lo/getSignInMethods;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const-string v1, "iba"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    invoke-virtual {v7, p1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/setLastItem;)Z

    return-void
.end method

.method static synthetic extraCallback(Lo/getApplication_external_id;)Z
    .locals 0

    invoke-direct {p0}, Lo/getApplication_external_id;->onMessageChannelReady()Z

    move-result p0

    return p0
.end method

.method private static onMessageChannelReady(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final onMessageChannelReady()Z
    .locals 2

    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplBase:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getApplication_external_id;->onRelationshipValidationResult:Lo/getSignInMethods;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic onNavigationEvent(Lo/getApplication_external_id;Lo/setLastItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/getApplication_external_id;->onNavigationEvent(Lo/setLastItem;I)V

    return-void
.end method

.method private final onNavigationEvent(Lo/setLastItem;I)V
    .locals 8

    sget-object v0, Lo/WinningTypes;->MediaDescriptionCompatApi23:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/getApplication_external_id;->extraCallback:Lo/Actionable;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/getApplication_external_id;->ICustomTabsCallback(I)V

    return-void

    :cond_0
    new-instance v7, Lo/setPanGiven;

    iget-object v1, p0, Lo/getApplication_external_id;->onMessageChannelReady:Landroid/content/Context;

    iget-object v2, p0, Lo/getApplication_external_id;->postMessage:Lo/StatementPeriod;

    invoke-static {v1}, Lo/setCurrentItem$default;->ICustomTabsCallback(Landroid/content/Context;)Lo/setCurrentItem$default;

    move-result-object v3

    iget-object v4, p0, Lo/getApplication_external_id;->newSession:Ljava/lang/String;

    iget-object v5, p0, Lo/getApplication_external_id;->onPostMessage:Lo/BankAccountData;

    iget-object v6, p0, Lo/getApplication_external_id;->extraCommand:Lo/DataListJsonAdapter;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/setPanGiven;-><init>(Landroid/content/Context;Lo/StatementPeriod;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/getApplication_external_id;->updateVisuals:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lo/getApplication_external_id;->ICustomTabsCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    iget-object v0, p0, Lo/getApplication_external_id;->extraCallback:Lo/Actionable;

    const-string v1, "setOnUnifiedNativeAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    iget-object v0, p0, Lo/getApplication_external_id;->ICustomTabsCallback$Stub:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    iget-object v0, p0, Lo/getApplication_external_id;->asBinder:Lo/fromMediaItemList;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    iget-object v0, p0, Lo/getApplication_external_id;->onNavigationEvent:Lo/PendingUsers;

    invoke-virtual {v7, v0}, Lo/DeviceAttrResponse;->onPostMessage(Lo/PendingUsers;)V

    iget-object v0, p0, Lo/getApplication_external_id;->ICustomTabsCallback$Stub$Proxy:Lo/fromMediaItemList;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    invoke-direct {p0}, Lo/getApplication_external_id;->ICustomTabsCallback$Stub()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lo/setPanGiven;->onMessageChannelReady(Ljava/util/List;)V

    iget-object v0, p0, Lo/getApplication_external_id;->ICustomTabsService:Lo/activateCredProtect;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object v0, v1, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub:Lo/activateCredProtect;

    iget-object v0, p0, Lo/getApplication_external_id;->warmup:Lo/TemplatePropertiesMachineJsonAdapter;

    invoke-virtual {v7, v0}, Lo/DeviceAttrResponse;->onNavigationEvent(Lo/TemplatePropertiesMachineJsonAdapter;)V

    invoke-virtual {v7, p2}, Lo/setPanGiven;->ICustomTabsCallback(I)V

    invoke-virtual {v7, p1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/setLastItem;)Z

    return-void
.end method

.method static synthetic onPostMessage(Lo/getApplication_external_id;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/getApplication_external_id;->mayLaunchUrl:Ljava/lang/Object;

    return-object p0
.end method

.method private final onPostMessage()Z
    .locals 1

    iget-object v0, p0, Lo/getApplication_external_id;->ICustomTabsCallback:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getApplication_external_id;->ICustomTabsCallback$Stub:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getApplication_external_id;->extraCallback:Lo/Actionable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getApplication_external_id;->asBinder:Lo/fromMediaItemList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/fromMediaItemList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 3

    iget-object v0, p0, Lo/getApplication_external_id;->mayLaunchUrl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/getApplication_external_id;->updateVisuals:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/getApplication_external_id;->updateVisuals:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/clone;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/DeviceAttrResponse;->IPostMessageService()Z

    move-result v2

    :cond_0
    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lo/getApplication_external_id;->mayLaunchUrl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/getApplication_external_id;->updateVisuals:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/getApplication_external_id;->updateVisuals:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/clone;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/clone;->w_()Ljava/lang/String;

    move-result-object v2

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(Lo/setLastItem;)V
    .locals 1

    new-instance v0, Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, p0, p1}, Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;-><init>(Lo/getApplication_external_id;Lo/setLastItem;)V

    invoke-static {v0}, Lo/getApplication_external_id;->onMessageChannelReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setLastItem;I)V
    .locals 1

    if-lez p2, :cond_0

    new-instance v0, Lo/EligibilityResponseClass;

    invoke-direct {v0, p0, p1, p2}, Lo/EligibilityResponseClass;-><init>(Lo/getApplication_external_id;Lo/setLastItem;I)V

    invoke-static {v0}, Lo/getApplication_external_id;->onMessageChannelReady(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of ads has to be more than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lo/getApplication_external_id;->mayLaunchUrl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/getApplication_external_id;->updateVisuals:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/getApplication_external_id;->updateVisuals:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/clone;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/clone;->t_()Ljava/lang/String;

    move-result-object v2

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
