.class public final Lo/fromCustomAction$extraCallback;
.super Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromCustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady<",
        "Lo/fromCustomAction$extraCallback;",
        "Lo/fromCustomAction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;-><init>(Ljava/lang/Class;)V

    .line 97
    iget-object p1, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    const-string p4, "Interval duration lesser than minimum allowed value; Changed to %s"

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/32 v2, 0xdbba0

    .line 1195
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    cmp-long v5, p2, v2

    if-gez v5, :cond_0

    .line 1193
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p2

    sget-object p3, Lo/onDestroy;->ICustomTabsCallback:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {p4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p3, v5}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p2, v2

    :cond_0
    cmp-long v5, p2, v2

    if-gez v5, :cond_1

    .line 1209
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v5

    sget-object v6, Lo/onDestroy;->ICustomTabsCallback:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v0

    invoke-static {p4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, v6, p4}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide v2, p2

    :goto_0
    const-wide/32 v4, 0x493e0

    cmp-long p4, p2, v4

    if-gez p4, :cond_2

    .line 1215
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p2

    sget-object p3, Lo/onDestroy;->ICustomTabsCallback:Ljava/lang/String;

    new-array p4, v1, [Ljava/lang/Object;

    .line 1217
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, p4, v0

    const-string v6, "Flex duration lesser than minimum allowed value; Changed to %s"

    .line 1216
    invoke-static {v6, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 1215
    invoke-virtual {p2, p3, p4}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p2, v4

    :cond_2
    cmp-long p4, p2, v2

    if-lez p4, :cond_3

    .line 1221
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p2

    sget-object p3, Lo/onDestroy;->ICustomTabsCallback:Ljava/lang/String;

    new-array p4, v1, [Ljava/lang/Object;

    .line 1223
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p4, v0

    const-string v0, "Flex duration greater than interval duration; Changed to %s"

    .line 1222
    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 1221
    invoke-virtual {p2, p3, p4}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p2, v2

    .line 1226
    :cond_3
    iput-wide v2, p1, Lo/onDestroy;->onRelationshipValidationResult:J

    .line 1227
    iput-wide p2, p1, Lo/onDestroy;->asBinder:J

    return-void
.end method


# virtual methods
.method final bridge synthetic ICustomTabsCallback()Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;
    .locals 0

    return-object p0
.end method

.method final synthetic extraCallback()Lo/PlaybackStateCompat$CustomAction$1;
    .locals 2

    .line 3192
    iget-object v0, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    iget-boolean v0, v0, Lo/onDestroy;->requestPostMessageChannel:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lo/PlaybackStateCompat$CustomAction$1$onMessageChannelReady;->onNavigationEvent:Lo/onDestroy;

    iget-object v0, v0, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 4138
    iget-boolean v0, v0, Lo/getErrorCode;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot run in foreground with an idle mode constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3198
    :cond_1
    :goto_0
    new-instance v0, Lo/fromCustomAction;

    invoke-direct {v0, p0}, Lo/fromCustomAction;-><init>(Lo/fromCustomAction$extraCallback;)V

    return-object v0
.end method
