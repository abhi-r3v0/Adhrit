.class final Lo/setBoxCornerRadiiResources;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final extraCallback:Lo/component15;

.field private onMessageChannelReady:J


# direct methods
.method public constructor <init>(Lo/component15;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo/setBoxCornerRadiiResources;->extraCallback:Lo/component15;

    return-void
.end method


# virtual methods
.method public final extraCallback(J)Z
    .locals 4

    .line 9
    iget-wide p1, p0, Lo/setBoxCornerRadiiResources;->onMessageChannelReady:J

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    .line 11
    :cond_0
    iget-object p1, p0, Lo/setBoxCornerRadiiResources;->extraCallback:Lo/component15;

    invoke-interface {p1}, Lo/component15;->onPostMessage()J

    move-result-wide p1

    iget-wide v1, p0, Lo/setBoxCornerRadiiResources;->onMessageChannelReady:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x36ee80

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 5
    iget-object v0, p0, Lo/setBoxCornerRadiiResources;->extraCallback:Lo/component15;

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    iput-wide v0, p0, Lo/setBoxCornerRadiiResources;->onMessageChannelReady:J

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lo/setBoxCornerRadiiResources;->onMessageChannelReady:J

    return-void
.end method
