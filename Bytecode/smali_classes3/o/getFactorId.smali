.class final Lo/getFactorId;
.super Lo/removeDependent;


# instance fields
.field private synthetic ICustomTabsCallback:Lo/doOnboarding;

.field private synthetic onMessageChannelReady:Ljava/util/List;

.field private synthetic onNavigationEvent:Lo/setTimeout;


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;Ljava/util/List;Lo/doOnboarding;)V
    .locals 0

    iput-object p1, p0, Lo/getFactorId;->onNavigationEvent:Lo/setTimeout;

    iput-object p3, p0, Lo/getFactorId;->onMessageChannelReady:Ljava/util/List;

    iput-object p4, p0, Lo/getFactorId;->ICustomTabsCallback:Lo/doOnboarding;

    invoke-direct {p0, p2}, Lo/removeDependent;-><init>(Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 8

    iget-object v0, p0, Lo/getFactorId;->onMessageChannelReady:Ljava/util/List;

    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "module_name"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lo/getFactorId;->onNavigationEvent:Lo/setTimeout;

    .line 2000
    iget-object v2, v2, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 3000
    iget-object v2, v2, Lo/isSet;->newSession:Landroid/os/IInterface;

    check-cast v2, Lo/recordException;

    iget-object v3, p0, Lo/getFactorId;->onNavigationEvent:Lo/setTimeout;

    .line 4000
    iget-object v3, v3, Lo/setTimeout;->ICustomTabsCallback:Ljava/lang/String;

    .line 5000
    invoke-static {}, Lo/setTimeout;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lo/zzh;

    iget-object v6, p0, Lo/getFactorId;->onNavigationEvent:Lo/setTimeout;

    iget-object v7, p0, Lo/getFactorId;->ICustomTabsCallback:Lo/doOnboarding;

    invoke-direct {v5, v6, v7, v0}, Lo/zzh;-><init>(Lo/setTimeout;Lo/doOnboarding;B)V

    invoke-interface {v2, v3, v1, v4, v5}, Lo/recordException;->onPostMessage(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lo/subscribeToAnalyticsEvents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 6000
    sget-object v2, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lo/getFactorId;->onMessageChannelReady:Ljava/util/List;

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "PlayCore"

    .line 7000
    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lo/addItemDecoration$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v2, "cancelDownloads(%s)"

    invoke-static {v0, v2, v3}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
