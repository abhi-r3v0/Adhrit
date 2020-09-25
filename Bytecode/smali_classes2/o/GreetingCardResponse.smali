.class public final Lo/GreetingCardResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemRequestDataJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private final extraCallback:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/GreetingCardCreativeJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/GreetingCardResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/GreetingCardResponse;->ICustomTabsCallback:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/GreetingCardResponse;->onNavigationEvent:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/GreetingCardResponse;->extraCallback:Ljava/util/HashSet;

    new-instance v0, Lo/GreetingCardCreativeJsonAdapter;

    invoke-direct {v0, p1}, Lo/GreetingCardCreativeJsonAdapter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/GreetingCardResponse;->onPostMessage:Lo/GreetingCardCreativeJsonAdapter;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lo/GreetingCardResponse;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCardResponse;->onPostMessage:Lo/GreetingCardCreativeJsonAdapter;

    invoke-virtual {v1}, Lo/GreetingCardCreativeJsonAdapter;->onNavigationEvent()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback(Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V
    .locals 2

    iget-object v0, p0, Lo/GreetingCardResponse;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCardResponse;->onNavigationEvent:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;)V
    .locals 2

    iget-object v0, p0, Lo/GreetingCardResponse;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCardResponse;->extraCallback:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final extraCallback()V
    .locals 2

    iget-object v0, p0, Lo/GreetingCardResponse;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCardResponse;->onPostMessage:Lo/GreetingCardCreativeJsonAdapter;

    invoke-virtual {v1}, Lo/GreetingCardCreativeJsonAdapter;->onMessageChannelReady()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(Landroid/content/Context;Lo/GreetingCardResponseJsonAdapter;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lo/GreetingCardResponse;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app"

    iget-object v3, p0, Lo/GreetingCardResponse;->onPostMessage:Lo/GreetingCardCreativeJsonAdapter;

    invoke-virtual {v3, p1, p3}, Lo/GreetingCardCreativeJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p3, p0, Lo/GreetingCardResponse;->extraCallback:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

    invoke-virtual {v2}, Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;->extraCallback()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p3, "slots"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lo/GreetingCardResponse;->onNavigationEvent:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    invoke-virtual {v2}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p3, "ads"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lo/GreetingCardResponse;->onNavigationEvent:Ljava/util/HashSet;

    invoke-interface {p2, p1}, Lo/GreetingCardResponseJsonAdapter;->onPostMessage(Ljava/util/HashSet;)V

    iget-object p1, p0, Lo/GreetingCardResponse;->onNavigationEvent:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady(Lo/setLastItem;J)V
    .locals 2

    iget-object v0, p0, Lo/GreetingCardResponse;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCardResponse;->onPostMessage:Lo/GreetingCardCreativeJsonAdapter;

    invoke-virtual {v1, p1, p2, p3}, Lo/GreetingCardCreativeJsonAdapter;->onNavigationEvent(Lo/setLastItem;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Z)V
    .locals 4

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    if-eqz p1, :cond_1

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    invoke-virtual {p1}, Lo/ContactSyncResponse;->asInterface()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p1, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplApi21$5:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lo/GreetingCardResponse;->onPostMessage:Lo/GreetingCardCreativeJsonAdapter;

    const/4 v0, -0x1

    iput v0, p1, Lo/GreetingCardCreativeJsonAdapter;->extraCallback:I

    return-void

    :cond_0
    iget-object p1, p0, Lo/GreetingCardResponse;->onPostMessage:Lo/GreetingCardCreativeJsonAdapter;

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v0

    invoke-virtual {v0}, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub()I

    move-result v0

    iput v0, p1, Lo/GreetingCardCreativeJsonAdapter;->extraCallback:I

    return-void

    :cond_1
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lo/ContactSyncResponse;->ICustomTabsCallback(J)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    iget-object v0, p0, Lo/GreetingCardResponse;->onPostMessage:Lo/GreetingCardCreativeJsonAdapter;

    iget v0, v0, Lo/GreetingCardCreativeJsonAdapter;->extraCallback:I

    invoke-virtual {p1, v0}, Lo/ContactSyncResponse;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final onPostMessage(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/GreetingCardResponse;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GreetingCardResponse;->onNavigationEvent:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
