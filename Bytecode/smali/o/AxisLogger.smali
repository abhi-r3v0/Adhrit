.class public Lo/AxisLogger;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UpiSdkCallback;


# instance fields
.field private final ICustomTabsCallback:I

.field private final asInterface:J

.field private final extraCallback:I

.field private final onMessageChannelReady:J

.field private final onNavigationEvent:J

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(JJII)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lo/AxisLogger;->onNavigationEvent:J

    .line 47
    iput-wide p3, p0, Lo/AxisLogger;->onPostMessage:J

    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 p6, 0x1

    .line 48
    :cond_0
    iput p6, p0, Lo/AxisLogger;->extraCallback:I

    .line 49
    iput p5, p0, Lo/AxisLogger;->ICustomTabsCallback:I

    const-wide/16 v0, -0x1

    cmp-long p6, p1, v0

    if-nez p6, :cond_1

    .line 52
    iput-wide v0, p0, Lo/AxisLogger;->onMessageChannelReady:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    iput-wide p1, p0, Lo/AxisLogger;->asInterface:J

    return-void

    :cond_1
    sub-long v0, p1, p3

    .line 55
    iput-wide v0, p0, Lo/AxisLogger;->onMessageChannelReady:J

    .line 56
    invoke-static {p1, p2, p3, p4, p5}, Lo/AxisLogger;->onNavigationEvent(JJI)J

    move-result-wide p1

    iput-wide p1, p0, Lo/AxisLogger;->asInterface:J

    return-void
.end method

.method private static onNavigationEvent(JJI)J
    .locals 0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    .line 109
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const/4 p2, 0x3

    shl-long/2addr p0, p2

    const-wide/32 p2, 0xf4240

    mul-long p0, p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public onNavigationEvent()Z
    .locals 5

    .line 62
    iget-wide v0, p0, Lo/AxisLogger;->onMessageChannelReady:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPostMessage(J)J
    .locals 3

    .line 95
    iget-wide v0, p0, Lo/AxisLogger;->onPostMessage:J

    iget v2, p0, Lo/AxisLogger;->ICustomTabsCallback:I

    invoke-static {p1, p2, v0, v1, v2}, Lo/AxisLogger;->onNavigationEvent(JJI)J

    move-result-wide p1

    return-wide p1
.end method
