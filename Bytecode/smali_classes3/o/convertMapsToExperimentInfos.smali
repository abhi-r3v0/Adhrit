.class public final Lo/convertMapsToExperimentInfos;
.super Lo/getTenantId;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public ICustomTabsCallback:F

.field public extraCallback:F

.field public onMessageChannelReady:F

.field public onNavigationEvent:F

.field public onPostMessage:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lo/getTenantId;-><init>()V

    .line 61
    iput p1, p0, Lo/convertMapsToExperimentInfos;->onNavigationEvent:F

    .line 62
    iput p2, p0, Lo/convertMapsToExperimentInfos;->extraCallback:F

    .line 63
    iput p3, p0, Lo/convertMapsToExperimentInfos;->onMessageChannelReady:F

    const/4 p1, 0x0

    cmpg-float p2, p3, p1

    if-ltz p2, :cond_0

    .line 67
    iput p1, p0, Lo/convertMapsToExperimentInfos;->onPostMessage:F

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cradleVerticalOffset must be positive."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(FFFLo/onIdTokenChanged;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v9, p4

    .line 73
    iget v2, v0, Lo/convertMapsToExperimentInfos;->ICustomTabsCallback:F

    const/4 v10, 0x0

    cmpl-float v3, v2, v10

    if-nez v3, :cond_0

    .line 75
    invoke-virtual {v9, v1, v10}, Lo/onIdTokenChanged;->extraCallback(FF)V

    return-void

    .line 79
    :cond_0
    iget v3, v0, Lo/convertMapsToExperimentInfos;->onNavigationEvent:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v3, v3, v11

    add-float/2addr v3, v2

    div-float v12, v3, v11

    .line 81
    iget v2, v0, Lo/convertMapsToExperimentInfos;->extraCallback:F

    mul-float v13, p3, v2

    .line 82
    iget v2, v0, Lo/convertMapsToExperimentInfos;->onPostMessage:F

    add-float v14, p2, v2

    .line 86
    iget v2, v0, Lo/convertMapsToExperimentInfos;->onMessageChannelReady:F

    mul-float v2, v2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p3

    mul-float v4, v4, v12

    add-float v15, v2, v4

    div-float v2, v15, v12

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 92
    invoke-virtual {v9, v1, v10}, Lo/onIdTokenChanged;->extraCallback(FF)V

    return-void

    :cond_1
    add-float v2, v12, v13

    mul-float v2, v2, v2

    add-float v3, v15, v13

    mul-float v4, v3, v3

    sub-float/2addr v2, v4

    float-to-double v4, v2

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    sub-float v4, v14, v2

    add-float v16, v14, v2

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v8, v2

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v17, v2, v8

    .line 116
    invoke-virtual {v9, v4, v10}, Lo/onIdTokenChanged;->extraCallback(FF)V

    sub-float v3, v4, v13

    const/4 v5, 0x0

    add-float v6, v4, v13

    mul-float v18, v13, v11

    const/high16 v7, 0x43870000    # 270.0f

    move-object/from16 v2, p4

    move v4, v5

    move v5, v6

    move/from16 v6, v18

    move/from16 v19, v8

    .line 120
    invoke-virtual/range {v2 .. v8}, Lo/onIdTokenChanged;->onMessageChannelReady(FFFFFF)V

    sub-float v3, v14, v12

    neg-float v2, v12

    sub-float v4, v2, v15

    add-float v5, v14, v12

    sub-float v6, v12, v15

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v7, v2, v17

    mul-float v17, v17, v11

    sub-float v8, v17, v2

    move-object/from16 v2, p4

    .line 129
    invoke-virtual/range {v2 .. v8}, Lo/onIdTokenChanged;->onMessageChannelReady(FFFFFF)V

    sub-float v3, v16, v13

    const/4 v4, 0x0

    add-float v5, v16, v13

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v19

    move-object/from16 v2, p4

    move/from16 v6, v18

    move/from16 v8, v19

    .line 139
    invoke-virtual/range {v2 .. v8}, Lo/onIdTokenChanged;->onMessageChannelReady(FFFFFF)V

    .line 148
    invoke-virtual {v9, v1, v10}, Lo/onIdTokenChanged;->extraCallback(FF)V

    return-void
.end method
