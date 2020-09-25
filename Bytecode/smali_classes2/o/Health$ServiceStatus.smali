.class public final Lo/Health$ServiceStatus;
.super Lo/UpiData;


# instance fields
.field private final ICustomTabsCallback:Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;


# direct methods
.method public constructor <init>(Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Lo/UpiData;-><init>()V

    iput-object p1, p0, Lo/Health$ServiceStatus;->ICustomTabsCallback:Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;

    return-void
.end method

.method private static onNavigationEvent(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Server parameters: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object v0, p0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getQos;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/Health$ServiceStatus;->ICustomTabsCallback:Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->ICustomTabsCallback()Lo/LoanDetailsDialog$realDismiss$$inlined$executeOnResume$1;

    move-result-object v0

    invoke-static {v0}, Lo/getQos;->extraCallback(Lo/LoanDetailsDialog$realDismiss$$inlined$executeOnResume$1;)Lo/getQos;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback([BLjava/lang/String;Landroid/os/Bundle;Lo/getEventName;Lo/CredUpiPresenter$3$onStateChanged$$inlined$executeOnResume$1;Lo/PromotionalCardsJsonAdapter;Lo/setCurrentItem$default;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lo/LifecycleUtils$executeOnResume$1;

    invoke-direct {v0, p0, p5, p6}, Lo/LifecycleUtils$executeOnResume$1;-><init>(Lo/Health$ServiceStatus;Lo/CredUpiPresenter$3$onStateChanged$$inlined$executeOnResume$1;Lo/PromotionalCardsJsonAdapter;)V

    iget-object p5, p0, Lo/Health$ServiceStatus;->ICustomTabsCallback:Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;

    new-instance p6, Lo/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$1;

    invoke-static {p4}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-static {p2}, Lo/Health$ServiceStatus;->onNavigationEvent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p6, p4, p1, p2, p3}, Lo/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$1;-><init>(Landroid/content/Context;[BLandroid/os/Bundle;Landroid/os/Bundle;)V

    iget p1, p7, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    iget p2, p7, Lo/setCurrentItem$default;->onNavigationEvent:I

    iget-object p3, p7, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lo/setAmount;->onNavigationEvent(IILjava/lang/String;)Lo/getRewardsExpired;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " does not support banner."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/WorkFlowUpdateRequestJsonAdapter;->extraCallback(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Adapter failed to render banner ad."

    invoke-static {p2, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final extraCallback()Lo/TrophySectionsResponseJsonAdapter;
    .locals 3

    iget-object v0, p0, Lo/Health$ServiceStatus;->ICustomTabsCallback:Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;

    instance-of v1, v0, Lo/getItems;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    check-cast v0, Lo/getItems;

    invoke-interface {v0}, Lo/getItems;->getVideoController()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final onMessageChannelReady(Lo/getEventName;Ljava/lang/String;Landroid/os/Bundle;Lo/SetMPinDialog$setData$1$$special$$inlined$executeOnResume$1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lo/getUpiBankListLiveData;

    invoke-direct {v0, p0, p4}, Lo/getUpiBankListLiveData;-><init>(Lo/Health$ServiceStatus;Lo/SetMPinDialog$setData$1$$special$$inlined$executeOnResume$1;)V

    iget-object p4, p0, Lo/Health$ServiceStatus;->ICustomTabsCallback:Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;

    new-instance v1, Lo/CustomEmiSelectorDialog$settleSeekBar$$inlined$let$lambda$1$1;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "interstitial"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "rewarded"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "native"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "banner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    sget p2, Lo/WorkFlowUpdateRequest;->onPostMessage:I

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Internal Error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget p2, Lo/WorkFlowUpdateRequest;->onNavigationEvent:I

    goto :goto_1

    :cond_3
    sget p2, Lo/WorkFlowUpdateRequest;->ICustomTabsCallback:I

    goto :goto_1

    :cond_4
    sget p2, Lo/WorkFlowUpdateRequest;->extraCallback:I

    :goto_1
    invoke-direct {v1, p1, p2, p3}, Lo/CustomEmiSelectorDialog$settleSeekBar$$inlined$let$lambda$1$1;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    invoke-virtual {p4, v1, v0}, Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->extraCallback(Lo/CustomEmiSelectorDialog$settleSeekBar$$inlined$let$lambda$1$1;Lo/StashInstrumentSelectorDialog$realDismiss$$inlined$executeOnResume$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Error generating signals for RTB"

    invoke-static {p2, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch
.end method

.method public final onMessageChannelReady([BLjava/lang/String;Landroid/os/Bundle;Lo/getEventName;Lo/CredUpiPresenter$$special$$inlined$apply$lambda$1$1;Lo/PromotionalCardsJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lo/setConfigs;

    invoke-direct {v0, p0, p5, p6}, Lo/setConfigs;-><init>(Lo/Health$ServiceStatus;Lo/CredUpiPresenter$$special$$inlined$apply$lambda$1$1;Lo/PromotionalCardsJsonAdapter;)V

    iget-object p5, p0, Lo/Health$ServiceStatus;->ICustomTabsCallback:Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;

    new-instance p6, Lo/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$1;

    invoke-static {p4}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-static {p2}, Lo/Health$ServiceStatus;->onNavigationEvent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p6, p4, p1, p2, p3}, Lo/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$1;-><init>(Landroid/content/Context;[BLandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " does not support interstitial."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/WorkFlowUpdateRequestJsonAdapter;->extraCallback(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Adapter failed to render interstitial ad."

    invoke-static {p2, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final onNavigationEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v0}, Lo/StashProcessingDialog$realDismiss$$inlined$executeOnResume$1;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final onPostMessage()Lo/getQos;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/Health$ServiceStatus;->ICustomTabsCallback:Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/StashWithdrawalRouteManager$launchScreen$$inlined$executeOnResume$1;->onNavigationEvent()Lo/LoanDetailsDialog$realDismiss$$inlined$executeOnResume$1;

    move-result-object v0

    invoke-static {v0}, Lo/getQos;->extraCallback(Lo/LoanDetailsDialog$realDismiss$$inlined$executeOnResume$1;)Lo/getQos;

    move-result-object v0

    return-object v0
.end method
