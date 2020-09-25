.class public final Lo/getFirebaseAuthSettings;
.super Lo/getScaleX;
.source ""


# instance fields
.field onPostMessage:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lo/getScaleX;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    iput v0, p0, Lo/getFirebaseAuthSettings;->onPostMessage:F

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/onIdTokenChanged;FFF)V
    .locals 7

    mul-float p2, p4, p3

    const/4 v0, 0x0

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    .line 43
    invoke-virtual {p1, v0, p2, v1, v2}, Lo/onIdTokenChanged;->onMessageChannelReady(FFFF)V

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p4, p4, p2

    mul-float v4, p4, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    move-object v0, p1

    move v3, v4

    .line 44
    invoke-virtual/range {v0 .. v6}, Lo/onIdTokenChanged;->onMessageChannelReady(FFFFFF)V

    return-void
.end method
