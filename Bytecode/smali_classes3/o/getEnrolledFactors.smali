.class final Lo/getEnrolledFactors;
.super Lo/removeDependent;


# instance fields
.field private synthetic onMessageChannelReady:Lo/doOnboarding;

.field private synthetic onNavigationEvent:Ljava/util/Map;

.field private synthetic onPostMessage:Lo/setTimeout;


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;Ljava/util/Map;Lo/doOnboarding;)V
    .locals 0

    iput-object p1, p0, Lo/getEnrolledFactors;->onPostMessage:Lo/setTimeout;

    iput-object p3, p0, Lo/getEnrolledFactors;->onNavigationEvent:Ljava/util/Map;

    iput-object p4, p0, Lo/getEnrolledFactors;->onMessageChannelReady:Lo/doOnboarding;

    invoke-direct {p0, p2}, Lo/removeDependent;-><init>(Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lo/getEnrolledFactors;->onPostMessage:Lo/setTimeout;

    .line 1000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 2000
    iget-object v0, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    check-cast v0, Lo/recordException;

    iget-object v1, p0, Lo/getEnrolledFactors;->onPostMessage:Lo/setTimeout;

    .line 3000
    iget-object v1, v1, Lo/setTimeout;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/getEnrolledFactors;->onNavigationEvent:Ljava/util/Map;

    .line 4000
    invoke-static {}, Lo/setTimeout;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "installed_asset_module_name"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "installed_asset_module_version"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "installed_asset_module"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v2, Lo/setActivity;

    iget-object v4, p0, Lo/getEnrolledFactors;->onPostMessage:Lo/setTimeout;

    iget-object v5, p0, Lo/getEnrolledFactors;->onMessageChannelReady:Lo/doOnboarding;

    invoke-direct {v2, v4, v5}, Lo/setActivity;-><init>(Lo/setTimeout;Lo/doOnboarding;)V

    invoke-interface {v0, v1, v3, v2}, Lo/recordException;->ICustomTabsCallback(Ljava/lang/String;Landroid/os/Bundle;Lo/subscribeToAnalyticsEvents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5000
    sget-object v1, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    const-string v4, "PlayCore"

    .line 6000
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lo/addItemDecoration$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v3, "syncPacks"

    invoke-static {v1, v3, v2}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v1, p0, Lo/getEnrolledFactors;->onMessageChannelReady:Lo/doOnboarding;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 7000
    iget-object v0, v1, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {v0, v2}, Lo/Onboarding;->extraCallback(Ljava/lang/Exception;)Z

    return-void
.end method
