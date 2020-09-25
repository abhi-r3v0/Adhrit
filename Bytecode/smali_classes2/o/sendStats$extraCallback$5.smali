.class final Lo/sendStats$extraCallback$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendStats$extraCallback;->onMessageChannelReady(Ljava/net/SocketAddress;Lo/fixUp$ICustomTabsCallback;Lo/saveTrackedQueryKeys;)Lo/resume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lo/sendStats$extraCallback$5;->ICustomTabsCallback:Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 499
    iget-object v0, p0, Lo/sendStats$extraCallback$5;->ICustomTabsCallback:Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;

    .line 1065
    iget-wide v1, v0, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->onMessageChannelReady:J

    const/4 v3, 0x1

    shl-long/2addr v1, v3

    iget-wide v4, v0, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->onMessageChannelReady:J

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1066
    iget-object v4, v0, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->onPostMessage:Lo/shortCircuitingReverseOrderTraversal;

    invoke-static {v4}, Lo/shortCircuitingReverseOrderTraversal;->onMessageChannelReady(Lo/shortCircuitingReverseOrderTraversal;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    iget-wide v5, v0, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->onMessageChannelReady:J

    invoke-virtual {v4, v5, v6, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    .line 1068
    sget-boolean v5, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->extraCallback:Z

    if-nez v5, :cond_1

    iget-object v5, v0, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->onPostMessage:Lo/shortCircuitingReverseOrderTraversal;

    invoke-static {v5}, Lo/shortCircuitingReverseOrderTraversal;->onMessageChannelReady(Lo/shortCircuitingReverseOrderTraversal;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-ltz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 1070
    invoke-static {}, Lo/shortCircuitingReverseOrderTraversal;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v0, v0, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->onPostMessage:Lo/shortCircuitingReverseOrderTraversal;

    invoke-static {v0}, Lo/shortCircuitingReverseOrderTraversal;->ICustomTabsCallback(Lo/shortCircuitingReverseOrderTraversal;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    const-string v0, "Increased {0} to {1}"

    invoke-virtual {v4, v5, v0, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
