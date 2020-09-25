.class public final Lo/WinItem;
.super Lo/SlotMachinePlayResponseJsonAdapter;


# instance fields
.field private ICustomTabsCallback:Lo/PendingUsers;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/SlotMachinePlayResponseJsonAdapter;-><init>()V

    return-void
.end method

.method static synthetic onPostMessage(Lo/WinItem;)Lo/PendingUsers;
    .locals 0

    iget-object p0, p0, Lo/WinItem;->ICustomTabsCallback:Lo/PendingUsers;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback(Lo/ParentEntity;)V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setCurrentItem$default;)V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setLastItem;)Z
    .locals 1

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lo/getText1;->onPostMessage(Ljava/lang/String;)V

    sget-object p1, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/WinLuckyNumberClaimResponseJsonAdapter;

    invoke-direct {v0, p0}, Lo/WinLuckyNumberClaimResponseJsonAdapter;-><init>(Lo/WinItem;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/setCurrentItem$default;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ICustomTabsService()Lo/getEventName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final INotificationSideChannel$Default()Lo/PendingUsers;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final INotificationSideChannel$Stub()Lo/StatisticsItemJsonAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final IPostMessageService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final IconCompatParcelizer()V
    .locals 0

    return-void
.end method

.method public final extraCallback(Lo/CredProtectResponseJsonAdapter;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Lo/StatisticsItemJsonAdapter;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Lo/WinLuckyNumberResponseJsonAdapter;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Lo/setStartingAngle;)V
    .locals 0

    return-void
.end method

.method public final extraCommand()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final mayLaunchUrl()V
    .locals 0

    return-void
.end method

.method public final newSession()V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/TemplatePropertiesMachineJsonAdapter;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/PendingUsers;)V
    .locals 0

    iput-object p1, p0, Lo/WinItem;->ICustomTabsCallback:Lo/PendingUsers;

    return-void
.end method

.method public final onPostMessage(Lo/SpinTheWheelResponseJsonAdapter;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/UserWinningStatisticsJsonAdapter;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/setFlippedHorizontally;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/setMaxCropResultSize;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 0

    return-void
.end method

.method public final postMessage()V
    .locals 0

    return-void
.end method

.method public final requestPostMessageChannel()V
    .locals 0

    return-void
.end method

.method public final setDefaultImpl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final t_()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final updateVisuals()V
    .locals 0

    return-void
.end method

.method public final validateRelationship()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final w_()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final warmup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
