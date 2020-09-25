.class final Lo/WinItemJsonAdapter;
.super Lo/SlabLevelMeta;


# instance fields
.field final synthetic onNavigationEvent:Lo/WinFarmResponseJsonAdapter;


# direct methods
.method private constructor <init>(Lo/WinFarmResponseJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/WinItemJsonAdapter;->onNavigationEvent:Lo/WinFarmResponseJsonAdapter;

    invoke-direct {p0}, Lo/SlabLevelMeta;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/WinFarmResponseJsonAdapter;Lo/WinFarmResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/WinItemJsonAdapter;-><init>(Lo/WinFarmResponseJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/setLastItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo/WinItemJsonAdapter;->onMessageChannelReady(Lo/setLastItem;I)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setLastItem;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lo/getText1;->onPostMessage(Ljava/lang/String;)V

    sget-object p1, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance p2, Lo/WinLuckyNumberCard;

    invoke-direct {p2, p0}, Lo/WinLuckyNumberCard;-><init>(Lo/WinItemJsonAdapter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
