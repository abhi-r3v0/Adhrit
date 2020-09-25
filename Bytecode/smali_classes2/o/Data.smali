.class public final Lo/Data;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FarmDetailsResponse;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private final asInterface:Lo/push;

.field private final extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;",
            "Lo/EntityJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/EntityJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/DataListJsonAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/Data;->ICustomTabsCallback:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo/Data;->onMessageChannelReady:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Data;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/Data;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/Data;->onPostMessage:Lo/DataListJsonAdapter;

    new-instance v0, Lo/push;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lo/WinningTypes;->onNavigationEvent:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lo/push;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Data;->asInterface:Lo/push;

    return-void
.end method

.method private final onNavigationEvent(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 2

    iget-object v0, p0, Lo/Data;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/Data;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/EntityJsonAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/EntityJsonAdapter;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 2

    iget-object v0, p0, Lo/Data;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/Data;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/EntityJsonAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/EntityJsonAdapter;->extraCallback()V

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

.method public final extraCallback(Lo/EntityJsonAdapter;)V
    .locals 3

    iget-object v0, p0, Lo/Data;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lo/EntityJsonAdapter;->onPostMessage()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/Data;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lo/Data;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

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

.method public final extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 2

    iget-object v0, p0, Lo/Data;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/Data;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/EntityJsonAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/EntityJsonAdapter;->onMessageChannelReady()V

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

.method public final extraCallback(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Landroid/view/View;)V
    .locals 1

    new-instance v0, Lo/FarmCardResponse;

    invoke-direct {v0, p3, p2}, Lo/FarmCardResponse;-><init>(Landroid/view/View;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lo/Data;->onPostMessage(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/RedeemInitiatedRewardDetailsResponse;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 2

    iget-object v0, p0, Lo/Data;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/Data;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/EntityJsonAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/EntityJsonAdapter;->onTransact()V

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

.method public final onMessageChannelReady(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Landroid/view/View;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 1

    new-instance v0, Lo/FarmCardResponse;

    invoke-direct {v0, p3, p2}, Lo/FarmCardResponse;-><init>(Landroid/view/View;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lo/Data;->onPostMessage(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/RedeemInitiatedRewardDetailsResponse;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 1

    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lo/Data;->extraCallback(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Landroid/view/View;)V

    return-void
.end method

.method public final onPostMessage(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 2

    iget-object v0, p0, Lo/Data;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/Data;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/EntityJsonAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/EntityJsonAdapter;->onNavigationEvent()V

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

.method public final onPostMessage(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/RedeemInitiatedRewardDetailsResponse;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 8

    iget-object v0, p0, Lo/Data;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lo/Data;->onNavigationEvent(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lo/Data;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/EntityJsonAdapter;

    goto :goto_0

    :cond_0
    new-instance v7, Lo/EntityJsonAdapter;

    iget-object v2, p0, Lo/Data;->extraCallback:Landroid/content/Context;

    iget-object v5, p0, Lo/Data;->onPostMessage:Lo/DataListJsonAdapter;

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lo/EntityJsonAdapter;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/DataListJsonAdapter;Lo/RedeemInitiatedRewardDetailsResponse;)V

    invoke-virtual {v7, p0}, Lo/EntityJsonAdapter;->onNavigationEvent(Lo/FarmDetailsResponse;)V

    iget-object p1, p0, Lo/Data;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lo/Data;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v7

    :goto_0
    if-eqz p4, :cond_1

    new-instance p2, Lo/FarmDetailsAttributes;

    invoke-direct {p2, p1, p4}, Lo/FarmDetailsAttributes;-><init>(Lo/EntityJsonAdapter;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    :goto_1
    invoke-virtual {p1, p2}, Lo/EntityJsonAdapter;->extraCallback(Lo/LeaderBoardJsonAdapter;)V

    goto :goto_2

    :cond_1
    new-instance p2, Lo/Fields;

    iget-object p3, p0, Lo/Data;->asInterface:Lo/push;

    iget-object p4, p0, Lo/Data;->extraCallback:Landroid/content/Context;

    invoke-direct {p2, p1, p3, p4}, Lo/Fields;-><init>(Lo/EntityJsonAdapter;Lo/push;Landroid/content/Context;)V

    goto :goto_1

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
