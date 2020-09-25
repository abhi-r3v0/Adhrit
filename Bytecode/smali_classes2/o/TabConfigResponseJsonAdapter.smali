.class public final Lo/TabConfigResponseJsonAdapter;
.super Lo/IntroInfo;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/SyncBankRequestAccount;

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private onPostMessage:Lo/LockConfigData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/IntroInfo;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    invoke-interface {v1}, Lo/LockConfigData;->getNotifyChildrenChangedOptions()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    invoke-interface {v1, p1, p2}, Lo/LockConfigData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/SyncBankRequestAccount;)V
    .locals 1

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/SyncBankRequestAccount;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    invoke-interface {v1}, Lo/LockConfigData;->sendCustomAction()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final extraCallback()V
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    invoke-interface {v1}, Lo/LockConfigData;->getSessionToken()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final extraCallback(Lo/LockConfigData;)V
    .locals 1

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final extraCallback(Lo/openGameRewards;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    invoke-interface {v1, p1, p2}, Lo/LockConfigData;->extraCallback(Lo/openGameRewards;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    invoke-interface {v1}, Lo/LockConfigData;->search()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    invoke-interface {v1}, Lo/LockConfigData;->subscribe()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(I)V
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/SyncBankRequestAccount;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/SyncBankRequestAccount;

    invoke-interface {v1, p1}, Lo/SyncBankRequestAccount;->onNavigationEvent(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/SyncBankRequestAccount;

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

.method public final onPostMessage()V
    .locals 3

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/SyncBankRequestAccount;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/SyncBankRequestAccount;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lo/SyncBankRequestAccount;->onNavigationEvent(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/SyncBankRequestAccount;

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    invoke-interface {v1}, Lo/LockConfigData;->MediaBrowserCompat$CallbackHandler()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/InfoJsonAdapter;)V
    .locals 3

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/SyncBankRequestAccount;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/SyncBankRequestAccount;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lo/SyncBankRequestAccount;->ICustomTabsCallback(ILo/InfoJsonAdapter;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback:Lo/SyncBankRequestAccount;

    monitor-exit v0

    return-void

    :cond_0
    iget-object p1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    invoke-interface {p1}, Lo/LockConfigData;->MediaBrowserCompat$CallbackHandler()V

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

.method public final onTransact()V
    .locals 2

    iget-object v0, p0, Lo/TabConfigResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/TabConfigResponseJsonAdapter;->onPostMessage:Lo/LockConfigData;

    invoke-interface {v1}, Lo/LockConfigData;->getItem()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
