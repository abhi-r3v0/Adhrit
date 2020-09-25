.class public final Lo/Parameter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setEnabled;


# instance fields
.field private ICustomTabsCallback:J

.field private extraCallback:Z

.field private final onMessageChannelReady:Lo/CheckoutBuilder$PolingRemoteConfig;

.field private onNavigationEvent:J

.field private onPostMessage:Lo/r;


# direct methods
.method public constructor <init>(Lo/CheckoutBuilder$PolingRemoteConfig;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/Parameter;->onMessageChannelReady:Lo/CheckoutBuilder$PolingRemoteConfig;

    .line 41
    sget-object p1, Lo/r;->onPostMessage:Lo/r;

    iput-object p1, p0, Lo/Parameter;->onPostMessage:Lo/r;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/r;)Lo/r;
    .locals 2

    .line 93
    iget-boolean v0, p0, Lo/Parameter;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lo/Parameter;->onMessageChannelReady()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/Parameter;->onNavigationEvent(J)V

    .line 96
    :cond_0
    iput-object p1, p0, Lo/Parameter;->onPostMessage:Lo/r;

    return-object p1
.end method

.method public final extraCallback()V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lo/Parameter;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lo/Parameter;->onMessageChannelReady()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/Parameter;->onNavigationEvent(J)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lo/Parameter;->extraCallback:Z

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()J
    .locals 6

    .line 78
    iget-wide v0, p0, Lo/Parameter;->onNavigationEvent:J

    .line 79
    iget-boolean v2, p0, Lo/Parameter;->extraCallback:Z

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lo/Parameter;->onMessageChannelReady:Lo/CheckoutBuilder$PolingRemoteConfig;

    invoke-interface {v2}, Lo/CheckoutBuilder$PolingRemoteConfig;->onNavigationEvent()J

    move-result-wide v2

    iget-wide v4, p0, Lo/Parameter;->ICustomTabsCallback:J

    sub-long/2addr v2, v4

    .line 81
    iget-object v4, p0, Lo/Parameter;->onPostMessage:Lo/r;

    iget v4, v4, Lo/r;->ICustomTabsCallback:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 82
    invoke-static {v2, v3}, Lo/$$c;->ICustomTabsCallback(J)J

    move-result-wide v2

    goto :goto_0

    .line 84
    :cond_0
    iget-object v4, p0, Lo/Parameter;->onPostMessage:Lo/r;

    invoke-virtual {v4, v2, v3}, Lo/r;->onNavigationEvent(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lo/Parameter;->extraCallback:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lo/Parameter;->onMessageChannelReady:Lo/CheckoutBuilder$PolingRemoteConfig;

    invoke-interface {v0}, Lo/CheckoutBuilder$PolingRemoteConfig;->onNavigationEvent()J

    move-result-wide v0

    iput-wide v0, p0, Lo/Parameter;->ICustomTabsCallback:J

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lo/Parameter;->extraCallback:Z

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lo/Parameter;->onNavigationEvent:J

    .line 71
    iget-boolean p1, p0, Lo/Parameter;->extraCallback:Z

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lo/Parameter;->onMessageChannelReady:Lo/CheckoutBuilder$PolingRemoteConfig;

    invoke-interface {p1}, Lo/CheckoutBuilder$PolingRemoteConfig;->onNavigationEvent()J

    move-result-wide p1

    iput-wide p1, p0, Lo/Parameter;->ICustomTabsCallback:J

    :cond_0
    return-void
.end method

.method public final onPostMessage()Lo/r;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/Parameter;->onPostMessage:Lo/r;

    return-object v0
.end method
