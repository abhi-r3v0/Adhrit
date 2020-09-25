.class public final Lo/evictionCount;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/evictionCount$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u00020\u00048FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u00020\u00048FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u00020\u00048FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u000e\u0010\u000f\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u00020\u00048FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0006\"\u0004\u0008\u0012\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/TimeTracker;",
        "",
        "()V",
        "duration",
        "",
        "getDuration",
        "()J",
        "setDuration",
        "(J)V",
        "endTime",
        "getEndTime",
        "setEndTime",
        "startTime",
        "getStartTime",
        "setStartTime",
        "state",
        "timeElapsed",
        "getTimeElapsed",
        "setTimeElapsed",
        "start",
        "",
        "stop",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:J

.field private extraCallback:J

.field public onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    iput-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method private ICustomTabsCallback()J
    .locals 3

    .line 23
    iget-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v1, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v1, Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "TimeTracker"

    const-string/jumbo v1, "tag"

    .line 2069
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2070
    sget-object v1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const/4 v1, 0x0

    const-string/jumbo v2, "trying to get startTime before calling stop()"

    invoke-static {v0, v2, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_1
    iget-wide v0, p0, Lo/evictionCount;->extraCallback:J

    return-wide v0
.end method


# virtual methods
.method public final extraCallback()J
    .locals 3

    .line 30
    iget-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v1, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "TimeTracker"

    const-string/jumbo v1, "tag"

    .line 3069
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3070
    sget-object v1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const/4 v1, 0x0

    const-string/jumbo v2, "trying to get duration before calling stop()"

    invoke-static {v0, v2, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :cond_0
    iget-wide v0, p0, Lo/evictionCount;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final onMessageChannelReady()J
    .locals 4

    .line 53
    iget-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v1, Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v1, Lo/evictionCount$onMessageChannelReady$onNavigationEvent;->onPostMessage:Lo/evictionCount$onMessageChannelReady$onNavigationEvent;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TimeTracker"

    const-string/jumbo v1, "tag"

    .line 5069
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5070
    sget-object v1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const/4 v1, 0x0

    const-string/jumbo v2, "trying to call stop() before calling start()"

    invoke-static {v0, v2, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lo/evictionCount$onMessageChannelReady$onNavigationEvent;->onPostMessage:Lo/evictionCount$onMessageChannelReady$onNavigationEvent;

    iput-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/evictionCount;->extraCallback:J

    .line 56
    invoke-direct {p0}, Lo/evictionCount;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p0}, Lo/evictionCount;->onNavigationEvent()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/evictionCount;->ICustomTabsCallback:J

    .line 60
    :goto_1
    invoke-virtual {p0}, Lo/evictionCount;->extraCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onNavigationEvent()J
    .locals 3

    .line 16
    iget-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v1, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TimeTracker"

    const-string/jumbo v1, "tag"

    .line 1069
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    sget-object v1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const/4 v1, 0x0

    const-string/jumbo v2, "trying to get startTime before calling start()"

    invoke-static {v0, v2, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_0
    iget-wide v0, p0, Lo/evictionCount;->onNavigationEvent:J

    return-wide v0
.end method

.method public final onPostMessage()V
    .locals 3

    .line 42
    iget-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v1, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v1, Lo/evictionCount$onMessageChannelReady$onNavigationEvent;->onPostMessage:Lo/evictionCount$onMessageChannelReady$onNavigationEvent;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TimeTracker"

    const-string/jumbo v1, "tag"

    .line 4069
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4070
    sget-object v1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const/4 v1, 0x0

    const-string/jumbo v2, "tracking already started"

    invoke-static {v0, v2, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;

    iput-object v0, p0, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/evictionCount;->onNavigationEvent:J

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lo/evictionCount;->extraCallback:J

    .line 46
    iput-wide v0, p0, Lo/evictionCount;->ICustomTabsCallback:J

    return-void
.end method
