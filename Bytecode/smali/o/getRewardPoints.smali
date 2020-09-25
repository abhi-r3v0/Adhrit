.class public final Lo/getRewardPoints;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRewardPoints$onPostMessage;,
        Lo/getRewardPoints$extraCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/getRewardPoints$onPostMessage;

.field public final onMessageChannelReady:Lo/getRewardPoints$onPostMessage;

.field public final onNavigationEvent:Z

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/getRewardPoints$onPostMessage;I)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p1, p2}, Lo/getRewardPoints;-><init>(Lo/getRewardPoints$onPostMessage;Lo/getRewardPoints$onPostMessage;I)V

    return-void
.end method

.method public constructor <init>(Lo/getRewardPoints$onPostMessage;Lo/getRewardPoints$onPostMessage;I)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lo/getRewardPoints;->ICustomTabsCallback:Lo/getRewardPoints$onPostMessage;

    .line 183
    iput-object p2, p0, Lo/getRewardPoints;->onMessageChannelReady:Lo/getRewardPoints$onPostMessage;

    .line 184
    iput p3, p0, Lo/getRewardPoints;->onPostMessage:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 185
    :goto_0
    iput-boolean p1, p0, Lo/getRewardPoints;->onNavigationEvent:Z

    return-void
.end method

.method public static ICustomTabsCallback(I)Lo/getRewardPoints;
    .locals 6

    const/high16 v0, 0x42480000    # 50.0f

    const/16 v1, 0x24

    const/16 v2, 0x48

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    move v5, p0

    .line 52
    invoke-static/range {v0 .. v5}, Lo/getRewardPoints;->onPostMessage(FIIFFI)Lo/getRewardPoints;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(FIIFFI)Lo/getRewardPoints;
    .locals 31

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    const/4 v7, 0x1

    cmpl-float v8, v0, v5

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 81
    :goto_0
    invoke-static {v8}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    if-lez v1, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 82
    :goto_1
    invoke-static {v8}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    if-lez v2, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 83
    :goto_2
    invoke-static {v8}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    cmpl-float v8, v3, v5

    if-lez v8, :cond_3

    const/high16 v8, 0x43340000    # 180.0f

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 84
    :goto_3
    invoke-static {v8}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    const/high16 v5, 0x43b40000    # 360.0f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 85
    :goto_4
    invoke-static {v5}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    float-to-double v8, v3

    .line 88
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v3, v8

    float-to-double v4, v4

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    int-to-float v5, v1

    div-float v5, v3, v5

    int-to-float v8, v2

    div-float v8, v4, v8

    add-int/lit8 v9, v2, 0x1

    mul-int/lit8 v10, v9, 0x2

    const/4 v11, 0x2

    add-int/2addr v10, v11

    mul-int v10, v10, v1

    mul-int/lit8 v12, v10, 0x3

    .line 96
    new-array v12, v12, [F

    shl-int/2addr v10, v7

    .line 97
    new-array v10, v10, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v13, v1, :cond_b

    int-to-float v6, v13

    mul-float v6, v6, v5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v3, v16

    sub-float v6, v6, v17

    add-int/lit8 v7, v13, 0x1

    int-to-float v11, v7

    mul-float v11, v11, v5

    sub-float v11, v11, v17

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v9, :cond_a

    move/from16 p4, v6

    move/from16 v17, v7

    const/4 v6, 0x0

    :goto_7
    const/4 v7, 0x2

    if-ge v6, v7, :cond_9

    if-nez v6, :cond_5

    move/from16 v7, p4

    move/from16 v18, v9

    goto :goto_8

    :cond_5
    move/from16 v18, v9

    move v7, v11

    :goto_8
    int-to-float v9, v1

    mul-float v9, v9, v8

    const v19, 0x40490fdb    # (float)Math.PI

    add-float v19, v9, v19

    div-float v20, v4, v16

    move/from16 v21, v8

    sub-float v8, v19, v20

    add-int/lit8 v19, v14, 0x1

    move/from16 v20, v1

    float-to-double v1, v0

    move/from16 v22, v5

    move/from16 v23, v6

    float-to-double v5, v8

    .line 117
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v24, v24, v1

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-object/from16 v28, v10

    move/from16 v29, v11

    mul-double v10, v24, v26

    double-to-float v10, v10

    neg-float v10, v10

    aput v10, v12, v14

    add-int/lit8 v10, v19, 0x1

    .line 118
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move v11, v13

    mul-double v13, v1, v24

    double-to-float v13, v13

    aput v13, v12, v19

    add-int/lit8 v13, v10, 0x1

    .line 119
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    double-to-float v1, v1

    aput v1, v12, v10

    add-int/lit8 v1, v15, 0x1

    div-float/2addr v9, v4

    .line 121
    aput v9, v28, v15

    add-int/lit8 v2, v1, 0x1

    add-int v5, v11, v23

    int-to-float v5, v5

    mul-float v5, v5, v22

    div-float/2addr v5, v3

    .line 122
    aput v5, v28, v1

    if-nez v20, :cond_7

    if-eqz v23, :cond_6

    goto :goto_9

    :cond_6
    move/from16 v1, p2

    move/from16 v5, v20

    move/from16 v6, v23

    goto :goto_a

    :cond_7
    :goto_9
    move/from16 v1, p2

    move/from16 v5, v20

    move/from16 v6, v23

    if-ne v5, v1, :cond_8

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    :goto_a
    add-int/lit8 v7, v13, -0x3

    const/4 v8, 0x3

    .line 126
    invoke-static {v12, v7, v12, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, 0x3

    add-int/lit8 v7, v2, -0x2

    move-object/from16 v8, v28

    const/4 v9, 0x2

    .line 133
    invoke-static {v8, v7, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_b

    :cond_8
    move-object/from16 v8, v28

    const/4 v9, 0x2

    :goto_b
    move v15, v2

    move v14, v13

    add-int/lit8 v6, v6, 0x1

    move v2, v1

    move v1, v5

    move-object v10, v8

    move v13, v11

    move/from16 v9, v18

    move/from16 v8, v21

    move/from16 v5, v22

    move/from16 v11, v29

    goto/16 :goto_7

    :cond_9
    move/from16 v22, v5

    move/from16 v21, v8

    move/from16 v18, v9

    move-object v8, v10

    move/from16 v29, v11

    move v11, v13

    const/4 v9, 0x2

    move v5, v1

    move v1, v2

    add-int/lit8 v2, v5, 0x1

    move/from16 v6, p4

    move/from16 v7, v17

    move/from16 v9, v18

    move/from16 v8, v21

    move/from16 v5, v22

    move/from16 v11, v29

    move/from16 v30, v2

    move v2, v1

    move/from16 v1, v30

    goto/16 :goto_6

    :cond_a
    move/from16 v17, v7

    move/from16 v1, p1

    move/from16 v13, v17

    const/4 v7, 0x1

    const/4 v11, 0x2

    goto/16 :goto_5

    :cond_b
    move-object v8, v10

    .line 146
    new-instance v0, Lo/getRewardPoints$extraCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v12, v8, v2}, Lo/getRewardPoints$extraCallback;-><init>(I[F[FI)V

    .line 148
    new-instance v3, Lo/getRewardPoints;

    new-instance v4, Lo/getRewardPoints$onPostMessage;

    new-array v2, v2, [Lo/getRewardPoints$extraCallback;

    aput-object v0, v2, v1

    invoke-direct {v4, v2}, Lo/getRewardPoints$onPostMessage;-><init>([Lo/getRewardPoints$extraCallback;)V

    move/from16 v0, p5

    invoke-direct {v3, v4, v0}, Lo/getRewardPoints;-><init>(Lo/getRewardPoints$onPostMessage;I)V

    return-object v3
.end method
