.class public final Lo/GreetingCampaignInvitesResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/AuthProviderJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private ICustomTabsCallback$Stub:Landroid/content/Context;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

.field private final ICustomTabsService:Ljava/util/concurrent/atomic/AtomicInteger;

.field private asBinder:Lo/RedeemRequestData;

.field private asInterface:Lo/ReferralBottomSheetBackgroundJsonAdapter;

.field private extraCallback:Z

.field private final getInterfaceDescriptor:Ljava/lang/Object;

.field private newSession:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/ContactSyncResponse;

.field private onNavigationEvent:Lo/Data;

.field private final onPostMessage:Lo/ReferredContacts;

.field private onRelationshipValidationResult:Lo/DataListJsonAdapter;

.field private onTransact:Lo/ZeroSpinsLeftMetaJsonAdapter;

.field private requestPostMessageChannel:Lo/PaymentModeListResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final warmup:Lo/GreetingCardCreative;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    new-instance v0, Lo/ReferredContacts;

    invoke-direct {v0}, Lo/ReferredContacts;-><init>()V

    iput-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onPostMessage:Lo/ReferredContacts;

    new-instance v0, Lo/ContactSyncResponse;

    invoke-direct {v0}, Lo/ContactSyncResponse;-><init>()V

    iput-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady:Lo/ContactSyncResponse;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->extraCallback:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onTransact:Lo/ZeroSpinsLeftMetaJsonAdapter;

    iput-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asInterface:Lo/ReferralBottomSheetBackgroundJsonAdapter;

    iput-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asBinder:Lo/RedeemRequestData;

    iput-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsService:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lo/GreetingCardCreative;

    invoke-direct {v0, v1}, Lo/GreetingCardCreative;-><init>(Lo/GreetingCampaignResponse;)V

    iput-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->warmup:Lo/GreetingCardCreative;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor:Ljava/lang/Object;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/GreetingCampaignInvitesResponseJsonAdapter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    return-object p0
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic extraCallback(Lo/GreetingCampaignInvitesResponseJsonAdapter;)Lo/DataListJsonAdapter;
    .locals 0

    iget-object p0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onRelationshipValidationResult:Lo/DataListJsonAdapter;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/GreetingCampaignInvitesResponseJsonAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    return-object p0
.end method

.method private final onPostMessage(Landroid/content/Context;ZZ)Lo/ReferralBottomSheetBackgroundJsonAdapter;
    .locals 3

    sget-object v0, Lo/WinningTypes;->disconnect:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lo/component20;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Lo/WinningTypes;->unsubscribe:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lo/WinningTypes;->getServiceComponent:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    return-object v1

    :cond_3
    iget-object p2, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_7

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asBinder:Lo/RedeemRequestData;

    if-nez p3, :cond_5

    new-instance p3, Lo/RedeemRequestData;

    invoke-direct {p3}, Lo/RedeemRequestData;-><init>()V

    iput-object p3, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asBinder:Lo/RedeemRequestData;

    :cond_5
    iget-object p3, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asInterface:Lo/ReferralBottomSheetBackgroundJsonAdapter;

    if-nez p3, :cond_6

    new-instance p3, Lo/ReferralBottomSheetBackgroundJsonAdapter;

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asBinder:Lo/RedeemRequestData;

    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onRelationshipValidationResult:Lo/DataListJsonAdapter;

    invoke-static {p1, v1}, Lo/getApplication;->ICustomTabsCallback(Landroid/content/Context;Lo/DataListJsonAdapter;)Lo/getOperatingSystem;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lo/ReferralBottomSheetBackgroundJsonAdapter;-><init>(Lo/RedeemRequestData;Lo/getOperatingSystem;)V

    iput-object p3, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asInterface:Lo/ReferralBottomSheetBackgroundJsonAdapter;

    :cond_6
    iget-object p1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asInterface:Lo/ReferralBottomSheetBackgroundJsonAdapter;

    invoke-virtual {p1}, Lo/ReferralBottomSheetBackgroundJsonAdapter;->extraCallback()V

    const-string p1, "start fetching content..."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object p1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asInterface:Lo/ReferralBottomSheetBackgroundJsonAdapter;

    monitor-exit p2

    return-object p1

    :cond_7
    :goto_0
    monitor-exit p2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic onPostMessage(Lo/GreetingCampaignInvitesResponseJsonAdapter;)Lo/ZeroSpinsLeftMetaJsonAdapter;
    .locals 0

    iget-object p0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onTransact:Lo/ZeroSpinsLeftMetaJsonAdapter;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/ReferredContacts;
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onPostMessage:Lo/ReferredContacts;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->warmup:Lo/GreetingCardCreative;

    invoke-virtual {v0}, Lo/GreetingCardCreative;->ICustomTabsCallback()V

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    return-object v0
.end method

.method public final ICustomTabsService()I
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsService:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final asBinder()Landroid/content/res/Resources;
    .locals 4

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onRelationshipValidationResult:Lo/DataListJsonAdapter;

    iget-boolean v0, v0, Lo/DataListJsonAdapter;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    const-string v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final asInterface()Lo/Data;
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent:Lo/Data;

    return-object v0
.end method

.method public final extraCallback()Z
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->warmup:Lo/GreetingCardCreative;

    invoke-virtual {v0}, Lo/GreetingCardCreative;->onPostMessage()Z

    move-result v0

    return v0
.end method

.method public final getInterfaceDescriptor()Lo/ContactSyncResponse;
    .locals 2

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady:Lo/ContactSyncResponse;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic newSession()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-static {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/content/Context;)Lo/ReferralBottomSheetBackgroundJsonAdapter;
    .locals 2

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady:Lo/ContactSyncResponse;

    invoke-virtual {v0}, Lo/ContactSyncResponse;->ICustomTabsCallback()Z

    move-result v0

    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady:Lo/ContactSyncResponse;

    invoke-virtual {v1}, Lo/ContactSyncResponse;->onPostMessage()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onPostMessage(Landroid/content/Context;ZZ)Lo/ReferralBottomSheetBackgroundJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onRelationshipValidationResult:Lo/DataListJsonAdapter;

    invoke-static {v0, v1}, Lo/getApplication;->ICustomTabsCallback(Landroid/content/Context;Lo/DataListJsonAdapter;)Lo/getOperatingSystem;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/getOperatingSystem;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->warmup:Lo/GreetingCardCreative;

    invoke-virtual {v0}, Lo/GreetingCardCreative;->extraCallback()Z

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Lo/ZeroSpinsLeftMetaJsonAdapter;
    .locals 2

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onTransact:Lo/ZeroSpinsLeftMetaJsonAdapter;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Landroid/content/Context;Lo/DataListJsonAdapter;)V
    .locals 3

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->extraCallback:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iput-object p2, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onRelationshipValidationResult:Lo/DataListJsonAdapter;

    invoke-static {}, Lo/getParcel;->asInterface()Lo/RedeemRequestResponseJsonAdapter;

    move-result-object v1

    invoke-static {}, Lo/getParcel;->asBinder()Lo/GreetingCardResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/RedeemRequestResponseJsonAdapter;->onNavigationEvent(Lo/RedeemRequestDataJsonAdapter;)V

    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady:Lo/ContactSyncResponse;

    iget-object v2, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/content/Context;)V

    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady:Lo/ContactSyncResponse;

    invoke-virtual {v1, p0}, Lo/ContactSyncResponse;->onNavigationEvent(Lo/AuthProviderJsonAdapter;)V

    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iget-object v2, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onRelationshipValidationResult:Lo/DataListJsonAdapter;

    invoke-static {v1, v2}, Lo/getApplication;->ICustomTabsCallback(Landroid/content/Context;Lo/DataListJsonAdapter;)Lo/getOperatingSystem;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v1

    iget-object p2, p2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->newSession:Ljava/lang/String;

    new-instance p2, Lo/Data;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onRelationshipValidationResult:Lo/DataListJsonAdapter;

    invoke-direct {p2, p1, v1}, Lo/Data;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;)V

    iput-object p2, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent:Lo/Data;

    invoke-static {}, Lo/getParcel;->getInterfaceDescriptor()Lo/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;

    sget-object p1, Lo/WinningTypes;->AudioAttributesCompatParcelizer:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lo/ZeroSpinsLeftMetaJsonAdapter;

    invoke-direct {p1}, Lo/ZeroSpinsLeftMetaJsonAdapter;-><init>()V

    :goto_0
    iput-object p1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onTransact:Lo/ZeroSpinsLeftMetaJsonAdapter;

    new-instance p1, Lo/GreetingCampaignResponse;

    invoke-direct {p1, p0}, Lo/GreetingCampaignResponse;-><init>(Lo/GreetingCampaignInvitesResponseJsonAdapter;)V

    invoke-virtual {p1}, Lo/ContactReverseSyncResponse;->s_()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PaymentModeListResponseJsonAdapter;

    const-string p2, "AppState.registerCsiReporter"

    invoke-static {p1, p2}, Lo/FooterJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->extraCallback:Z

    invoke-virtual {p0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->warmup()Lo/PaymentModeListResponseJsonAdapter;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "content_vertical_opted_out"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, v2, v0, p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onPostMessage(Landroid/content/Context;ZZ)Lo/ReferralBottomSheetBackgroundJsonAdapter;

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onRelationshipValidationResult:Lo/DataListJsonAdapter;

    invoke-static {v0, v1}, Lo/getApplication;->ICustomTabsCallback(Landroid/content/Context;Lo/DataListJsonAdapter;)Lo/getOperatingSystem;

    move-result-object v0

    sget-object v1, Lo/WinningTypes;->onTransact:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lo/getOperatingSystem;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final onPostMessage()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onPostMessage(Z)V
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->warmup:Lo/GreetingCardCreative;

    invoke-virtual {v0, p1}, Lo/GreetingCardCreative;->onPostMessage(Z)V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsService:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final onTransact()V
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsService:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final warmup()Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-static {}, Lo/component20;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lo/WinningTypes;->getCallbacks:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->requestPostMessageChannel:Lo/PaymentModeListResponseJsonAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->requestPostMessageChannel:Lo/PaymentModeListResponseJsonAdapter;

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Lo/GreetingCampaignResponseJsonAdapter;

    invoke-direct {v1, p0}, Lo/GreetingCampaignResponseJsonAdapter;-><init>(Lo/GreetingCampaignInvitesResponseJsonAdapter;)V

    invoke-static {v1}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/util/concurrent/Callable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    iput-object v1, p0, Lo/GreetingCampaignInvitesResponseJsonAdapter;->requestPostMessageChannel:Lo/PaymentModeListResponseJsonAdapter;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object v0

    return-object v0
.end method
