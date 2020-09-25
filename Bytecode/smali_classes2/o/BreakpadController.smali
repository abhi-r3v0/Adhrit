.class final Lo/BreakpadController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BreakpadController$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private extraCallback:I

.field private final onMessageChannelReady:[F

.field private onNavigationEvent:I

.field private final onPostMessage:Lo/BreakpadController$extraCallback;


# direct methods
.method public constructor <init>(Lo/BreakpadController$extraCallback;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lo/BreakpadController;->onNavigationEvent:I

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lo/BreakpadController;->extraCallback:I

    const-wide/16 v0, -0x1

    .line 98
    iput-wide v0, p0, Lo/BreakpadController;->ICustomTabsCallback:J

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 99
    iput-object v0, p0, Lo/BreakpadController;->onMessageChannelReady:[F

    .line 17
    iput-object p1, p0, Lo/BreakpadController;->onPostMessage:Lo/BreakpadController$extraCallback;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 24
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 1089
    iget-object v3, p0, Lo/BreakpadController;->onMessageChannelReady:[F

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 1090
    :goto_1
    iget-object v4, p0, Lo/BreakpadController;->onMessageChannelReady:[F

    const v5, 0x3f333333    # 0.7f

    aget v6, v0, v2

    sub-float/2addr v6, v3

    mul-float v6, v6, v5

    add-float/2addr v3, v6

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1093
    :cond_1
    iget-object v0, p0, Lo/BreakpadController;->onMessageChannelReady:[F

    .line 25
    iget v2, p0, Lo/BreakpadController;->extraCallback:I

    .line 27
    aget v3, v0, v1

    aget v4, v0, v1

    mul-float v3, v3, v4

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v6, v0, v4

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v6, v0, v5

    aget v7, v0, v5

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    .line 33
    iput v1, p0, Lo/BreakpadController;->extraCallback:I

    .line 35
    aget v6, v0, v5

    const v7, 0x40f9999a    # 7.8f

    const/4 v8, -0x1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    aget v6, v0, v5

    const v7, 0x413ccccd    # 11.8f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 36
    iput v8, p0, Lo/BreakpadController;->extraCallback:I

    .line 39
    :cond_2
    aget v6, v0, v5

    const v7, -0x3f066666    # -7.8f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    aget v0, v0, v5

    const v5, -0x3ec33333    # -11.8f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    .line 40
    iput v4, p0, Lo/BreakpadController;->extraCallback:I

    :cond_3
    const v0, 0x42735c2a    # 60.840004f

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_4

    const v0, 0x430b3d71    # 139.24f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_5

    .line 46
    :cond_4
    iput v1, p0, Lo/BreakpadController;->extraCallback:I

    .line 49
    :cond_5
    iget v0, p0, Lo/BreakpadController;->extraCallback:I

    if-eq v2, v0, :cond_6

    .line 50
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v2, p0, Lo/BreakpadController;->ICustomTabsCallback:J

    .line 56
    :cond_6
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v5, p0, Lo/BreakpadController;->ICustomTabsCallback:J

    sub-long/2addr v2, v5

    .line 58
    iget p1, p0, Lo/BreakpadController;->extraCallback:I

    const-wide/32 v5, 0xee6b280

    const-string v0, "MixpanelAPI.FlipGesture"

    if-eq p1, v8, :cond_9

    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_7

    goto :goto_2

    :cond_7
    cmp-long p1, v2, v5

    if-lez p1, :cond_a

    .line 60
    iget p1, p0, Lo/BreakpadController;->onNavigationEvent:I

    if-nez p1, :cond_a

    const-string p1, "Flip gesture begun"

    .line 61
    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput v4, p0, Lo/BreakpadController;->onNavigationEvent:I

    return-void

    :cond_8
    const-wide/32 v4, 0x3b9aca00

    cmp-long p1, v2, v4

    if-lez p1, :cond_a

    .line 73
    iget p1, p0, Lo/BreakpadController;->onNavigationEvent:I

    if-eqz p1, :cond_a

    const-string p1, "Flip gesture abandoned"

    .line 74
    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput v1, p0, Lo/BreakpadController;->onNavigationEvent:I

    goto :goto_2

    :cond_9
    cmp-long p1, v2, v5

    if-lez p1, :cond_a

    .line 66
    iget p1, p0, Lo/BreakpadController;->onNavigationEvent:I

    if-ne p1, v4, :cond_a

    const-string p1, "Flip gesture completed"

    .line 67
    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput v1, p0, Lo/BreakpadController;->onNavigationEvent:I

    .line 69
    iget-object p1, p0, Lo/BreakpadController;->onPostMessage:Lo/BreakpadController$extraCallback;

    invoke-interface {p1}, Lo/BreakpadController$extraCallback;->onMessageChannelReady()V

    :cond_a
    :goto_2
    return-void
.end method
