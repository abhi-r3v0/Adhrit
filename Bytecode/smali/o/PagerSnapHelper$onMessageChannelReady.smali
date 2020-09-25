.class final Lo/PagerSnapHelper$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PagerSnapHelper;->onMessageChannelReady(Ljava/lang/String;Lo/getServerTime;Lo/onDisconnectSetValue;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/game/security/GameScoreStream$upload$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getServerTime;

.field private synthetic asBinder:Ljava/lang/String;

.field final synthetic extraCallback:Lo/onDisconnectSetValue;

.field private synthetic onMessageChannelReady:Lo/PagerSnapHelper;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/PagerSnapHelper;Ljava/lang/String;Ljava/lang/String;Lo/getServerTime;Lo/onDisconnectSetValue;)V
    .locals 0

    iput-object p1, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onMessageChannelReady:Lo/PagerSnapHelper;

    iput-object p3, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lo/PagerSnapHelper$onMessageChannelReady;->asBinder:Ljava/lang/String;

    iput-object p5, p0, Lo/PagerSnapHelper$onMessageChannelReady;->ICustomTabsCallback:Lo/getServerTime;

    iput-object p6, p0, Lo/PagerSnapHelper$onMessageChannelReady;->extraCallback:Lo/onDisconnectSetValue;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 14

    const-string v0, "game-security"

    const-string/jumbo v1, "user sign in"

    .line 1033
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PagerSnapHelper$onMessageChannelReady;->asBinder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Lo/addWrite;

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "game_id"

    invoke-direct {v3, v4, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 1037
    iget-object v3, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onMessageChannelReady:Lo/PagerSnapHelper;

    .line 3066
    iget-object v6, v3, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_0

    .line 3067
    iget-object v6, v3, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    iget-object v10, v3, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v6, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;

    invoke-virtual {v6}, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->getTs()J

    move-result-wide v10

    iget-object v3, v3, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->getTs()J

    move-result-wide v12

    sub-long/2addr v10, v12

    goto :goto_0

    :cond_0
    move-wide v10, v8

    .line 1037
    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4043
    new-instance v6, Lo/addWrite;

    const-string v10, "game_duration"

    invoke-direct {v6, v10, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v7

    .line 1038
    iget-object v3, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onMessageChannelReady:Lo/PagerSnapHelper;

    .line 5018
    iget-object v3, v3, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    .line 1038
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v7

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onMessageChannelReady:Lo/PagerSnapHelper;

    .line 6018
    iget-object v3, v3, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    .line 1038
    invoke-virtual {v3, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->getTs()J

    move-result-wide v10

    goto :goto_1

    :cond_1
    move-wide v10, v8

    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 6043
    new-instance v6, Lo/addWrite;

    const-string v10, "game_start_time"

    invoke-direct {v6, v10, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v6, v2, v3

    .line 1039
    iget-object v6, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onMessageChannelReady:Lo/PagerSnapHelper;

    .line 7018
    iget-object v6, v6, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    .line 1039
    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v7

    if-eqz v6, :cond_2

    iget-object v6, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onMessageChannelReady:Lo/PagerSnapHelper;

    .line 8018
    iget-object v6, v6, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    .line 1039
    iget-object v8, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onMessageChannelReady:Lo/PagerSnapHelper;

    .line 9018
    iget-object v8, v8, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    .line 1039
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;

    invoke-virtual {v6}, Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;->getTs()J

    move-result-wide v8

    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 9043
    new-instance v8, Lo/addWrite;

    const-string v9, "game_end_time"

    invoke-direct {v8, v9, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x3

    aput-object v8, v2, v6

    const-string v8, "pairs"

    .line 1035
    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9105
    new-instance v9, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    check-cast v9, Ljava/util/Map;

    invoke-static {v9, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "firebase_submit_score_attempt"

    .line 1035
    invoke-static {v2, v9}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1041
    iget-object v2, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onMessageChannelReady:Lo/PagerSnapHelper;

    .line 10018
    iget-object v2, v2, Lo/PagerSnapHelper;->onPostMessage:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    const-string v9, "game_scores"

    .line 1041
    invoke-virtual {v2, v9}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->collection(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;->document(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object v2

    new-array v9, v1, [Lo/addWrite;

    .line 1042
    iget-object v10, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 10043
    new-instance v11, Lo/addWrite;

    invoke-direct {v11, v4, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v9, v5

    .line 1043
    iget-object v4, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 11043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v10, "user_id"

    invoke-direct {v5, v10, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v9, v7

    .line 1044
    iget-object v4, p0, Lo/PagerSnapHelper$onMessageChannelReady;->asBinder:Ljava/lang/String;

    .line 12043
    new-instance v5, Lo/addWrite;

    const-string v7, "idempotency_id"

    invoke-direct {v5, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v9, v3

    .line 1045
    iget-object v3, p0, Lo/PagerSnapHelper$onMessageChannelReady;->onMessageChannelReady:Lo/PagerSnapHelper;

    .line 13018
    iget-object v3, v3, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    .line 13043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "scores"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v9, v6

    .line 1042
    invoke-static {v9, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v3

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v9}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1042
    invoke-virtual {v2, v3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 1046
    new-instance v2, Lo/PagerSnapHelper$onMessageChannelReady$2;

    invoke-direct {v2, p0, v0}, Lo/PagerSnapHelper$onMessageChannelReady$2;-><init>(Lo/PagerSnapHelper$onMessageChannelReady;Ljava/lang/String;)V

    check-cast v2, Lo/addLifecycleEventListener;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->extraCallback(Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 1053
    new-instance v2, Lo/PagerSnapHelper$onMessageChannelReady$1;

    invoke-direct {v2, p0, v0}, Lo/PagerSnapHelper$onMessageChannelReady$1;-><init>(Lo/PagerSnapHelper$onMessageChannelReady;Ljava/lang/String;)V

    check-cast v2, Lo/addBackgroundStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    .line 18
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
