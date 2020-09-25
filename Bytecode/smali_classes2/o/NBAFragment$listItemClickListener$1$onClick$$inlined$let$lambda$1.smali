.class final Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getPrimaryButtonText$ICustomTabsCallback;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/SuggestedAmount;

.field private final synthetic onPostMessage:Lo/setNotificationBadges;


# direct methods
.method constructor <init>(Lo/setNotificationBadges;Lo/SuggestedAmount;)V
    .locals 0

    iput-object p1, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onPostMessage:Lo/setNotificationBadges;

    iput-object p2, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onMessageChannelReady:Lo/SuggestedAmount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/setReferenceId;)V
    .locals 3

    iget-object p1, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onPostMessage:Lo/setNotificationBadges;

    invoke-static {p1}, Lo/setNotificationBadges;->onNavigationEvent(Lo/setNotificationBadges;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/NBAFragment$listItemClickListener$1$onClick$$inlined$let$lambda$1;->onMessageChannelReady:Lo/SuggestedAmount;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
