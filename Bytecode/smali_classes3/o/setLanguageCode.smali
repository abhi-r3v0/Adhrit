.class public final Lo/setLanguageCode;
.super Lo/getScaleX;
.source ""


# instance fields
.field onNavigationEvent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lo/getScaleX;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    iput v0, p0, Lo/setLanguageCode;->onNavigationEvent:F

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/onIdTokenChanged;FFF)V
    .locals 4

    mul-float p2, p4, p3

    const/4 v0, 0x0

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    .line 47
    invoke-virtual {p1, v0, p2, v1, v2}, Lo/onIdTokenChanged;->onMessageChannelReady(FFFF)V

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, p4

    mul-double v0, v0, v2

    float-to-double p2, p3

    mul-double v0, v0, p2

    double-to-float p4, v0

    const-wide/16 v0, 0x0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    mul-double v0, v0, p2

    double-to-float p2, v0

    .line 48
    invoke-virtual {p1, p4, p2}, Lo/onIdTokenChanged;->extraCallback(FF)V

    return-void
.end method
