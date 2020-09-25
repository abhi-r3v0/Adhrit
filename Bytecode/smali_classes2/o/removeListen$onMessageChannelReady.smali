.class final Lo/removeListen$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/removeListen;


# direct methods
.method private constructor <init>(Lo/removeListen;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/removeListen;B)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lo/removeListen$onMessageChannelReady;-><init>(Lo/removeListen;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 92
    iget-object v0, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    .line 1029
    iget-boolean v0, v0, Lo/removeListen;->asInterface:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    .line 2029
    iput-object v1, v0, Lo/removeListen;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    .line 3114
    iget-object v0, v0, Lo/removeListen;->onMessageChannelReady:Lo/Onboarding$3;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2}, Lo/Onboarding$3;->onPostMessage(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 97
    iget-object v0, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    .line 4029
    iget-wide v4, v0, Lo/removeListen;->onPostMessage:J

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 98
    iget-object v1, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    .line 5029
    iget-object v4, v1, Lo/removeListen;->ICustomTabsCallback:Ljava/util/concurrent/ScheduledExecutorService;

    .line 98
    new-instance v5, Lo/removeListen$onNavigationEvent;

    iget-object v6, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    invoke-direct {v5, v6, v0}, Lo/removeListen$onNavigationEvent;-><init>(Lo/removeListen;B)V

    iget-object v0, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    .line 6029
    iget-wide v6, v0, Lo/removeListen;->onPostMessage:J

    sub-long/2addr v6, v2

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-interface {v4, v5, v6, v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 7029
    iput-object v0, v1, Lo/removeListen;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 101
    :cond_1
    iget-object v2, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    .line 8029
    iput-boolean v0, v2, Lo/removeListen;->asInterface:Z

    .line 102
    iget-object v0, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    .line 9029
    iput-object v1, v0, Lo/removeListen;->asBinder:Ljava/util/concurrent/ScheduledFuture;

    .line 103
    iget-object v0, p0, Lo/removeListen$onMessageChannelReady;->onMessageChannelReady:Lo/removeListen;

    .line 10029
    iget-object v0, v0, Lo/removeListen;->extraCallback:Ljava/lang/Runnable;

    .line 103
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
