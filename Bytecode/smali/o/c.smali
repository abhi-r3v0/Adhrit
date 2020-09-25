.class public abstract Lo/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/allow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/c$onPostMessage;,
        Lo/c$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field protected final onNavigationEvent:Lo/t$onMessageChannelReady;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lo/t$onMessageChannelReady;

    invoke-direct {v0}, Lo/t$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/c;->onNavigationEvent:Lo/t$onMessageChannelReady;

    return-void
.end method

.method private mayLaunchUrl()I
    .locals 2

    .line 142
    invoke-virtual {p0}, Lo/c;->newSession()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 32
    invoke-virtual {p0}, Lo/c;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lo/c;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lo/c;->warmup()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asInterface()J
    .locals 3

    .line 134
    invoke-virtual {p0}, Lo/c;->setDefaultImpl()Lo/t;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lo/c;->extraCommand()I

    move-result v1

    iget-object v2, p0, Lo/c;->onNavigationEvent:Lo/t$onMessageChannelReady;

    invoke-virtual {v0, v1, v2}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0}, Lo/t$onMessageChannelReady;->onPostMessage()J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback()Z
    .locals 2

    .line 67
    invoke-virtual {p0}, Lo/c;->onNavigationEvent()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 4

    .line 94
    invoke-virtual {p0}, Lo/c;->setDefaultImpl()Lo/t;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lo/c;->extraCommand()I

    move-result v1

    invoke-direct {p0}, Lo/c;->mayLaunchUrl()I

    move-result v2

    invoke-virtual {p0}, Lo/c;->updateVisuals()Z

    move-result v3

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lo/t;->extraCallback(IIZ)I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 4

    .line 85
    invoke-virtual {p0}, Lo/c;->setDefaultImpl()Lo/t;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lo/c;->extraCommand()I

    move-result v1

    invoke-direct {p0}, Lo/c;->mayLaunchUrl()I

    move-result v2

    invoke-virtual {p0}, Lo/c;->updateVisuals()Z

    move-result v3

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lo/t;->onMessageChannelReady(IIZ)I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(J)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lo/c;->extraCommand()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lo/c;->extraCallback(IJ)V

    return-void
.end method

.method public final onPostMessage()Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lo/c;->onMessageChannelReady()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()Z
    .locals 3

    .line 128
    invoke-virtual {p0}, Lo/c;->setDefaultImpl()Lo/t;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lo/c;->extraCommand()I

    move-result v1

    iget-object v2, p0, Lo/c;->onNavigationEvent:Lo/t$onMessageChannelReady;

    invoke-virtual {v0, v1, v2}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object v0

    iget-boolean v0, v0, Lo/t$onMessageChannelReady;->onPostMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
