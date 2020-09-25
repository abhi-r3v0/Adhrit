.class public final Lo/onConnectionShutdown;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/shortCircuitingInOrderTraversal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onConnectionShutdown$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private extraCallback:J

.field private onMessageChannelReady:D

.field private onNavigationEvent:Ljava/util/Random;

.field private onPostMessage:D

.field private onTransact:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lo/onConnectionShutdown;->onNavigationEvent:Ljava/util/Random;

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/onConnectionShutdown;->extraCallback:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/onConnectionShutdown;->ICustomTabsCallback:J

    const-wide v0, 0x3ff999999999999aL    # 1.6

    .line 42
    iput-wide v0, p0, Lo/onConnectionShutdown;->onPostMessage:D

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 43
    iput-wide v0, p0, Lo/onConnectionShutdown;->onMessageChannelReady:D

    .line 45
    iget-wide v0, p0, Lo/onConnectionShutdown;->extraCallback:J

    iput-wide v0, p0, Lo/onConnectionShutdown;->onTransact:J

    return-void
.end method


# virtual methods
.method public final onPostMessage()J
    .locals 8

    .line 49
    iget-wide v0, p0, Lo/onConnectionShutdown;->onTransact:J

    long-to-double v2, v0

    .line 50
    iget-wide v4, p0, Lo/onConnectionShutdown;->onPostMessage:D

    mul-double v4, v4, v2

    double-to-long v4, v4

    iget-wide v6, p0, Lo/onConnectionShutdown;->ICustomTabsCallback:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lo/onConnectionShutdown;->onTransact:J

    .line 51
    iget-wide v4, p0, Lo/onConnectionShutdown;->onMessageChannelReady:D

    neg-double v6, v4

    mul-double v6, v6, v2

    mul-double v4, v4, v2

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sub-double/2addr v4, v6

    .line 1058
    iget-object v2, p0, Lo/onConnectionShutdown;->onNavigationEvent:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double v2, v2, v4

    add-double/2addr v2, v6

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 1128
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
