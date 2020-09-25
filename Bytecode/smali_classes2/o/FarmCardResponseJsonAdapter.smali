.class final Lo/FarmCardResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setBody;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/SubmitScoreRequest;


# direct methods
.method constructor <init>(Lo/SubmitScoreRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    iput-object p1, p0, Lo/FarmCardResponseJsonAdapter;->extraCallback:Lo/SubmitScoreRequest;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/FarmCardResponseJsonAdapter;Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Z
    .locals 0

    invoke-direct {p0, p1}, Lo/FarmCardResponseJsonAdapter;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Z

    move-result p0

    return p0
.end method

.method private final declared-synchronized onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v4, "waiting-for-response"

    invoke-virtual {p1, v4}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Z

    if-eqz p1, :cond_1

    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v2

    :cond_2
    :try_start_1
    iget-object v1, p0, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onPostMessage(Lo/setBody;)V

    sget-boolean p1, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Z

    if-eqz p1, :cond_3

    const-string p1, "new request, sending to network %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;",
            "Lo/BankAccountSyncRequestJsonAdapter<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p2, Lo/BankAccountSyncRequestJsonAdapter;->ICustomTabsCallback:Lo/GameWebViewFragment$MyJavascriptInterface;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lo/BankAccountSyncRequestJsonAdapter;->ICustomTabsCallback:Lo/GameWebViewFragment$MyJavascriptInterface;

    invoke-virtual {v0}, Lo/GameWebViewFragment$MyJavascriptInterface;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-boolean v1, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Releasing %d waiting requests for cacheKey=%s."

    invoke-static {p1, v1}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/FarmCardResponseJsonAdapter;->extraCallback:Lo/SubmitScoreRequest;

    invoke-static {v1}, Lo/SubmitScoreRequest;->onMessageChannelReady(Lo/SubmitScoreRequest;)Lo/MoshiGradientOrientationAdapter;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lo/MoshiGradientOrientationAdapter;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lo/BankAccountSyncRequestJsonAdapter;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lo/FarmCardResponseJsonAdapter;->onPostMessage(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)V

    return-void
.end method

.method public final declared-synchronized onPostMessage(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    iget-object v4, p0, Lo/FarmCardResponseJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onPostMessage(Lo/setBody;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lo/FarmCardResponseJsonAdapter;->extraCallback:Lo/SubmitScoreRequest;

    invoke-static {p1}, Lo/SubmitScoreRequest;->extraCallback(Lo/SubmitScoreRequest;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Couldn\'t add request to queue. %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lo/FarmCardResponseJsonAdapter;->extraCallback:Lo/SubmitScoreRequest;

    invoke-virtual {p1}, Lo/SubmitScoreRequest;->ICustomTabsCallback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
