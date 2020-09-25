.class final Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getPrimaryButtonText$onMessageChannelReady;


# instance fields
.field final synthetic ICustomTabsCallback:Lo/setNotificationBadges;

.field private final synthetic extraCallback:Lo/RemoteControlCard;

.field private final synthetic onNavigationEvent:Lo/SuggestedAmount;


# direct methods
.method constructor <init>(Lo/setNotificationBadges;Lo/SuggestedAmount;Lo/RemoteControlCard;)V
    .locals 0

    iput-object p1, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->ICustomTabsCallback:Lo/setNotificationBadges;

    iput-object p2, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onNavigationEvent:Lo/SuggestedAmount;

    iput-object p3, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->extraCallback:Lo/RemoteControlCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 4

    iget-object p1, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->ICustomTabsCallback:Lo/setNotificationBadges;

    invoke-static {p1}, Lo/setNotificationBadges;->onNavigationEvent(Lo/setNotificationBadges;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->ICustomTabsCallback:Lo/setNotificationBadges;

    invoke-static {v0}, Lo/setNotificationBadges;->onMessageChannelReady(Lo/setNotificationBadges;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->ICustomTabsCallback:Lo/setNotificationBadges;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/setNotificationBadges;->onNavigationEvent(Lo/setNotificationBadges;Z)Z

    iget-object v0, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->ICustomTabsCallback:Lo/setNotificationBadges;

    invoke-static {v0}, Lo/setNotificationBadges;->ICustomTabsCallback(Lo/setNotificationBadges;)Lo/setBottomTag;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    new-instance v1, Lo/MaxLandingResponse;

    iget-object v2, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onNavigationEvent:Lo/SuggestedAmount;

    iget-object v3, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->extraCallback:Lo/RemoteControlCard;

    invoke-direct {v1, p0, v0, v2, v3}, Lo/MaxLandingResponse;-><init>(Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;Lo/setBottomTag;Lo/SuggestedAmount;Lo/RemoteControlCard;)V

    invoke-static {v1}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v0

    iget-object v1, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onNavigationEvent:Lo/SuggestedAmount;

    new-instance v2, Lo/MaxLandingResponseJsonAdapter;

    iget-object v3, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$2;->onNavigationEvent:Lo/SuggestedAmount;

    invoke-direct {v2, v3, v0}, Lo/MaxLandingResponseJsonAdapter;-><init>(Lo/SuggestedAmount;Ljava/util/concurrent/Future;)V

    sget-object v0, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lo/SuggestedAmount;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
