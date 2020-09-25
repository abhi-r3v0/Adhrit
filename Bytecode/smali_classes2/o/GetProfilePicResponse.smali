.class final Lo/GetProfilePicResponse;
.super Lo/RedemptionView;


# instance fields
.field private final ICustomTabsCallback:Lo/PendingUsers;


# direct methods
.method constructor <init>(Lo/PendingUsers;)V
    .locals 0

    invoke-direct {p0}, Lo/RedemptionView;-><init>()V

    iput-object p1, p0, Lo/GetProfilePicResponse;->ICustomTabsCallback:Lo/PendingUsers;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lo/NBAResponseJsonAdapter;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lo/WinningTypes;->fromMediaItemList:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v0, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    sget-object v3, Lo/NBACardJsonAdapter;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lo/getParcel;->mayLaunchUrl()Lo/NBAResponse;

    move-result-object v0

    invoke-virtual {v0}, Lo/NBAResponse;->extraCallback()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lo/GetProfilePicResponse;->ICustomTabsCallback:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->ICustomTabsCallback()V

    return-void
.end method

.method public final extraCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/GetProfilePicResponse;->ICustomTabsCallback:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->extraCallback()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/GetProfilePicResponse;->ICustomTabsCallback:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->onMessageChannelReady()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/GetProfilePicResponse;->ICustomTabsCallback:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->onNavigationEvent()V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/GetProfilePicResponse;->ICustomTabsCallback:Lo/PendingUsers;

    invoke-interface {v0, p1}, Lo/PendingUsers;->onNavigationEvent(I)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/GetProfilePicResponse;->ICustomTabsCallback:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->onPostMessage()V

    return-void
.end method

.method public final onTransact()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/GetProfilePicResponse;->ICustomTabsCallback:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->onTransact()V

    return-void
.end method
