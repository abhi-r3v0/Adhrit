.class public final Lo/DataListItem;
.super Lo/getTotalCreditLimit;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/DataItemBackgroundJsonAdapter;

.field private final onMessageChannelReady:Lo/getFinanceCharges$ICustomTabsCallback;

.field private final onNavigationEvent:Lo/getRewardsClosingBalance;

.field private final onPostMessage:Lo/editSignupDetails;


# direct methods
.method public constructor <init>(Lo/DataItemBackgroundJsonAdapter;)V
    .locals 5

    const-string v0, ""

    invoke-direct {p0}, Lo/getTotalCreditLimit;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/DataListItem;->ICustomTabsCallback:Ljava/util/List;

    new-instance v1, Lo/getRewardsClosingBalance;

    invoke-direct {v1}, Lo/getRewardsClosingBalance;-><init>()V

    iput-object v1, p0, Lo/DataListItem;->onNavigationEvent:Lo/getRewardsClosingBalance;

    iput-object p1, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lo/DataItemBackgroundJsonAdapter;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_2

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lo/enableDarkMode;

    if-eqz v4, :cond_1

    check-cast v3, Lo/enableDarkMode;

    goto :goto_1

    :cond_1
    new-instance v3, Lo/whatsappEnabled;

    invoke-direct {v3, v2}, Lo/whatsappEnabled;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_0

    iget-object v2, p0, Lo/DataListItem;->ICustomTabsCallback:Ljava/util/List;

    new-instance v4, Lo/editSignupDetails;

    invoke-direct {v4, v3}, Lo/editSignupDetails;-><init>(Lo/enableDarkMode;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :try_start_1
    iget-object p1, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {p1}, Lo/DataItemBackgroundJsonAdapter;->onMessageChannelReady()Lo/enableDarkMode;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v2, Lo/editSignupDetails;

    invoke-direct {v2, p1}, Lo/editSignupDetails;-><init>(Lo/enableDarkMode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move-object v2, v1

    :goto_2
    iput-object v2, p0, Lo/DataListItem;->onPostMessage:Lo/editSignupDetails;

    :try_start_2
    iget-object p1, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {p1}, Lo/DataItemBackgroundJsonAdapter;->ICustomTabsService$Stub$Proxy()Lo/credProtectDeactivated;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p1, Lo/showUPIManagementScreen;

    iget-object v2, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v2}, Lo/DataItemBackgroundJsonAdapter;->ICustomTabsService$Stub$Proxy()Lo/credProtectDeactivated;

    move-result-object v2

    invoke-direct {p1, v2}, Lo/showUPIManagementScreen;-><init>(Lo/credProtectDeactivated;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p1

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iput-object v1, p0, Lo/DataListItem;->onMessageChannelReady:Lo/getFinanceCharges$ICustomTabsCallback;

    return-void
.end method

.method private final ICustomTabsCallback$Stub$Proxy()Lo/getEventName;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v0}, Lo/DataItemBackgroundJsonAdapter;->postMessage()Lo/getEventName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v0}, Lo/DataItemBackgroundJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Lo/getRewardsClosingBalance;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v0}, Lo/DataItemBackgroundJsonAdapter;->newSession()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DataListItem;->onNavigationEvent:Lo/getRewardsClosingBalance;

    iget-object v1, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v1}, Lo/DataItemBackgroundJsonAdapter;->newSession()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getRewardsClosingBalance;->onNavigationEvent(Lo/TrophySectionsResponseJsonAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lo/DataListItem;->onNavigationEvent:Lo/getRewardsClosingBalance;

    return-object v0
.end method

.method public final ICustomTabsService()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v0}, Lo/DataItemBackgroundJsonAdapter;->mayLaunchUrl()Lo/getEventName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asBinder()Ljava/lang/Double;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v1}, Lo/DataItemBackgroundJsonAdapter;->onRelationshipValidationResult()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, ""

    invoke-static {v2, v1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final asInterface()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v0}, Lo/DataItemBackgroundJsonAdapter;->onTransact()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final extraCallback()Lo/getFinanceCharges$onPostMessage;
    .locals 1

    iget-object v0, p0, Lo/DataListItem;->onPostMessage:Lo/editSignupDetails;

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v0}, Lo/DataItemBackgroundJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v0}, Lo/DataItemBackgroundJsonAdapter;->onPostMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPostMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/DataListItem;->ICustomTabsCallback:Ljava/util/List;

    return-object v0
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v0}, Lo/DataItemBackgroundJsonAdapter;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/DataListItem;->extraCallback:Lo/DataItemBackgroundJsonAdapter;

    invoke-interface {v0}, Lo/DataItemBackgroundJsonAdapter;->asInterface()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic warmup()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lo/DataListItem;->ICustomTabsCallback$Stub$Proxy()Lo/getEventName;

    move-result-object v0

    return-object v0
.end method