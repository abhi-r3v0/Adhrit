.class final Lo/cancelSentTransactions$updateVisuals;
.super Lo/beginTransaction;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelSentTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "updateVisuals"
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private synthetic onMessageChannelReady:Lo/cancelSentTransactions;

.field private final onNavigationEvent:Lo/cancelSentTransactions$validateRelationship;


# direct methods
.method constructor <init>(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V
    .locals 0

    .line 1194
    iput-object p1, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-direct {p0}, Lo/beginTransaction;-><init>()V

    .line 1195
    iput-object p2, p0, Lo/cancelSentTransactions$updateVisuals;->onNavigationEvent:Lo/cancelSentTransactions$validateRelationship;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(J)V
    .locals 7

    .line 1205
    iget-object v0, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v0

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1212
    iget-object v1, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v1}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1213
    :try_start_0
    iget-object v2, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v2}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v2

    iget-object v2, v2, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-nez v2, :cond_7

    iget-object v2, p0, Lo/cancelSentTransactions$updateVisuals;->onNavigationEvent:Lo/cancelSentTransactions$validateRelationship;

    iget-boolean v2, v2, Lo/cancelSentTransactions$validateRelationship;->ICustomTabsCallback:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1216
    :cond_1
    iget-wide v2, p0, Lo/cancelSentTransactions$updateVisuals;->ICustomTabsCallback:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lo/cancelSentTransactions$updateVisuals;->ICustomTabsCallback:J

    .line 1217
    iget-object p1, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {p1}, Lo/cancelSentTransactions;->postMessage(Lo/cancelSentTransactions;)J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-gtz v4, :cond_2

    .line 1218
    monitor-exit v1

    return-void

    .line 1221
    :cond_2
    iget-wide p1, p0, Lo/cancelSentTransactions$updateVisuals;->ICustomTabsCallback:J

    iget-object v2, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v2}, Lo/cancelSentTransactions;->mayLaunchUrl(Lo/cancelSentTransactions;)J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, p1, v2

    if-lez v5, :cond_3

    .line 1222
    iget-object p1, p0, Lo/cancelSentTransactions$updateVisuals;->onNavigationEvent:Lo/cancelSentTransactions$validateRelationship;

    iput-boolean v4, p1, Lo/cancelSentTransactions$validateRelationship;->extraCallback:Z

    goto :goto_0

    .line 1225
    :cond_3
    iget-object p1, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    .line 1226
    invoke-static {p1}, Lo/cancelSentTransactions;->requestPostMessageChannel(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$postMessage;

    move-result-object p1

    iget-wide v2, p0, Lo/cancelSentTransactions$updateVisuals;->ICustomTabsCallback:J

    iget-object p2, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->postMessage(Lo/cancelSentTransactions;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 2254
    iget-object p1, p1, Lo/cancelSentTransactions$postMessage;->extraCallback:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    .line 1227
    iget-object v2, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    iget-wide v5, p0, Lo/cancelSentTransactions$updateVisuals;->ICustomTabsCallback:J

    invoke-static {v2, v5, v6}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;J)J

    .line 1229
    iget-object v2, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    invoke-static {v2}, Lo/cancelSentTransactions;->updateVisuals(Lo/cancelSentTransactions;)J

    move-result-wide v2

    cmp-long v5, p1, v2

    if-lez v5, :cond_4

    .line 1230
    iget-object p1, p0, Lo/cancelSentTransactions$updateVisuals;->onNavigationEvent:Lo/cancelSentTransactions$validateRelationship;

    iput-boolean v4, p1, Lo/cancelSentTransactions$validateRelationship;->extraCallback:Z

    .line 1234
    :cond_4
    :goto_0
    iget-object p1, p0, Lo/cancelSentTransactions$updateVisuals;->onNavigationEvent:Lo/cancelSentTransactions$validateRelationship;

    iget-boolean p1, p1, Lo/cancelSentTransactions$validateRelationship;->extraCallback:Z

    if-eqz p1, :cond_5

    .line 1235
    iget-object p1, p0, Lo/cancelSentTransactions$updateVisuals;->onMessageChannelReady:Lo/cancelSentTransactions;

    iget-object p2, p0, Lo/cancelSentTransactions$updateVisuals;->onNavigationEvent:Lo/cancelSentTransactions$validateRelationship;

    invoke-static {p1, p2}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)Ljava/lang/Runnable;

    move-result-object v0

    .line 1237
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 1240
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void

    .line 1214
    :cond_7
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1237
    monitor-exit v1

    throw p1
.end method
