.class public final Lo/TargetNav;
.super Lo/SlotMachinePlayResponseJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/FlowJsonAdapter;

.field private extraCallback:Z

.field private onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

.field private final onNavigationEvent:Lo/setHeaderImage;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V
    .locals 1

    new-instance v0, Lo/setHeaderImage;

    invoke-direct {v0, p1, p3, p4, p5}, Lo/setHeaderImage;-><init>(Landroid/content/Context;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    invoke-direct {p0, p2, v0}, Lo/TargetNav;-><init>(Ljava/lang/String;Lo/setHeaderImage;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lo/setHeaderImage;)V
    .locals 0

    invoke-direct {p0}, Lo/SlotMachinePlayResponseJsonAdapter;-><init>()V

    iput-object p1, p0, Lo/TargetNav;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/TargetNav;->onNavigationEvent:Lo/setHeaderImage;

    new-instance p1, Lo/FlowJsonAdapter;

    invoke-direct {p1}, Lo/FlowJsonAdapter;-><init>()V

    iput-object p1, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    invoke-static {}, Lo/getParcel;->mayLaunchUrl()Lo/NBAResponse;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/NBAResponse;->onPostMessage(Lo/setHeaderImage;)V

    return-void
.end method

.method private final extraCallback()V
    .locals 2

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/TargetNav;->onNavigationEvent:Lo/setHeaderImage;

    iget-object v1, p0, Lo/TargetNav;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setHeaderImage;->ICustomTabsCallback(Ljava/lang/String;)Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    move-result-object v0

    iput-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object v1, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    invoke-virtual {v1, v0}, Lo/FlowJsonAdapter;->onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback(Lo/ParentEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    iput-object p1, v0, Lo/FlowJsonAdapter;->ICustomTabsCallback:Lo/ParentEntity;

    iget-object p1, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    invoke-virtual {v0, p1}, Lo/FlowJsonAdapter;->onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/setCurrentItem$default;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/setCurrentItem$default;)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/TargetNav;->extraCallback:Z

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setLastItem;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lo/NBAResponse;->onMessageChannelReady(Lo/setLastItem;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "gw"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/TargetNav;->extraCallback()V

    :cond_0
    invoke-static {p1}, Lo/NBAResponse;->onMessageChannelReady(Lo/setLastItem;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "_skipMediation"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/TargetNav;->extraCallback()V

    :cond_1
    iget-object v0, p1, Lo/setLastItem;->asInterface:Lo/WinLuckyNumberClaim;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lo/TargetNav;->extraCallback()V

    :cond_2
    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/setLastItem;)Z

    move-result p1

    return p1

    :cond_3
    invoke-static {}, Lo/getParcel;->mayLaunchUrl()Lo/NBAResponse;

    move-result-object v0

    invoke-static {p1}, Lo/NBAResponse;->onMessageChannelReady(Lo/setLastItem;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "_ad"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/TargetNav;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lo/NBAResponse;->extraCallback(Lo/setLastItem;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lo/TargetNav;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lo/NBAResponse;->ICustomTabsCallback(Lo/setLastItem;Ljava/lang/String;)Lo/Meta$$Parcelable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean p1, v0, Lo/Meta$$Parcelable;->onPostMessage:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lo/Meta$$Parcelable;->onNavigationEvent()Z

    invoke-static {}, Lo/TargetNavJsonAdapter;->extraCallback()Lo/TargetNavJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/TargetNavJsonAdapter;->onMessageChannelReady()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lo/TargetNavJsonAdapter;->extraCallback()Lo/TargetNavJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/TargetNavJsonAdapter;->onPostMessage()V

    :goto_0
    iget-object p1, v0, Lo/Meta$$Parcelable;->ICustomTabsCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iput-object p1, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    iget-object p1, v0, Lo/Meta$$Parcelable;->onNavigationEvent:Lo/setBackgroundImage;

    iget-object v1, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    invoke-virtual {p1, v1}, Lo/setBackgroundImage;->extraCallback(Lo/FlowJsonAdapter;)V

    iget-object p1, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    iget-object v1, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {p1, v1}, Lo/FlowJsonAdapter;->onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V

    iget-boolean p1, v0, Lo/Meta$$Parcelable;->onTransact:Z

    return p1

    :cond_6
    invoke-direct {p0}, Lo/TargetNav;->extraCallback()V

    invoke-static {}, Lo/TargetNavJsonAdapter;->extraCallback()Lo/TargetNavJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/TargetNavJsonAdapter;->onMessageChannelReady()V

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v0, p1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/setLastItem;)Z

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/setCurrentItem$default;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->ICustomTabsCallback$Stub$Proxy()Lo/setCurrentItem$default;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ICustomTabsService()Lo/getEventName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->ICustomTabsService()Lo/getEventName;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final INotificationSideChannel$Default()Lo/PendingUsers;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAdListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final INotificationSideChannel$Stub()Lo/StatisticsItemJsonAdapter;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAppEventListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final IPostMessageService()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->IPostMessageService()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final IconCompatParcelizer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lo/TargetNav;->extraCallback:Z

    invoke-virtual {v0, v1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Z)V

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v0}, Lo/clone;->IconCompatParcelizer()V

    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Lo/CredProtectResponseJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    iput-object p1, v0, Lo/FlowJsonAdapter;->asBinder:Lo/CredProtectResponseJsonAdapter;

    iget-object p1, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    invoke-virtual {v0, p1}, Lo/FlowJsonAdapter;->onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/StatisticsItemJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    iput-object p1, v0, Lo/FlowJsonAdapter;->extraCallback:Lo/StatisticsItemJsonAdapter;

    iget-object p1, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    invoke-virtual {v0, p1}, Lo/FlowJsonAdapter;->onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/WinLuckyNumberResponseJsonAdapter;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getVideoController not implemented for interstitials"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback(Lo/setStartingAngle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    iput-object p1, v0, Lo/FlowJsonAdapter;->onMessageChannelReady:Lo/setStartingAngle;

    iget-object p1, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    invoke-virtual {v0, p1}, Lo/FlowJsonAdapter;->onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V

    :cond_0
    return-void
.end method

.method public final extraCommand()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->extraCommand()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final mayLaunchUrl()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->mayLaunchUrl()V

    :cond_0
    return-void
.end method

.method public final newSession()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->newSession()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/TemplatePropertiesMachineJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lo/TargetNav;->extraCallback()V

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/DeviceAttrResponse;->onNavigationEvent(Lo/TemplatePropertiesMachineJsonAdapter;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/PendingUsers;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    iput-object p1, v0, Lo/FlowJsonAdapter;->onPostMessage:Lo/PendingUsers;

    iget-object p1, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    invoke-virtual {v0, p1}, Lo/FlowJsonAdapter;->onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/SpinTheWheelResponseJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    iput-object p1, v0, Lo/FlowJsonAdapter;->onNavigationEvent:Lo/SpinTheWheelResponseJsonAdapter;

    iget-object p1, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/TargetNav;->ICustomTabsCallback:Lo/FlowJsonAdapter;

    invoke-virtual {v0, p1}, Lo/FlowJsonAdapter;->onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/UserWinningStatisticsJsonAdapter;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/setFlippedHorizontally;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setPlayStorePurchaseParams is deprecated and should not be called."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(Lo/setMaxCropResultSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "setInAppPurchaseListener is deprecated and should not be called."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lo/TargetNav;->extraCallback()V

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/DeviceAttrResponse;->onPostMessage(Z)V

    :cond_0
    return-void
.end method

.method public final postMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->postMessage()V

    :cond_0
    return-void
.end method

.method public final requestPostMessageChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->requestPostMessageChannel()V

    :cond_0
    return-void
.end method

.method public final setDefaultImpl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAdUnitId not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t_()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/clone;->t_()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final updateVisuals()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->updateVisuals()V

    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final validateRelationship()Lo/TrophySectionsResponseJsonAdapter;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w_()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/clone;->w_()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final warmup()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TargetNav;->onMessageChannelReady:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->warmup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
