.class public Lo/getRating$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public ICustomTabsCallback:C

.field public onNavigationEvent:[F


# direct methods
.method constructor <init>(C[F)V
    .locals 0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-char p1, p0, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    .line 354
    iput-object p2, p0, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    return-void
.end method

.method constructor <init>(Lo/getRating$onMessageChannelReady;)V
    .locals 1

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iget-char v0, p1, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    iput-char v0, p0, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    .line 359
    iget-object p1, p1, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    array-length v0, p1

    invoke-static {p1, v0}, Lo/getRating;->extraCallback([FI)[F

    move-result-object p1

    iput-object p1, p0, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 49

    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    .line 750
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 753
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 754
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 755
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 756
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v13, v0

    mul-double v15, v13, v5

    mul-double v17, v15, v11

    mul-double v19, p7, v7

    mul-double v21, v19, v9

    sub-double v17, v17, v21

    mul-double v13, v13, v7

    mul-double v11, v11, v13

    mul-double v21, p7, v5

    mul-double v9, v9, v21

    add-double/2addr v11, v9

    int-to-double v9, v4

    div-double v9, p17, v9

    const/16 v23, 0x0

    move-wide/from16 v23, p15

    move-wide/from16 v25, v11

    move-wide/from16 v27, v17

    const/4 v2, 0x0

    move-wide/from16 v11, p9

    move-wide/from16 v17, p11

    :goto_0
    if-ge v2, v4, :cond_0

    add-double v31, v23, v9

    .line 763
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    .line 764
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v37, v0, v5

    mul-double v37, v37, v35

    add-double v37, p1, v37

    mul-double v39, v19, v33

    move/from16 v41, v4

    sub-double v3, v37, v39

    mul-double v37, v0, v7

    mul-double v37, v37, v35

    add-double v37, p3, v37

    mul-double v39, v21, v33

    add-double v0, v37, v39

    mul-double v37, v15, v33

    mul-double v39, v19, v35

    sub-double v37, v37, v39

    mul-double v33, v33, v13

    mul-double v35, v35, v21

    add-double v33, v33, v35

    sub-double v23, v31, v23

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v35, v23, v35

    .line 769
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    .line 771
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    const-wide/high16 v39, 0x4008000000000000L    # 3.0

    mul-double v42, v35, v39

    mul-double v42, v42, v35

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    add-double v42, v42, v29

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v35, v35, v42

    mul-double v23, v23, v35

    div-double v23, v23, v39

    mul-double v27, v27, v23

    add-double v11, v11, v27

    mul-double v25, v25, v23

    move-wide/from16 v27, v5

    add-double v5, v17, v25

    mul-double v17, v23, v37

    move-wide/from16 p13, v7

    sub-double v7, v3, v17

    mul-double v23, v23, v33

    move-wide/from16 p7, v9

    sub-double v9, v0, v23

    move-wide/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v14, p0

    .line 778
    invoke-virtual {v14, v13, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v11, v11

    double-to-float v5, v5

    double-to-float v6, v7

    double-to-float v7, v9

    double-to-float v8, v3

    double-to-float v9, v0

    move-object/from16 v42, p0

    move/from16 v43, v11

    move/from16 v44, v5

    move/from16 v45, v6

    move/from16 v46, v7

    move/from16 v47, v8

    move/from16 v48, v9

    .line 780
    invoke-virtual/range {v42 .. v48}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v9, p7

    move-wide/from16 v7, p13

    move-wide v11, v3

    move-wide/from16 v13, v17

    move-wide/from16 v5, v27

    move-wide/from16 v23, v31

    move-wide/from16 v25, v33

    move-wide/from16 v27, v37

    move/from16 v4, v41

    move-wide/from16 v17, v0

    move-wide/from16 v0, p5

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private static ICustomTabsCallback(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 41

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p9

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    :goto_0
    float-to-double v6, v5

    .line 657
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    .line 659
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 660
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    float-to-double v13, v0

    mul-double v8, v13, v6

    move/from16 v10, p2

    move-wide v15, v13

    float-to-double v13, v10

    mul-double v17, v13, v11

    add-double v8, v8, v17

    float-to-double v1, v3

    div-double/2addr v8, v1

    move-wide/from16 v17, v1

    neg-float v1, v0

    float-to-double v1, v1

    mul-double v1, v1, v11

    mul-double v19, v13, v6

    add-double v1, v1, v19

    move-wide/from16 v19, v13

    float-to-double v13, v4

    div-double/2addr v1, v13

    move/from16 v0, p3

    move/from16 v23, v4

    float-to-double v4, v0

    mul-double v4, v4, v6

    move/from16 v10, p4

    move-wide/from16 p5, v1

    float-to-double v1, v10

    mul-double v24, v1, v11

    add-double v4, v4, v24

    div-double v4, v4, v17

    neg-float v10, v0

    move/from16 v24, v3

    move-wide/from16 v25, v4

    float-to-double v3, v10

    mul-double v3, v3, v11

    mul-double v1, v1, v6

    add-double/2addr v3, v1

    div-double/2addr v3, v13

    sub-double v1, v8, v25

    sub-double v27, p5, v3

    add-double v29, v8, v25

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    div-double v29, v29, v31

    add-double v33, p5, v3

    div-double v33, v33, v31

    mul-double v31, v1, v1

    mul-double v35, v27, v27

    add-double v31, v31, v35

    const-string v5, "PathParser"

    const-wide/16 v35, 0x0

    cmpl-double v10, v31, v35

    if-nez v10, :cond_0

    const-string v0, " Points are coincident"

    .line 676
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    div-double v37, v37, v31

    const-wide/high16 v39, 0x3fd0000000000000L    # 0.25

    sub-double v37, v37, v39

    cmpg-double v10, v37, v35

    if-gez v10, :cond_1

    .line 681
    invoke-static/range {v31 .. v32}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Points are too far apart "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v1, v3

    double-to-float v1, v1

    mul-float v3, v24, v1

    mul-float v4, v23, v1

    move/from16 v5, p7

    move/from16 v2, p9

    move v1, v0

    move/from16 v0, p1

    goto/16 :goto_0

    .line 687
    :cond_1
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v23

    mul-double v1, v1, v23

    mul-double v23, v23, v27

    move/from16 v0, p8

    move/from16 v5, p9

    if-ne v0, v5, :cond_2

    sub-double v29, v29, v23

    add-double v33, v33, v1

    goto :goto_1

    :cond_2
    add-double v29, v29, v23

    sub-double v33, v33, v1

    :goto_1
    sub-double v1, p5, v33

    sub-double v8, v8, v29

    .line 700
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v23

    sub-double v3, v3, v33

    sub-double v0, v25, v29

    .line 702
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v0, v23

    cmpl-double v2, v0, v35

    if-ltz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eq v5, v3, :cond_5

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v2, :cond_4

    sub-double/2addr v0, v3

    goto :goto_3

    :cond_4
    add-double/2addr v0, v3

    :cond_5
    :goto_3
    move-wide/from16 v25, v0

    mul-double v29, v29, v17

    mul-double v33, v33, v13

    mul-double v0, v29, v6

    mul-double v2, v33, v11

    sub-double v9, v0, v2

    mul-double v29, v29, v11

    mul-double v33, v33, v6

    add-double v11, v29, v33

    move-object/from16 v8, p0

    move-wide v4, v13

    move-wide v0, v15

    move-wide/from16 v2, v19

    move-wide/from16 v13, v17

    move-wide v15, v4

    move-wide/from16 v17, v0

    .line 719
    invoke-static/range {v8 .. v26}, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback(Landroid/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method public static onMessageChannelReady([Lo/getRating$onMessageChannelReady;Landroid/graphics/Path;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v12, 0x6

    new-array v13, v12, [F

    const/16 v14, 0x6d

    const/4 v15, 0x0

    const/16 v1, 0x6d

    const/4 v10, 0x0

    .line 371
    :goto_0
    array-length v2, v0

    if-ge v10, v2, :cond_21

    .line 372
    aget-object v2, v0, v10

    iget-char v9, v2, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    aget-object v2, v0, v10

    iget-object v8, v2, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    .line 1399
    aget v2, v13, v15

    const/16 v16, 0x1

    .line 1400
    aget v3, v13, v16

    const/16 v17, 0x2

    .line 1401
    aget v4, v13, v17

    const/16 v18, 0x3

    .line 1402
    aget v5, v13, v18

    const/16 v19, 0x4

    .line 1403
    aget v6, v13, v19

    const/16 v20, 0x5

    .line 1404
    aget v7, v13, v20

    sparse-switch v9, :sswitch_data_0

    :goto_1
    :sswitch_0
    const/16 v21, 0x2

    goto :goto_2

    .line 1411
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 1419
    invoke-virtual {v11, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v6

    move v4, v2

    move v3, v7

    move v5, v3

    goto :goto_1

    :sswitch_2
    const/16 v21, 0x4

    goto :goto_2

    :sswitch_3
    const/16 v21, 0x1

    goto :goto_2

    :sswitch_4
    const/16 v21, 0x6

    goto :goto_2

    :sswitch_5
    const/16 v21, 0x7

    :goto_2
    move/from16 v22, v6

    move/from16 v23, v7

    move v7, v2

    move v6, v3

    const/4 v3, 0x0

    .line 1451
    :goto_3
    array-length v2, v8

    if-ge v3, v2, :cond_20

    const/16 v2, 0x41

    if-eq v9, v2, :cond_1d

    const/16 v2, 0x43

    if-eq v9, v2, :cond_1c

    const/16 v15, 0x48

    if-eq v9, v15, :cond_1b

    const/16 v15, 0x51

    if-eq v9, v15, :cond_1a

    const/16 v12, 0x56

    if-eq v9, v12, :cond_19

    const/16 v12, 0x61

    if-eq v9, v12, :cond_16

    const/16 v12, 0x63

    if-eq v9, v12, :cond_15

    const/16 v2, 0x68

    if-eq v9, v2, :cond_14

    const/16 v2, 0x71

    if-eq v9, v2, :cond_13

    const/16 v12, 0x76

    if-eq v9, v12, :cond_12

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_11

    const/16 v12, 0x4d

    if-eq v9, v12, :cond_f

    const/16 v12, 0x73

    const/16 v15, 0x53

    const/high16 v28, 0x40000000    # 2.0f

    if-eq v9, v15, :cond_c

    const/16 v15, 0x74

    const/16 v2, 0x54

    if-eq v9, v2, :cond_9

    const/16 v2, 0x6c

    if-eq v9, v2, :cond_8

    if-eq v9, v14, :cond_6

    if-eq v9, v12, :cond_3

    if-eq v9, v15, :cond_0

    move/from16 v29, v3

    :goto_4
    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    goto/16 :goto_16

    :cond_0
    const/16 v2, 0x71

    if-eq v1, v2, :cond_2

    if-eq v1, v15, :cond_2

    const/16 v2, 0x51

    if-eq v1, v2, :cond_2

    const/16 v2, 0x54

    if-ne v1, v2, :cond_1

    goto :goto_5

    :cond_1
    const/4 v1, 0x0

    const/4 v12, 0x0

    goto :goto_6

    :cond_2
    :goto_5
    sub-float v12, v7, v4

    sub-float v1, v6, v5

    .line 1579
    :goto_6
    aget v2, v8, v3

    add-int/lit8 v4, v3, 0x1

    aget v5, v8, v4

    invoke-virtual {v11, v12, v1, v2, v5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v12, v7

    add-float/2addr v1, v6

    .line 1583
    aget v2, v8, v3

    add-float/2addr v7, v2

    .line 1584
    aget v2, v8, v4

    add-float/2addr v6, v2

    move v5, v1

    move/from16 v29, v3

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    move v4, v12

    goto/16 :goto_16

    :cond_3
    const/16 v2, 0x63

    if-eq v1, v2, :cond_5

    if-eq v1, v12, :cond_5

    const/16 v2, 0x43

    if-eq v1, v2, :cond_5

    const/16 v2, 0x53

    if-ne v1, v2, :cond_4

    goto :goto_7

    :cond_4
    const/4 v2, 0x0

    const/16 v24, 0x0

    goto :goto_8

    :cond_5
    :goto_7
    sub-float v1, v7, v4

    sub-float v2, v6, v5

    move/from16 v24, v2

    move v2, v1

    .line 1533
    :goto_8
    aget v4, v8, v3

    add-int/lit8 v12, v3, 0x1

    aget v5, v8, v12

    add-int/lit8 v15, v3, 0x2

    aget v25, v8, v15

    add-int/lit8 v26, v3, 0x3

    aget v27, v8, v26

    move-object/from16 v1, p1

    move/from16 v29, v3

    move/from16 v3, v24

    move v14, v6

    move/from16 v6, v25

    move v0, v7

    move/from16 v7, v27

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1537
    aget v1, v8, v29

    add-float v7, v0, v1

    .line 1538
    aget v1, v8, v12

    add-float v6, v14, v1

    .line 1539
    aget v1, v8, v15

    add-float/2addr v0, v1

    .line 1540
    aget v1, v8, v26

    goto/16 :goto_e

    :cond_6
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    .line 1454
    aget v1, v8, v29

    add-float v7, v0, v1

    add-int/lit8 v3, v29, 0x1

    .line 1455
    aget v0, v8, v3

    add-float v6, v14, v0

    if-lez v29, :cond_7

    .line 1460
    aget v0, v8, v29

    aget v1, v8, v3

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_4

    .line 1462
    :cond_7
    aget v0, v8, v29

    aget v1, v8, v3

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    goto/16 :goto_d

    :cond_8
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    .line 1482
    aget v1, v8, v29

    add-int/lit8 v3, v29, 0x1

    aget v2, v8, v3

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1483
    aget v1, v8, v29

    add-float v7, v0, v1

    .line 1484
    aget v0, v8, v3

    add-float v6, v14, v0

    goto/16 :goto_4

    :cond_9
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    const/16 v2, 0x71

    if-eq v1, v2, :cond_b

    if-eq v1, v15, :cond_b

    const/16 v2, 0x51

    if-eq v1, v2, :cond_b

    const/16 v2, 0x54

    if-ne v1, v2, :cond_a

    goto :goto_9

    :cond_a
    move v7, v0

    move v6, v14

    goto :goto_a

    :cond_b
    :goto_9
    mul-float v7, v0, v28

    sub-float/2addr v7, v4

    mul-float v6, v14, v28

    sub-float/2addr v6, v5

    .line 1594
    :goto_a
    aget v0, v8, v29

    add-int/lit8 v3, v29, 0x1

    aget v1, v8, v3

    invoke-virtual {v11, v7, v6, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1598
    aget v0, v8, v29

    .line 1599
    aget v1, v8, v3

    goto/16 :goto_f

    :cond_c
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    const/16 v2, 0x63

    if-eq v1, v2, :cond_e

    if-eq v1, v12, :cond_e

    const/16 v2, 0x43

    if-eq v1, v2, :cond_e

    const/16 v2, 0x53

    if-ne v1, v2, :cond_d

    goto :goto_b

    :cond_d
    move v2, v0

    move v3, v14

    goto :goto_c

    :cond_e
    :goto_b
    mul-float v7, v0, v28

    sub-float/2addr v7, v4

    mul-float v6, v14, v28

    sub-float/2addr v6, v5

    move v3, v6

    move v2, v7

    .line 1550
    :goto_c
    aget v4, v8, v29

    add-int/lit8 v0, v29, 0x1

    aget v5, v8, v0

    add-int/lit8 v12, v29, 0x2

    aget v6, v8, v12

    add-int/lit8 v14, v29, 0x3

    aget v7, v8, v14

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1552
    aget v1, v8, v29

    .line 1553
    aget v0, v8, v0

    .line 1554
    aget v7, v8, v12

    .line 1555
    aget v6, v8, v14

    move v5, v0

    move v4, v1

    goto/16 :goto_4

    :cond_f
    move/from16 v29, v3

    .line 1468
    aget v7, v8, v29

    add-int/lit8 v3, v29, 0x1

    .line 1469
    aget v6, v8, v3

    if-lez v29, :cond_10

    .line 1474
    aget v0, v8, v29

    aget v1, v8, v3

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    .line 1476
    :cond_10
    aget v0, v8, v29

    aget v1, v8, v3

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_d
    move/from16 v23, v6

    move/from16 v22, v7

    goto/16 :goto_4

    :cond_11
    move/from16 v29, v3

    .line 1487
    aget v0, v8, v29

    add-int/lit8 v3, v29, 0x1

    aget v1, v8, v3

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1488
    aget v7, v8, v29

    .line 1489
    aget v6, v8, v3

    goto/16 :goto_4

    :cond_12
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    .line 1500
    aget v1, v8, v29

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1501
    aget v1, v8, v29

    add-float v6, v14, v1

    goto/16 :goto_4

    :cond_13
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    .line 1558
    aget v1, v8, v29

    add-int/lit8 v3, v29, 0x1

    aget v2, v8, v3

    add-int/lit8 v4, v29, 0x2

    aget v5, v8, v4

    add-int/lit8 v6, v29, 0x3

    aget v7, v8, v6

    invoke-virtual {v11, v1, v2, v5, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 1559
    aget v1, v8, v29

    add-float v7, v0, v1

    .line 1560
    aget v1, v8, v3

    add-float/2addr v1, v14

    .line 1561
    aget v2, v8, v4

    add-float/2addr v0, v2

    .line 1562
    aget v2, v8, v6

    add-float v6, v14, v2

    move v5, v1

    move v4, v7

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    move v7, v0

    goto/16 :goto_16

    :cond_14
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    .line 1492
    aget v1, v8, v29

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1493
    aget v1, v8, v29

    add-float v7, v0, v1

    goto/16 :goto_4

    :cond_15
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    .line 1508
    aget v2, v8, v29

    add-int/lit8 v3, v29, 0x1

    aget v3, v8, v3

    add-int/lit8 v12, v29, 0x2

    aget v4, v8, v12

    add-int/lit8 v15, v29, 0x3

    aget v5, v8, v15

    add-int/lit8 v24, v29, 0x4

    aget v6, v8, v24

    add-int/lit8 v25, v29, 0x5

    aget v7, v8, v25

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1511
    aget v1, v8, v12

    add-float v7, v0, v1

    .line 1512
    aget v1, v8, v15

    add-float v6, v14, v1

    .line 1513
    aget v1, v8, v24

    add-float/2addr v0, v1

    .line 1514
    aget v1, v8, v25

    :goto_e
    add-float/2addr v1, v14

    :goto_f
    move v5, v6

    move v4, v7

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    move v7, v0

    move v6, v1

    goto/16 :goto_16

    :cond_16
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    add-int/lit8 v12, v29, 0x5

    .line 1603
    aget v1, v8, v12

    add-float v4, v1, v0

    add-int/lit8 v15, v29, 0x6

    aget v1, v8, v15

    add-float v5, v1, v14

    aget v6, v8, v29

    add-int/lit8 v3, v29, 0x1

    aget v7, v8, v3

    add-int/lit8 v3, v29, 0x2

    aget v25, v8, v3

    add-int/lit8 v3, v29, 0x3

    aget v1, v8, v3

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_17

    const/16 v24, 0x1

    goto :goto_10

    :cond_17
    const/16 v24, 0x0

    :goto_10
    add-int/lit8 v3, v29, 0x4

    aget v1, v8, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_18

    const/16 v26, 0x1

    goto :goto_11

    :cond_18
    const/16 v26, 0x0

    :goto_11
    move-object/from16 v1, p1

    move v2, v0

    move v3, v14

    move-object/from16 v27, v8

    move/from16 v8, v25

    move/from16 v25, v9

    move/from16 v9, v24

    move/from16 v28, v10

    move/from16 v10, v26

    invoke-static/range {v1 .. v10}, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 1613
    aget v1, v27, v12

    add-float v7, v0, v1

    .line 1614
    aget v0, v27, v15

    add-float v6, v14, v0

    goto/16 :goto_15

    :cond_19
    move/from16 v29, v3

    move v0, v7

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    .line 1504
    aget v1, v27, v29

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1505
    aget v6, v27, v29

    goto/16 :goto_16

    :cond_1a
    move/from16 v29, v3

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    .line 1565
    aget v0, v27, v29

    add-int/lit8 v3, v29, 0x1

    aget v1, v27, v3

    add-int/lit8 v2, v29, 0x2

    aget v4, v27, v2

    add-int/lit8 v5, v29, 0x3

    aget v6, v27, v5

    invoke-virtual {v11, v0, v1, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1566
    aget v0, v27, v29

    .line 1567
    aget v1, v27, v3

    .line 1568
    aget v7, v27, v2

    .line 1569
    aget v6, v27, v5

    goto :goto_12

    :cond_1b
    move/from16 v29, v3

    move v14, v6

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    .line 1496
    aget v0, v27, v29

    invoke-virtual {v11, v0, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1497
    aget v7, v27, v29

    goto/16 :goto_16

    :cond_1c
    move/from16 v29, v3

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    .line 1518
    aget v2, v27, v29

    add-int/lit8 v3, v29, 0x1

    aget v3, v27, v3

    add-int/lit8 v0, v29, 0x2

    aget v4, v27, v0

    add-int/lit8 v8, v29, 0x3

    aget v5, v27, v8

    add-int/lit8 v9, v29, 0x4

    aget v6, v27, v9

    add-int/lit8 v10, v29, 0x5

    aget v7, v27, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1520
    aget v7, v27, v9

    .line 1521
    aget v6, v27, v10

    .line 1522
    aget v0, v27, v0

    .line 1523
    aget v1, v27, v8

    :goto_12
    move v4, v0

    move v5, v1

    goto :goto_16

    :cond_1d
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    add-int/lit8 v12, v29, 0x5

    .line 1619
    aget v4, v27, v12

    add-int/lit8 v15, v29, 0x6

    aget v5, v27, v15

    aget v6, v27, v29

    add-int/lit8 v3, v29, 0x1

    aget v7, v27, v3

    add-int/lit8 v3, v29, 0x2

    aget v8, v27, v3

    add-int/lit8 v3, v29, 0x3

    aget v1, v27, v3

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e

    const/4 v9, 0x1

    goto :goto_13

    :cond_1e
    const/4 v9, 0x0

    :goto_13
    add-int/lit8 v3, v29, 0x4

    aget v1, v27, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1f

    const/4 v10, 0x1

    goto :goto_14

    :cond_1f
    const/4 v10, 0x0

    :goto_14
    move-object/from16 v1, p1

    move v2, v0

    move v3, v14

    invoke-static/range {v1 .. v10}, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 1629
    aget v7, v27, v12

    .line 1630
    aget v6, v27, v15

    :goto_15
    move v5, v6

    move v4, v7

    :goto_16
    add-int v3, v29, v21

    const/4 v12, 0x6

    const/16 v14, 0x6d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move v9, v1

    move-object/from16 v8, v27

    move/from16 v10, v28

    goto/16 :goto_3

    :cond_20
    move v14, v6

    move v0, v7

    move/from16 v28, v10

    const/4 v1, 0x0

    aput v0, v13, v1

    aput v14, v13, v16

    aput v4, v13, v17

    aput v5, v13, v18

    aput v22, v13, v19

    aput v23, v13, v20

    .line 373
    aget-object v0, p0, v28

    iget-char v0, v0, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    add-int/lit8 v10, v28, 0x1

    move v1, v0

    const/4 v12, 0x6

    const/16 v14, 0x6d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_21
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_0
        0x56 -> :sswitch_3
        0x5a -> :sswitch_1
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
        0x76 -> :sswitch_3
        0x7a -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final onPostMessage(Lo/getRating$onMessageChannelReady;Lo/getRating$onMessageChannelReady;F)V
    .locals 4

    .line 388
    iget-char v0, p1, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    iput-char v0, p0, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    const/4 v0, 0x0

    .line 389
    :goto_0
    iget-object v1, p1, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 390
    iget-object v2, p0, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float v1, v1, v3

    iget-object v3, p2, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    aget v3, v3, v0

    mul-float v3, v3, p3

    add-float/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
