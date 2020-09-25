.class public final Lo/setCanReverse;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/Object;

.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Z

.field private onPostMessage:Ljava/lang/String;

.field private onTransact:Lo/setCanReverse;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/setCanReverse;->ICustomTabsCallback:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lo/setCanReverse;->onMessageChannelReady:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setCanReverse;->extraCallback:Ljava/lang/Object;

    iput-boolean p1, p0, Lo/setCanReverse;->onNavigationEvent:Z

    iget-object p1, p0, Lo/setCanReverse;->onMessageChannelReady:Ljava/util/Map;

    const-string v0, "action"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lo/setCanReverse;->onMessageChannelReady:Ljava/util/Map;

    const-string p2, "ad_format"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/setCanReverse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent()Lo/ZeroSpinsLeftMetaJsonAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lo/setCanReverse;->onTransact:Lo/setCanReverse;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lo/setCanReverse;->onMessageChannelReady:Ljava/util/Map;

    iget-object v3, p0, Lo/setCanReverse;->onTransact:Lo/setCanReverse;

    invoke-virtual {v3}, Lo/setCanReverse;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/ZeroSpinsLeftMetaJsonAdapter;->onNavigationEvent(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lo/setCanReverse;->onMessageChannelReady:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lo/setCanReverse;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent()Lo/ZeroSpinsLeftMetaJsonAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lo/setCanReverse;->extraCallback:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1}, Lo/ZeroSpinsLeftMetaJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;

    move-result-object v0

    iget-object v2, p0, Lo/setCanReverse;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$lambda$1$1;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final onMessageChannelReady()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;
    .locals 2

    iget-object v0, p0, Lo/setCanReverse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lo/setCanReverse;->onNavigationEvent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/setCanReverse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/setCanReverse;->onPostMessage:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final varargs onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lo/setCanReverse;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lo/setCanReverse;->onPostMessage(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;J[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;
    .locals 2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/setCanReverse;->onPostMessage(J)Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/setCanReverse;->extraCallback:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lo/setCanReverse;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    invoke-virtual {v3}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->ICustomTabsCallback()J

    move-result-wide v4

    invoke-virtual {v3}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->onPostMessage()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-lez v9, :cond_0

    invoke-virtual {v3}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->ICustomTabsCallback()J

    move-result-wide v7

    sub-long/2addr v4, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lo/setCanReverse;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lo/setCanReverse;->onPostMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lo/setCanReverse;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onPostMessage(J)Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;
    .locals 2

    iget-boolean v0, p0, Lo/setCanReverse;->onNavigationEvent:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    invoke-direct {v0, p1, p2, v1, v1}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;-><init>(JLjava/lang/String;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    return-object v0
.end method

.method public final onPostMessage(Lo/setCanReverse;)V
    .locals 1

    iget-object v0, p0, Lo/setCanReverse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/setCanReverse;->onTransact:Lo/setCanReverse;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final varargs onPostMessage(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;J[Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lo/setCanReverse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    new-instance v4, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    invoke-direct {v4, p2, p3, v3, p1}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;-><init>(JLjava/lang/String;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    iget-object v3, p0, Lo/setCanReverse;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
