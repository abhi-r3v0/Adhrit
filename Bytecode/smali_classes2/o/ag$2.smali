.class public abstract Lo/ag$2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ag$2$onNavigationEvent;,
        Lo/ag$2$onPostMessage;,
        Lo/ag$2$onMessageChannelReady;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(IJ)J
    .locals 6

    add-int/lit8 p0, p0, -0x1

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2

    :goto_0
    const-wide v2, 0x40c3880000000000L    # 10000.0

    .line 148
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    int-to-long v4, p0

    mul-long v0, v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 149
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    int-to-double v4, p0

    .line 151
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    long-to-double p0, p1

    mul-double v2, v2, p0

    mul-double v2, v2, v0

    double-to-long p0, v2

    return-wide p0
.end method


# virtual methods
.method abstract onMessageChannelReady()Lo/b;
.end method

.method public final onNavigationEvent(Lo/setReferrer;JI)J
    .locals 2

    .line 137
    invoke-virtual {p0}, Lo/ag$2;->onMessageChannelReady()Lo/b;

    move-result-object v0

    invoke-interface {v0}, Lo/b;->onPostMessage()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 138
    invoke-virtual {p0}, Lo/ag$2;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ag$2$onPostMessage;

    .line 140
    invoke-virtual {p1}, Lo/ag$2$onPostMessage;->onMessageChannelReady()J

    move-result-wide v0

    invoke-static {p4, v0, v1}, Lo/ag$2;->extraCallback(IJ)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 141
    invoke-virtual {p1}, Lo/ag$2$onPostMessage;->onNavigationEvent()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method abstract onPostMessage()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lo/setReferrer;",
            "Lo/ag$2$onPostMessage;",
            ">;"
        }
    .end annotation
.end method
