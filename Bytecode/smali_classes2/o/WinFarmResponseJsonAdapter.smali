.class public final Lo/WinFarmResponseJsonAdapter;
.super Lo/RedemptionViewJsonAdapter;


# instance fields
.field private onNavigationEvent:Lo/PendingUsers;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/RedemptionViewJsonAdapter;-><init>()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/WinFarmResponseJsonAdapter;)Lo/PendingUsers;
    .locals 0

    iget-object p0, p0, Lo/WinFarmResponseJsonAdapter;->onNavigationEvent:Lo/PendingUsers;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getSignInMethods;Lo/setCurrentItem$default;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final extraCallback(Lo/Actionable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final extraCallback(Lo/PendingUsers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lo/WinFarmResponseJsonAdapter;->onNavigationEvent:Lo/PendingUsers;

    return-void
.end method

.method public final onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onMessageChannelReady(Lo/activateCredProtect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onNavigationEvent()Lo/PayoutClaimSlotMachineResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lo/WinItemJsonAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/WinItemJsonAdapter;-><init>(Lo/WinFarmResponseJsonAdapter;Lo/WinFarmResponse;)V

    return-object v0
.end method

.method public final onPostMessage(Lo/StatementResponse$StatementDetails$CardLimits;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final onPostMessage(Lo/TemplatePropertiesMachineJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
