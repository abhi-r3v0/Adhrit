.class final Lo/setActivity;
.super Lo/zzh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zzh<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setTimeout;


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/doOnboarding<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/setActivity;->extraCallback:Lo/setTimeout;

    invoke-direct {p0, p1, p2}, Lo/zzh;-><init>(Lo/setTimeout;Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lo/zzh;->onMessageChannelReady(Ljava/util/List;)V

    iget-object v0, p0, Lo/setActivity;->extraCallback:Lo/setTimeout;

    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    iget-object v6, v0, Lo/setTimeout;->onNavigationEvent:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    .line 2000
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3000
    sget-object v8, Lo/getExpiringWithin30Days;->onPostMessage:Lo/setMultiFactorSession;

    invoke-static {v5, v6, v7, v8}, Lo/getEnrollmentTimestamp;->onMessageChannelReady(Landroid/os/Bundle;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;Ljava/util/List;Lo/setMultiFactorSession;)Lo/getEnrollmentTimestamp;

    move-result-object v5

    .line 4000
    iget-object v5, v5, Lo/getEnrollmentTimestamp;->onMessageChannelReady:Ljava/util/Map;

    .line 1000
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/getSignInProvider;

    if-nez v5, :cond_0

    sget-object v6, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "onGetSessionStates: Bundle contained no pack."

    invoke-virtual {v6, v8, v7}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v5}, Lo/getSignInProvider;->onMessageChannelReady()I

    move-result v6

    invoke-static {v6}, Lo/extraCallback;->onPostMessage(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lo/getSignInProvider;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo/zzh;->ICustomTabsCallback:Lo/doOnboarding;

    .line 5000
    iget-object p1, p1, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {p1, v1}, Lo/Onboarding;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void
.end method
