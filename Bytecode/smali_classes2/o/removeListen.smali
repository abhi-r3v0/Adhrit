.class final Lo/removeListen;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeListen$onMessageChannelReady;,
        Lo/removeListen$onNavigationEvent;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/concurrent/ScheduledExecutorService;

.field asBinder:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field asInterface:Z

.field final extraCallback:Ljava/lang/Runnable;

.field final onMessageChannelReady:Lo/Onboarding$3;

.field final onNavigationEvent:Ljava/util/concurrent/Executor;

.field onPostMessage:J


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lo/Onboarding$3;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lo/removeListen;->extraCallback:Ljava/lang/Runnable;

    .line 48
    iput-object p2, p0, Lo/removeListen;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 49
    iput-object p3, p0, Lo/removeListen;->ICustomTabsCallback:Ljava/util/concurrent/ScheduledExecutorService;

    .line 50
    iput-object p4, p0, Lo/removeListen;->onMessageChannelReady:Lo/Onboarding$3;

    .line 51
    invoke-virtual {p4}, Lo/Onboarding$3;->onPostMessage()Lo/Onboarding$3;

    return-void
.end method


# virtual methods
.method final extraCallback(JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    .line 56
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 1114
    iget-object p3, p0, Lo/removeListen;->onMessageChannelReady:Lo/Onboarding$3;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0}, Lo/Onboarding$3;->onPostMessage(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    add-long/2addr v0, p1

    const/4 p3, 0x1

    .line 58
    iput-boolean p3, p0, Lo/removeListen;->asInterface:Z

    .line 59
    iget-wide v2, p0, Lo/removeListen;->onPostMessage:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-ltz p3, :cond_0

    iget-object p3, p0, Lo/removeListen;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    if-nez p3, :cond_2

    .line 60
    :cond_0
    iget-object p3, p0, Lo/removeListen;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 61
    invoke-interface {p3, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 63
    :cond_1
    iget-object p3, p0, Lo/removeListen;->ICustomTabsCallback:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lo/removeListen$onNavigationEvent;

    invoke-direct {v3, p0, v2}, Lo/removeListen$onNavigationEvent;-><init>(Lo/removeListen;B)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v3, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lo/removeListen;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    .line 65
    :cond_2
    iput-wide v0, p0, Lo/removeListen;->onPostMessage:J

    return-void
.end method

.method final extraCallback(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lo/removeListen;->asInterface:Z

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lo/removeListen;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lo/removeListen;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method
