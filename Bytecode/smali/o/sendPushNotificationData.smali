.class public final Lo/sendPushNotificationData;
.super Lo/setImeiData;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendPushNotificationData$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setImeiData<",
        "Lo/sendPushNotificationData$onMessageChannelReady;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:I

.field final onNavigationEvent:Lo/CoroutineWorker;

.field private final onPostMessage:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/sendPushNotificationData;-><init>(Lo/CoroutineWorker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/sendPushNotificationData;-><init>(Lo/CoroutineWorker;)V

    .line 75
    iput p1, p0, Lo/sendPushNotificationData;->onMessageChannelReady:I

    return-void
.end method

.method private constructor <init>(Lo/CoroutineWorker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CoroutineWorker;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lo/setImeiData;-><init>()V

    const/4 v0, 0x3

    .line 94
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/sendPushNotificationData;->onPostMessage:Ljava/util/concurrent/ExecutorService;

    .line 95
    iput-object p1, p0, Lo/sendPushNotificationData;->onNavigationEvent:Lo/CoroutineWorker;

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lo/sendPushNotificationData;->extraCallback:Ljava/util/Map;

    .line 97
    iput-object p1, p0, Lo/sendPushNotificationData;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/getId;I)Ljava/util/Map;
    .locals 5

    .line 34
    check-cast p1, Lo/sendPushNotificationData$onMessageChannelReady;

    .line 1236
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2037
    iget-wide v1, p1, Lo/sendPushNotificationData$onMessageChannelReady;->onMessageChannelReady:J

    .line 3037
    iget-wide v3, p1, Lo/sendPushNotificationData$onMessageChannelReady;->onPostMessage:J

    sub-long/2addr v1, v3

    .line 1237
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "queue_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4037
    iget-wide v1, p1, Lo/sendPushNotificationData$onMessageChannelReady;->onRelationshipValidationResult:J

    .line 5037
    iget-wide v3, p1, Lo/sendPushNotificationData$onMessageChannelReady;->onMessageChannelReady:J

    sub-long/2addr v1, v3

    .line 1238
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fetch_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6037
    iget-wide v1, p1, Lo/sendPushNotificationData$onMessageChannelReady;->onRelationshipValidationResult:J

    .line 7037
    iget-wide v3, p1, Lo/sendPushNotificationData$onMessageChannelReady;->onPostMessage:J

    sub-long/2addr v1, v3

    .line 1239
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "total_time"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "image_size"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic onMessageChannelReady(Lo/getId;Lo/enableFacebookDeferredApplinks$extraCallback;)V
    .locals 2

    .line 34
    check-cast p1, Lo/sendPushNotificationData$onMessageChannelReady;

    .line 8108
    iget-object v0, p0, Lo/sendPushNotificationData;->onNavigationEvent:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    .line 9037
    iput-wide v0, p1, Lo/sendPushNotificationData$onMessageChannelReady;->onPostMessage:J

    .line 8109
    iget-object v0, p0, Lo/sendPushNotificationData;->onPostMessage:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/sendPushNotificationData$1;

    invoke-direct {v1, p0, p1, p2}, Lo/sendPushNotificationData$1;-><init>(Lo/sendPushNotificationData;Lo/sendPushNotificationData$onMessageChannelReady;Lo/enableFacebookDeferredApplinks$extraCallback;)V

    .line 8110
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 9041
    iget-object p1, p1, Lo/getId;->onNavigationEvent:Lo/setPreinstallAttribution;

    .line 8118
    new-instance v1, Lo/sendPushNotificationData$2;

    invoke-direct {v1, v0, p2}, Lo/sendPushNotificationData$2;-><init>(Ljava/util/concurrent/Future;Lo/enableFacebookDeferredApplinks$extraCallback;)V

    .line 8119
    invoke-interface {p1, v1}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    return-void
.end method

.method public final synthetic onNavigationEvent(Lo/getId;)V
    .locals 2

    .line 34
    check-cast p1, Lo/sendPushNotificationData$onMessageChannelReady;

    .line 7207
    iget-object v0, p0, Lo/sendPushNotificationData;->onNavigationEvent:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    .line 8037
    iput-wide v0, p1, Lo/sendPushNotificationData$onMessageChannelReady;->onRelationshipValidationResult:J

    return-void
.end method

.method public final synthetic onPostMessage(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)Lo/getId;
    .locals 1

    .line 9103
    new-instance v0, Lo/sendPushNotificationData$onMessageChannelReady;

    invoke-direct {v0, p1, p2}, Lo/sendPushNotificationData$onMessageChannelReady;-><init>(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    return-object v0
.end method
