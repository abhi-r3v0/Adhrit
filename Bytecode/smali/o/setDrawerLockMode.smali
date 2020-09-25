.class public Lo/setDrawerLockMode;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDrawerLockMode$extraCallback;,
        Lo/setDrawerLockMode$onPostMessage;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/setScrimColor;

.field private final ICustomTabsCallback$Stub:Landroid/graphics/RectF;

.field private ICustomTabsCallback$Stub$Proxy:Lo/setDrawerLockMode$onPostMessage;

.field private ICustomTabsService:Landroid/graphics/Paint;

.field private ICustomTabsService$Stub:Lo/getViewLifecycleOwner;

.field private ICustomTabsService$Stub$Proxy:F

.field private IPostMessageService:F

.field private IPostMessageService$Stub:F

.field private IPostMessageService$Stub$Proxy:F

.field private asBinder:Landroid/view/ScaleGestureDetector;

.field private final asInterface:[F

.field private cancel:Ljava/lang/Integer;

.field private cancelAll:Z

.field extraCallback:I

.field private extraCommand:F

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:Landroid/graphics/Paint;

.field private newSession:Landroid/graphics/Paint;

.field private notify:Lo/setDrawerTitle$extraCallback;

.field final onMessageChannelReady:Landroid/graphics/Rect;

.field onNavigationEvent:I

.field onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

.field onRelationshipValidationResult:Z

.field private final onTransact:Landroid/graphics/RectF;

.field private postMessage:I

.field private requestPostMessageChannel:I

.field private updateVisuals:Landroid/graphics/Path;

.field private validateRelationship:F

.field private warmup:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lo/setDrawerLockMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Lo/setScrimColor;

    invoke-direct {p1}, Lo/setScrimColor;-><init>()V

    iput-object p1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 35
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/setDrawerLockMode;->onTransact:Landroid/graphics/RectF;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 39
    iput-object p1, p0, Lo/setDrawerLockMode;->asInterface:[F

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    .line 47
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/setDrawerLockMode;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 79
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lo/setDrawerLockMode;->cancelAll:Z

    .line 131
    iget p1, p0, Lo/setDrawerLockMode;->onNavigationEvent:I

    int-to-float p1, p1

    iget p2, p0, Lo/setDrawerLockMode;->extraCallback:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    return-void
.end method

.method private ICustomTabsCallback()Z
    .locals 5

    .line 1038
    iget-object v0, p0, Lo/setDrawerLockMode;->asInterface:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x6

    aget v3, v0, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x7

    aget v0, v0, v4

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method static synthetic extraCallback(Lo/setDrawerLockMode;)Lo/setScrimColor;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    return-object p0
.end method

.method private static onPostMessage(FI)Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 174
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x1

    .line 177
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onPostMessage(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 730
    iget-object v1, v0, Lo/setDrawerLockMode;->ICustomTabsService:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    .line 731
    iget-object v1, v0, Lo/setDrawerLockMode;->warmup:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 732
    :goto_0
    iget-object v2, v0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 15146
    iget-object v3, v2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v4, v2, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 15147
    iget-object v2, v2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 733
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 735
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    .line 736
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    .line 738
    iget-object v4, v0, Lo/setDrawerLockMode;->onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

    sget-object v6, Lo/setDrawerTitle$onMessageChannelReady;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    if-ne v4, v6, :cond_1

    .line 740
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v4, v1

    .line 741
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    sub-float/2addr v7, v1

    .line 744
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v11, v1, v3

    .line 745
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v15, v1, v3

    float-to-double v8, v7

    sub-float v1, v4, v3

    div-float/2addr v1, v4

    float-to-double v12, v1

    .line 746
    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v8, v8, v12

    double-to-float v1, v8

    .line 747
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    sub-float v10, v3, v1

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    add-float v12, v3, v1

    iget-object v13, v0, Lo/setDrawerLockMode;->ICustomTabsService:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v11

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 748
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    sub-float v14, v3, v1

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    add-float v16, v3, v1

    iget-object v1, v0, Lo/setDrawerLockMode;->ICustomTabsService:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v15

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 751
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v12, v1, v5

    .line 752
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v17, v1, v5

    float-to-double v8, v4

    sub-float v1, v7, v5

    div-float/2addr v1, v7

    float-to-double v5, v1

    .line 753
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v8, v8, v5

    double-to-float v1, v8

    .line 754
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float v9, v3, v1

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    add-float v11, v3, v1

    iget-object v13, v0, Lo/setDrawerLockMode;->ICustomTabsService:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v10, v12

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 755
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float v14, v3, v1

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    add-float v16, v2, v1

    iget-object v1, v0, Lo/setDrawerLockMode;->ICustomTabsService:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v15, v17

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 759
    :cond_1
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v9, v1, v3

    .line 760
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v13, v1, v3

    .line 761
    iget v8, v2, Landroid/graphics/RectF;->top:F

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v11, v0, Lo/setDrawerLockMode;->ICustomTabsService:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 762
    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v15, v0, Lo/setDrawerLockMode;->ICustomTabsService:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v13

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 765
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v10, v1, v5

    .line 766
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v15, v1, v5

    .line 767
    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->right:F

    iget-object v11, v0, Lo/setDrawerLockMode;->ICustomTabsService:Landroid/graphics/Paint;

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 768
    iget v12, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lo/setDrawerLockMode;->ICustomTabsService:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v13, v15

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private onPostMessage(Landroid/graphics/RectF;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 963
    iget-object v2, v0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v2}, Lo/ViewDataBinding$OnStartListener;->onPostMessage([F)F

    move-result v2

    .line 964
    iget-object v3, v0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v3}, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent([F)F

    move-result v3

    .line 965
    iget-object v4, v0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v4}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady([F)F

    move-result v4

    .line 966
    iget-object v5, v0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v5}, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback([F)F

    move-result v5

    .line 968
    invoke-direct/range {p0 .. p0}, Lo/setDrawerLockMode;->ICustomTabsCallback()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 969
    iget-object v1, v0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    return v7

    .line 972
    :cond_0
    iget-object v6, v0, Lo/setDrawerLockMode;->asInterface:[F

    aget v8, v6, v7

    const/4 v9, 0x1

    .line 973
    aget v10, v6, v9

    const/4 v11, 0x4

    .line 974
    aget v12, v6, v11

    const/4 v13, 0x5

    .line 975
    aget v14, v6, v13

    const/4 v15, 0x6

    .line 976
    aget v16, v6, v15

    const/16 v17, 0x7

    .line 977
    aget v18, v6, v17

    .line 979
    aget v19, v6, v17

    aget v20, v6, v9

    const/16 v21, 0x2

    const/16 v22, 0x3

    cmpg-float v19, v19, v20

    if-gez v19, :cond_2

    .line 980
    aget v8, v6, v9

    aget v10, v6, v22

    cmpg-float v8, v8, v10

    if-gez v8, :cond_1

    .line 981
    aget v8, v6, v15

    .line 982
    aget v10, v6, v17

    .line 983
    aget v12, v6, v21

    .line 984
    aget v14, v6, v22

    .line 985
    aget v16, v6, v11

    .line 986
    aget v18, v6, v13

    goto :goto_0

    .line 988
    :cond_1
    aget v8, v6, v11

    .line 989
    aget v10, v6, v13

    .line 990
    aget v12, v6, v7

    .line 991
    aget v14, v6, v9

    .line 992
    aget v16, v6, v21

    .line 993
    aget v18, v6, v22

    goto :goto_0

    .line 995
    :cond_2
    aget v11, v6, v9

    aget v13, v6, v22

    cmpl-float v11, v11, v13

    if-lez v11, :cond_3

    .line 996
    aget v8, v6, v21

    .line 997
    aget v10, v6, v22

    .line 998
    aget v12, v6, v15

    .line 999
    aget v14, v6, v17

    .line 1000
    aget v16, v6, v7

    .line 1001
    aget v18, v6, v9

    :cond_3
    :goto_0
    sub-float v18, v18, v10

    sub-float v16, v16, v8

    div-float v18, v18, v16

    const/high16 v6, -0x40800000    # -1.0f

    div-float v6, v6, v18

    mul-float v7, v18, v8

    sub-float v7, v10, v7

    mul-float v8, v8, v6

    sub-float/2addr v10, v8

    mul-float v8, v18, v12

    sub-float v8, v14, v8

    mul-float v12, v12, v6

    sub-float/2addr v14, v12

    .line 1011
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    iget v12, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget v13, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    div-float/2addr v11, v12

    neg-float v12, v11

    .line 1013
    iget v13, v1, Landroid/graphics/RectF;->top:F

    iget v15, v1, Landroid/graphics/RectF;->left:F

    mul-float v15, v15, v11

    sub-float/2addr v13, v15

    .line 1014
    iget v15, v1, Landroid/graphics/RectF;->top:F

    iget v9, v1, Landroid/graphics/RectF;->right:F

    mul-float v9, v9, v12

    sub-float/2addr v15, v9

    sub-float v9, v13, v7

    sub-float v17, v18, v11

    div-float v9, v9, v17

    .line 1016
    iget v0, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v9, v0

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    move v9, v2

    :goto_1
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v13, v10

    sub-float v9, v6, v11

    div-float/2addr v2, v9

    .line 1017
    iget v9, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v2, v9

    if-gez v9, :cond_5

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v15, v14

    sub-float v9, v6, v12

    div-float/2addr v2, v9

    .line 1018
    iget v11, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v11, v2, v11

    if-gez v11, :cond_6

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v15, v10

    div-float/2addr v2, v9

    .line 1019
    iget v9, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v2, v9

    if-lez v9, :cond_7

    goto :goto_4

    :cond_7
    move v2, v4

    :goto_4
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v15, v8

    sub-float v4, v18, v12

    div-float/2addr v15, v4

    .line 1020
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v15, v4

    if-lez v4, :cond_8

    goto :goto_5

    :cond_8
    move v15, v2

    :goto_5
    invoke-static {v2, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v13, v8

    div-float v13, v13, v17

    .line 1021
    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v13, v1

    if-lez v1, :cond_9

    goto :goto_6

    :cond_9
    move v13, v2

    :goto_6
    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v2, v18, v0

    add-float/2addr v2, v7

    mul-float v4, v6, v1

    add-float/2addr v4, v10

    .line 1023
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v6, v6, v0

    add-float/2addr v6, v14

    mul-float v18, v18, v1

    add-float v3, v18, v8

    .line 1024
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v4, p0

    .line 1026
    iget-object v5, v4, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 1027
    iget-object v0, v4, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1028
    iget-object v0, v4, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1029
    iget-object v0, v4, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method final extraCallback(Landroid/graphics/RectF;)V
    .locals 6

    .line 589
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 7161
    iget v2, v1, Lo/setScrimColor;->onNavigationEvent:F

    iget v3, v1, Lo/setScrimColor;->asBinder:F

    iget v1, v1, Lo/setScrimColor;->newSession:F

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 590
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 8161
    iget v1, v0, Lo/setScrimColor;->onNavigationEvent:F

    iget v3, v0, Lo/setScrimColor;->asBinder:F

    iget v0, v0, Lo/setScrimColor;->newSession:F

    div-float/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 590
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 591
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 592
    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 594
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 8168
    iget v3, v1, Lo/setScrimColor;->onPostMessage:F

    iget v4, v1, Lo/setScrimColor;->asInterface:F

    iget v1, v1, Lo/setScrimColor;->ICustomTabsService:F

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 595
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 9168
    iget v1, v0, Lo/setScrimColor;->onPostMessage:F

    iget v3, v0, Lo/setScrimColor;->asInterface:F

    iget v0, v0, Lo/setScrimColor;->ICustomTabsService:F

    div-float/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 595
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 596
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 597
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 599
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 9175
    iget v3, v1, Lo/setScrimColor;->extraCallback:F

    iget v4, v1, Lo/setScrimColor;->ICustomTabsCallback$Stub:F

    iget v1, v1, Lo/setScrimColor;->newSession:F

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 600
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 10175
    iget v3, v1, Lo/setScrimColor;->extraCallback:F

    iget v4, v1, Lo/setScrimColor;->ICustomTabsCallback$Stub:F

    iget v1, v1, Lo/setScrimColor;->newSession:F

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 601
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 602
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 604
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 10182
    iget v3, v1, Lo/setScrimColor;->onRelationshipValidationResult:F

    iget v4, v1, Lo/setScrimColor;->onTransact:F

    iget v1, v1, Lo/setScrimColor;->ICustomTabsService:F

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 605
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 11182
    iget v3, v1, Lo/setScrimColor;->onRelationshipValidationResult:F

    iget v4, v1, Lo/setScrimColor;->onTransact:F

    iget v1, v1, Lo/setScrimColor;->ICustomTabsService:F

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 606
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 607
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 610
    :cond_3
    invoke-direct {p0, p1}, Lo/setDrawerLockMode;->onPostMessage(Landroid/graphics/RectF;)Z

    .line 611
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 612
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 613
    iget-object v3, p0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 614
    iget-object v3, p0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 615
    iget-object v4, p0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 616
    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_4

    .line 617
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 619
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 620
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 622
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 623
    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 625
    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    .line 626
    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 629
    :cond_7
    iget-boolean v0, p0, Lo/setDrawerLockMode;->cancelAll:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v5, v0, v3

    if-lez v5, :cond_9

    .line 630
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    mul-float v1, v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 631
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    .line 632
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 633
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    return-void

    .line 635
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    .line 636
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 637
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_9
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 649
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 11674
    iget-object v1, v0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 12146
    iget-object v2, v1, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v3, v1, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 12147
    iget-object v8, v1, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 11676
    iget-object v1, v0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v1}, Lo/ViewDataBinding$OnStartListener;->onPostMessage([F)F

    move-result v1

    const/4 v9, 0x0

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 11677
    iget-object v1, v0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v1}, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent([F)F

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 11678
    iget-object v1, v0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v1}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady([F)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 11679
    iget-object v1, v0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v1}, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback([F)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 11681
    iget-object v1, v0, Lo/setDrawerLockMode;->onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

    sget-object v2, Lo/setDrawerTitle$onMessageChannelReady;->onNavigationEvent:Lo/setDrawerTitle$onMessageChannelReady;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v4, 0x1a

    const/16 v5, 0x11

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_3

    .line 11683
    invoke-direct/range {p0 .. p0}, Lo/setDrawerLockMode;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v5, :cond_0

    goto :goto_1

    .line 11689
    :cond_0
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 11690
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    iget-object v2, v0, Lo/setDrawerLockMode;->asInterface:[F

    aget v5, v2, v14

    aget v2, v2, v13

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 11691
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    iget-object v2, v0, Lo/setDrawerLockMode;->asInterface:[F

    const/4 v5, 0x2

    aget v5, v2, v5

    const/4 v6, 0x3

    aget v2, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11692
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    iget-object v2, v0, Lo/setDrawerLockMode;->asInterface:[F

    const/4 v5, 0x4

    aget v5, v2, v5

    const/4 v6, 0x5

    aget v2, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11693
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    iget-object v2, v0, Lo/setDrawerLockMode;->asInterface:[F

    const/4 v5, 0x6

    aget v5, v2, v5

    const/4 v6, 0x7

    aget v2, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11694
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 11696
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 11697
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1

    .line 11698
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 11700
    :cond_1
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 11702
    :goto_0
    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_3

    .line 11684
    :cond_2
    :goto_1
    iget v5, v8, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lo/setDrawerLockMode;->mayLaunchUrl:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11685
    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lo/setDrawerLockMode;->mayLaunchUrl:Landroid/graphics/Paint;

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11686
    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->left:F

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lo/setDrawerLockMode;->mayLaunchUrl:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11687
    iget v2, v8, Landroid/graphics/RectF;->right:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lo/setDrawerLockMode;->mayLaunchUrl:Landroid/graphics/Paint;

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 11707
    :cond_3
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 11708
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v5, :cond_4

    iget-object v1, v0, Lo/setDrawerLockMode;->onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

    sget-object v2, Lo/setDrawerTitle$onMessageChannelReady;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    if-ne v1, v2, :cond_4

    .line 11709
    iget-object v1, v0, Lo/setDrawerLockMode;->onTransact:Landroid/graphics/RectF;

    iget v2, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v15

    iget v5, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v15

    iget v6, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v15

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v15

    invoke-virtual {v1, v2, v5, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 11711
    :cond_4
    iget-object v1, v0, Lo/setDrawerLockMode;->onTransact:Landroid/graphics/RectF;

    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v5, v8, Landroid/graphics/RectF;->top:F

    iget v6, v8, Landroid/graphics/RectF;->right:F

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v5, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11713
    :goto_2
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    iget-object v2, v0, Lo/setDrawerLockMode;->onTransact:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 11714
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 11715
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_5

    .line 11716
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_3

    .line 11718
    :cond_5
    iget-object v1, v0, Lo/setDrawerLockMode;->updateVisuals:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 11720
    :goto_3
    iget-object v6, v0, Lo/setDrawerLockMode;->mayLaunchUrl:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v4, v11

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11721
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 654
    :goto_4
    iget-object v1, v0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 12250
    iget-object v2, v1, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_6

    iget-object v1, v1, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_8

    .line 656
    iget-object v1, v0, Lo/setDrawerLockMode;->notify:Lo/setDrawerTitle$extraCallback;

    sget-object v2, Lo/setDrawerTitle$extraCallback;->ICustomTabsCallback:Lo/setDrawerTitle$extraCallback;

    if-ne v1, v2, :cond_7

    .line 657
    invoke-direct/range {p0 .. p1}, Lo/setDrawerLockMode;->onPostMessage(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 658
    :cond_7
    iget-object v1, v0, Lo/setDrawerLockMode;->notify:Lo/setDrawerTitle$extraCallback;

    sget-object v2, Lo/setDrawerTitle$extraCallback;->onNavigationEvent:Lo/setDrawerTitle$extraCallback;

    if-ne v1, v2, :cond_8

    iget-object v1, v0, Lo/setDrawerLockMode;->ICustomTabsService$Stub:Lo/getViewLifecycleOwner;

    if-eqz v1, :cond_8

    .line 660
    invoke-direct/range {p0 .. p1}, Lo/setDrawerLockMode;->onPostMessage(Landroid/graphics/Canvas;)V

    .line 12777
    :cond_8
    :goto_6
    iget-object v1, v0, Lo/setDrawerLockMode;->warmup:Landroid/graphics/Paint;

    if-eqz v1, :cond_a

    .line 12778
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 12779
    iget-object v2, v0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 13146
    iget-object v3, v2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v4, v2, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 13147
    iget-object v2, v2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    div-float/2addr v1, v15

    .line 12780
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 12782
    iget-object v1, v0, Lo/setDrawerLockMode;->onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

    sget-object v3, Lo/setDrawerTitle$onMessageChannelReady;->onNavigationEvent:Lo/setDrawerTitle$onMessageChannelReady;

    if-ne v1, v3, :cond_9

    .line 12784
    iget-object v1, v0, Lo/setDrawerLockMode;->warmup:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 12787
    :cond_9
    iget-object v1, v0, Lo/setDrawerLockMode;->warmup:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13796
    :cond_a
    :goto_7
    iget-object v1, v0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    if-eqz v1, :cond_d

    .line 13798
    iget-object v1, v0, Lo/setDrawerLockMode;->warmup:Landroid/graphics/Paint;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    .line 13799
    :goto_8
    iget-object v2, v0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float v3, v2, v15

    .line 13802
    iget-object v4, v0, Lo/setDrawerLockMode;->onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

    sget-object v5, Lo/setDrawerTitle$onMessageChannelReady;->onNavigationEvent:Lo/setDrawerTitle$onMessageChannelReady;

    if-ne v4, v5, :cond_c

    iget v9, v0, Lo/setDrawerLockMode;->extraCommand:F

    :cond_c
    add-float/2addr v9, v3

    .line 13806
    iget-object v4, v0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 14146
    iget-object v5, v4, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v6, v4, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14147
    iget-object v8, v4, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 13807
    invoke-virtual {v8, v9, v9}, Landroid/graphics/RectF;->inset(FF)V

    sub-float/2addr v2, v1

    div-float v9, v2, v15

    add-float v10, v3, v9

    .line 13813
    iget v1, v8, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v10

    iget v1, v8, Landroid/graphics/RectF;->left:F

    sub-float v4, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->top:F

    iget v5, v0, Lo/setDrawerLockMode;->IPostMessageService$Stub:F

    add-float/2addr v5, v1

    iget-object v6, v0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13819
    iget v1, v8, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v10

    iget v1, v8, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lo/setDrawerLockMode;->IPostMessageService$Stub:F

    add-float/2addr v4, v1

    iget v1, v8, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v9

    iget-object v6, v0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13827
    iget v1, v8, Landroid/graphics/RectF;->right:F

    add-float v2, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v10

    iget v1, v8, Landroid/graphics/RectF;->right:F

    add-float v4, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->top:F

    iget v5, v0, Lo/setDrawerLockMode;->IPostMessageService$Stub:F

    add-float/2addr v5, v1

    iget-object v6, v0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13833
    iget v1, v8, Landroid/graphics/RectF;->right:F

    add-float v2, v1, v10

    iget v1, v8, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lo/setDrawerLockMode;->IPostMessageService$Stub:F

    sub-float v4, v1, v4

    iget v1, v8, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v9

    iget-object v6, v0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13841
    iget v1, v8, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    add-float v3, v1, v10

    iget v1, v8, Landroid/graphics/RectF;->left:F

    sub-float v4, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Lo/setDrawerLockMode;->IPostMessageService$Stub:F

    sub-float v5, v1, v5

    iget-object v6, v0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13847
    iget v1, v8, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v10

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    add-float v3, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lo/setDrawerLockMode;->IPostMessageService$Stub:F

    add-float/2addr v4, v1

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    add-float v5, v1, v9

    iget-object v6, v0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13855
    iget v1, v8, Landroid/graphics/RectF;->right:F

    add-float v2, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    add-float v3, v1, v10

    iget v1, v8, Landroid/graphics/RectF;->right:F

    add-float v4, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Lo/setDrawerLockMode;->IPostMessageService$Stub:F

    sub-float v5, v1, v5

    iget-object v6, v0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13861
    iget v1, v8, Landroid/graphics/RectF;->right:F

    add-float v2, v1, v10

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    add-float v3, v1, v9

    iget v1, v8, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lo/setDrawerLockMode;->IPostMessageService$Stub:F

    sub-float v4, v1, v4

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    add-float v5, v1, v9

    iget-object v6, v0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_d
    return-void
.end method

.method final onPostMessage()V
    .locals 10

    .line 500
    iget-object v0, p0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v0}, Lo/ViewDataBinding$OnStartListener;->onPostMessage([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 501
    iget-object v2, p0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v2}, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent([F)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 502
    iget-object v2, p0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v2}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady([F)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 503
    iget-object v3, p0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v3}, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback([F)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v4, v2, v0

    if-lez v4, :cond_4

    cmpg-float v4, v3, v1

    if-gtz v4, :cond_0

    goto/16 :goto_1

    .line 509
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x1

    .line 512
    iput-boolean v5, p0, Lo/setDrawerLockMode;->onRelationshipValidationResult:Z

    .line 514
    iget v5, p0, Lo/setDrawerLockMode;->IPostMessageService:F

    sub-float v6, v2, v0

    mul-float v7, v5, v6

    sub-float v8, v3, v1

    mul-float v5, v5, v8

    .line 517
    iget-object v9, p0, Lo/setDrawerLockMode;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lo/setDrawerLockMode;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_1

    .line 519
    iget-object v5, p0, Lo/setDrawerLockMode;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 4189
    iget v6, v6, Lo/setScrimColor;->newSession:F

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    .line 520
    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 521
    iget-object v5, p0, Lo/setDrawerLockMode;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 4196
    iget v6, v6, Lo/setScrimColor;->ICustomTabsService:F

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 521
    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 522
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lo/setDrawerLockMode;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 523
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 5189
    iget v7, v7, Lo/setScrimColor;->newSession:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 523
    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 524
    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lo/setDrawerLockMode;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 525
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 5196
    iget v7, v7, Lo/setScrimColor;->ICustomTabsService:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 525
    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 529
    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 530
    iget v0, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 531
    iget v0, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 532
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 534
    :cond_1
    iget-boolean v9, p0, Lo/setDrawerLockMode;->cancelAll:Z

    if-eqz v9, :cond_3

    cmpl-float v9, v2, v0

    if-lez v9, :cond_3

    cmpl-float v9, v3, v1

    if-lez v9, :cond_3

    div-float/2addr v6, v8

    .line 539
    iget v8, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    add-float/2addr v1, v5

    .line 541
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    .line 542
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 544
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    .line 547
    iget v1, p0, Lo/setDrawerLockMode;->onNavigationEvent:I

    int-to-float v1, v1

    iget v2, p0, Lo/setDrawerLockMode;->extraCallback:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    .line 550
    iget-object v1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 6161
    iget v2, v1, Lo/setScrimColor;->onNavigationEvent:F

    iget v3, v1, Lo/setScrimColor;->asBinder:F

    iget v1, v1, Lo/setScrimColor;->newSession:F

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 551
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v9

    sub-float v2, v0, v1

    .line 554
    iput v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 555
    iput v0, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    add-float/2addr v0, v7

    .line 559
    iput v0, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v7

    .line 560
    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    .line 565
    iget-object v1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 6168
    iget v2, v1, Lo/setScrimColor;->onPostMessage:F

    iget v3, v1, Lo/setScrimColor;->asInterface:F

    iget v1, v1, Lo/setScrimColor;->ICustomTabsService:F

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 566
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v9

    sub-float v2, v0, v1

    .line 569
    iput v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    .line 570
    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    add-float/2addr v0, v7

    .line 574
    iput v0, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    .line 575
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v7

    .line 576
    iput v2, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    .line 577
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 580
    :goto_0
    invoke-virtual {p0, v4}, Lo/setDrawerLockMode;->extraCallback(Landroid/graphics/RectF;)V

    .line 582
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 7154
    iget-object v0, v0, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onPostMessage(Z)Z
    .locals 3

    .line 388
    iget-boolean v0, p0, Lo/setDrawerLockMode;->getInterfaceDescriptor:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 389
    iput-boolean p1, p0, Lo/setDrawerLockMode;->getInterfaceDescriptor:Z

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lo/setDrawerLockMode;->asBinder:Landroid/view/ScaleGestureDetector;

    if-nez p1, :cond_0

    .line 391
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lo/setDrawerLockMode$extraCallback;

    invoke-direct {v2, p0, v1}, Lo/setDrawerLockMode$extraCallback;-><init>(Lo/setDrawerLockMode;B)V

    invoke-direct {p1, v0, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lo/setDrawerLockMode;->asBinder:Landroid/view/ScaleGestureDetector;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v1, p0

    .line 873
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 874
    iget-boolean v0, v1, Lo/setDrawerLockMode;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, v1, Lo/setDrawerLockMode;->asBinder:Landroid/view/ScaleGestureDetector;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    .line 878
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_12

    const-string v6, "Exception in crop window changed"

    const-string v7, "AIC"

    if-eq v0, v5, :cond_f

    const/4 v8, 0x2

    if-eq v0, v8, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_f

    return v2

    .line 888
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 27927
    iget-object v3, v1, Lo/setDrawerLockMode;->ICustomTabsService$Stub:Lo/getViewLifecycleOwner;

    if-eqz v3, :cond_e

    .line 27928
    iget v3, v1, Lo/setDrawerLockMode;->ICustomTabsService$Stub$Proxy:F

    .line 27929
    iget-object v4, v1, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 28146
    iget-object v8, v4, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v9, v4, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 28147
    iget-object v4, v4, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 27931
    invoke-direct {v1, v4}, Lo/setDrawerLockMode;->onPostMessage(Landroid/graphics/RectF;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    const/4 v3, 0x0

    .line 27935
    :cond_2
    iget-object v8, v1, Lo/setDrawerLockMode;->ICustomTabsService$Stub:Lo/getViewLifecycleOwner;

    iget-object v15, v1, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget v14, v1, Lo/setDrawerLockMode;->requestPostMessageChannel:I

    iget v13, v1, Lo/setDrawerLockMode;->postMessage:I

    iget-boolean v10, v1, Lo/setDrawerLockMode;->cancelAll:Z

    iget v12, v1, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    .line 29119
    iget-object v11, v8, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v11

    .line 29120
    iget-object v11, v8, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v11

    .line 29122
    iget-object v11, v8, Lo/getViewLifecycleOwner;->ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    sget-object v5, Lo/getViewLifecycleOwner$onMessageChannelReady;->asInterface:Lo/getViewLifecycleOwner$onMessageChannelReady;

    if-ne v11, v5, :cond_7

    .line 29195
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v0, v5

    .line 29196
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v2, v5

    .line 29197
    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    const/high16 v10, 0x40000000    # 2.0f

    const v11, 0x3f866666    # 1.05f

    cmpg-float v5, v5, v9

    if-ltz v5, :cond_3

    iget v5, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    int-to-float v12, v14

    cmpl-float v5, v5, v12

    if-gtz v5, :cond_3

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    iget v12, v15, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v12

    if-ltz v5, :cond_3

    iget v5, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    iget v12, v15, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v12

    if-lez v5, :cond_4

    :cond_3
    div-float/2addr v0, v11

    .line 29202
    iget-object v5, v8, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v12, v5, Landroid/graphics/PointF;->x:F

    div-float v14, v0, v10

    sub-float/2addr v12, v14

    iput v12, v5, Landroid/graphics/PointF;->x:F

    .line 29204
    :cond_4
    iget v5, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v2

    cmpg-float v5, v5, v9

    if-ltz v5, :cond_5

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v2

    int-to-float v9, v13

    cmpl-float v5, v5, v9

    if-gtz v5, :cond_5

    iget v5, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v2

    iget v9, v15, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v9

    if-ltz v5, :cond_5

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v2

    iget v9, v15, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_6

    :cond_5
    div-float/2addr v2, v11

    .line 29209
    iget-object v5, v8, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->y:F

    div-float v9, v2, v10

    sub-float/2addr v8, v9

    iput v8, v5, Landroid/graphics/PointF;->y:F

    .line 29211
    :cond_6
    invoke-virtual {v4, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 29212
    invoke-static {v4, v15, v3}, Lo/getViewLifecycleOwner;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_7
    if-eqz v10, :cond_c

    .line 29271
    sget-object v5, Lo/getViewLifecycleOwner$4;->onMessageChannelReady:[I

    iget-object v9, v8, Lo/getViewLifecycleOwner;->ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v5, v5, v9

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v10, v8

    move-object v11, v4

    move v5, v12

    move v12, v2

    move v9, v13

    move-object v13, v15

    move v14, v9

    move-object v9, v15

    move v15, v3

    move/from16 v16, v5

    .line 29321
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->ICustomTabsCallback(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 29322
    invoke-static {v4, v9, v5}, Lo/getViewLifecycleOwner;->onPostMessage(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_1
    move v5, v12

    move-object v9, v15

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v10, v8

    move-object v11, v4

    move v12, v0

    move-object v13, v9

    move v15, v3

    move/from16 v16, v5

    .line 29317
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->onMessageChannelReady(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 29318
    invoke-static {v4, v9, v5}, Lo/getViewLifecycleOwner;->extraCallback(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_2
    move v5, v12

    move-object v9, v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object v13, v9

    move v14, v3

    move v15, v5

    .line 29313
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onNavigationEvent(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 29314
    invoke-static {v4, v9, v5}, Lo/getViewLifecycleOwner;->onPostMessage(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_3
    move v5, v12

    move-object v9, v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v10, v8

    move-object v11, v4

    move v12, v0

    move-object v13, v9

    move v14, v3

    move v15, v5

    .line 29309
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onPostMessage(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 29310
    invoke-static {v4, v9, v5}, Lo/getViewLifecycleOwner;->extraCallback(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_4
    move v5, v12

    move v9, v13

    move-object/from16 v19, v15

    .line 29300
    iget v10, v4, Landroid/graphics/RectF;->left:F

    iget v11, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v10, v11, v0, v2}, Lo/getViewLifecycleOwner;->onMessageChannelReady(FFFF)F

    move-result v10

    cmpg-float v10, v10, v5

    if-gez v10, :cond_8

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object/from16 v13, v19

    move v14, v9

    move v15, v3

    move/from16 v16, v5

    .line 29301
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->ICustomTabsCallback(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 29302
    invoke-static {v4, v5}, Lo/getViewLifecycleOwner;->onMessageChannelReady(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_8
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v10, v8

    move-object v11, v4

    move v12, v0

    move-object/from16 v13, v19

    move v15, v3

    move/from16 v16, v5

    .line 29304
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->onMessageChannelReady(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 29305
    invoke-static {v4, v5}, Lo/getViewLifecycleOwner;->ICustomTabsCallback(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_5
    move v5, v12

    move v9, v13

    move-object/from16 v19, v15

    .line 29291
    iget v10, v4, Landroid/graphics/RectF;->top:F

    iget v11, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v10, v11, v2}, Lo/getViewLifecycleOwner;->onMessageChannelReady(FFFF)F

    move-result v10

    cmpg-float v10, v10, v5

    if-gez v10, :cond_9

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object/from16 v13, v19

    move v14, v9

    move v15, v3

    move/from16 v16, v5

    .line 29292
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->ICustomTabsCallback(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 29293
    invoke-static {v4, v5}, Lo/getViewLifecycleOwner;->onPostMessage(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_9
    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v10, v8

    move-object v11, v4

    move v12, v0

    move-object/from16 v13, v19

    move v14, v3

    move v15, v5

    .line 29295
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onPostMessage(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 29296
    invoke-static {v4, v5}, Lo/getViewLifecycleOwner;->ICustomTabsCallback(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_6
    move v5, v12

    move-object/from16 v19, v15

    .line 29282
    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9, v2, v0, v10}, Lo/getViewLifecycleOwner;->onMessageChannelReady(FFFF)F

    move-result v9

    cmpg-float v9, v9, v5

    if-gez v9, :cond_a

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object/from16 v13, v19

    move v14, v3

    move v15, v5

    .line 29283
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onNavigationEvent(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 29284
    invoke-static {v4, v5}, Lo/getViewLifecycleOwner;->onMessageChannelReady(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_a
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v0

    move-object/from16 v13, v19

    move v15, v3

    move/from16 v16, v5

    .line 29286
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->onMessageChannelReady(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 29287
    invoke-static {v4, v5}, Lo/getViewLifecycleOwner;->extraCallback(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :pswitch_7
    move v5, v12

    move-object/from16 v19, v15

    .line 29273
    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v2, v9, v10}, Lo/getViewLifecycleOwner;->onMessageChannelReady(FFFF)F

    move-result v9

    cmpg-float v9, v9, v5

    if-gez v9, :cond_b

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object/from16 v13, v19

    move v14, v3

    move v15, v5

    .line 29274
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onNavigationEvent(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 29275
    invoke-static {v4, v5}, Lo/getViewLifecycleOwner;->onPostMessage(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_b
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v0

    move-object/from16 v13, v19

    move v14, v3

    move v15, v5

    .line 29277
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onPostMessage(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 29278
    invoke-static {v4, v5}, Lo/getViewLifecycleOwner;->extraCallback(Landroid/graphics/RectF;F)V

    goto/16 :goto_1

    :cond_c
    move v9, v13

    move-object/from16 v19, v15

    .line 30222
    sget-object v5, Lo/getViewLifecycleOwner$4;->onMessageChannelReady:[I

    iget-object v10, v8, Lo/getViewLifecycleOwner;->ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v5, v5, v10

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_8
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object/from16 v13, v19

    move v14, v9

    move v15, v3

    .line 30249
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->ICustomTabsCallback(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_1

    :pswitch_9
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v0

    move-object/from16 v13, v19

    move v15, v3

    .line 30246
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->onMessageChannelReady(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_1

    :pswitch_a
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object/from16 v13, v19

    move v14, v3

    .line 30243
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onNavigationEvent(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_1

    :pswitch_b
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v0

    move-object/from16 v13, v19

    move v14, v3

    .line 30240
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onPostMessage(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_1

    :pswitch_c
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object/from16 v13, v19

    move v5, v14

    move v14, v9

    move v15, v3

    .line 30236
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->ICustomTabsCallback(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v12, v0

    move v14, v5

    .line 30237
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->onMessageChannelReady(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_1

    :pswitch_d
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object/from16 v13, v19

    move v14, v9

    move v15, v3

    .line 30232
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->ICustomTabsCallback(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v12, v0

    move v14, v3

    .line 30233
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onPostMessage(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto :goto_1

    :pswitch_e
    move v5, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object/from16 v13, v19

    move v14, v3

    .line 30228
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onNavigationEvent(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    const/16 v16, 0x0

    const/16 v18, 0x0

    move v12, v0

    move v14, v5

    move v15, v3

    .line 30229
    invoke-virtual/range {v10 .. v18}, Lo/getViewLifecycleOwner;->onMessageChannelReady(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_1

    :pswitch_f
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v8

    move-object v11, v4

    move v12, v2

    move-object/from16 v13, v19

    move v14, v3

    .line 30224
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onNavigationEvent(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    move v12, v0

    .line 30225
    invoke-virtual/range {v10 .. v17}, Lo/getViewLifecycleOwner;->onPostMessage(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 27945
    :goto_1
    iget-object v0, v1, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 31154
    iget-object v0, v0, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 32046
    :try_start_0
    iget-object v0, v1, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub$Proxy:Lo/setDrawerLockMode$onPostMessage;

    if-eqz v0, :cond_d

    .line 32047
    iget-object v0, v1, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub$Proxy:Lo/setDrawerLockMode$onPostMessage;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lo/setDrawerLockMode$onPostMessage;->onMessageChannelReady(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 32050
    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27947
    :cond_d
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 889
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 884
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 26914
    iget-object v0, v1, Lo/setDrawerLockMode;->ICustomTabsService$Stub:Lo/getViewLifecycleOwner;

    if-eqz v0, :cond_11

    .line 26915
    iput-object v4, v1, Lo/setDrawerLockMode;->ICustomTabsService$Stub:Lo/getViewLifecycleOwner;

    .line 27046
    :try_start_1
    iget-object v0, v1, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub$Proxy:Lo/setDrawerLockMode$onPostMessage;

    if-eqz v0, :cond_10

    .line 27047
    iget-object v0, v1, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub$Proxy:Lo/setDrawerLockMode$onPostMessage;

    invoke-interface {v0, v2}, Lo/setDrawerLockMode$onPostMessage;->onMessageChannelReady(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 27050
    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26917
    :cond_10
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_11
    const/4 v2, 0x1

    return v2

    .line 880
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 15904
    iget-object v5, v1, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    iget v6, v1, Lo/setDrawerLockMode;->validateRelationship:F

    iget-object v7, v1, Lo/setDrawerLockMode;->onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

    .line 16264
    sget-object v8, Lo/setDrawerTitle$onMessageChannelReady;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    if-ne v7, v8, :cond_1b

    .line 16343
    iget-object v2, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v2, v6

    .line 16344
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v2

    .line 16345
    iget-object v8, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float v2, v2, v9

    add-float/2addr v8, v2

    .line 16347
    iget-object v2, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v6

    .line 16348
    iget-object v6, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v2

    .line 16349
    iget-object v10, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    mul-float v2, v2, v9

    add-float/2addr v10, v2

    cmpg-float v2, v0, v7

    if-gez v2, :cond_15

    cmpg-float v2, v3, v6

    if-gez v2, :cond_13

    .line 16354
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->extraCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    :cond_13
    cmpg-float v2, v3, v10

    if-gez v2, :cond_14

    .line 16356
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->onNavigationEvent:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 16358
    :cond_14
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->onPostMessage:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    :cond_15
    cmpg-float v2, v0, v8

    if-gez v2, :cond_18

    cmpg-float v2, v3, v6

    if-gez v2, :cond_16

    .line 16362
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->onRelationshipValidationResult:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    :cond_16
    cmpg-float v2, v3, v10

    if-gez v2, :cond_17

    .line 16364
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->asInterface:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 16366
    :cond_17
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->onTransact:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    :cond_18
    cmpg-float v2, v3, v6

    if-gez v2, :cond_19

    .line 16370
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    :cond_19
    cmpg-float v2, v3, v10

    if-gez v2, :cond_1a

    .line 16372
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->asBinder:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 16374
    :cond_1a
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->onMessageChannelReady:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 17285
    :cond_1b
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float v7, v0, v7

    .line 18091
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_1c

    sub-float v7, v3, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_1c

    const/4 v7, 0x1

    goto :goto_4

    :cond_1c
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_1d

    .line 17286
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->extraCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 17287
    :cond_1d
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float v7, v0, v7

    .line 19091
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_1e

    sub-float v7, v3, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_1e

    const/4 v7, 0x1

    goto :goto_5

    :cond_1e
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_1f

    .line 17289
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 17290
    :cond_1f
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v7

    .line 20091
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_20

    sub-float v7, v3, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_20

    const/4 v7, 0x1

    goto :goto_6

    :cond_20
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_21

    .line 17292
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->onPostMessage:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 17293
    :cond_21
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v7

    .line 21091
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_22

    sub-float v7, v3, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_22

    const/4 v7, 0x1

    goto :goto_7

    :cond_22
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_23

    .line 17295
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->onMessageChannelReady:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 17296
    :cond_23
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v9, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_24

    cmpg-float v7, v0, v9

    if-gez v7, :cond_24

    cmpl-float v7, v3, v8

    if-lez v7, :cond_24

    cmpg-float v7, v3, v10

    if-gez v7, :cond_24

    const/4 v7, 0x1

    goto :goto_8

    :cond_24
    const/4 v7, 0x0

    :goto_8
    const/high16 v8, 0x42c80000    # 100.0f

    if-eqz v7, :cond_26

    .line 22250
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_25

    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_25

    const/4 v7, 0x1

    goto :goto_9

    :cond_25
    const/4 v7, 0x0

    :goto_9
    const/4 v9, 0x1

    xor-int/2addr v7, v9

    if-eqz v7, :cond_26

    .line 17299
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->asInterface:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 17300
    :cond_26
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v9, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_27

    cmpg-float v7, v0, v9

    if-gez v7, :cond_27

    sub-float v7, v3, v10

    .line 23107
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_27

    const/4 v7, 0x1

    goto :goto_a

    :cond_27
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_28

    .line 17302
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->onRelationshipValidationResult:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 17303
    :cond_28
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v9, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_29

    cmpg-float v7, v0, v9

    if-gez v7, :cond_29

    sub-float v7, v3, v10

    .line 24107
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_29

    const/4 v7, 0x1

    goto :goto_b

    :cond_29
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_2a

    .line 17305
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->onTransact:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 17306
    :cond_2a
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v9, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v7

    .line 24123
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_2b

    cmpl-float v7, v3, v9

    if-lez v7, :cond_2b

    cmpg-float v7, v3, v10

    if-gez v7, :cond_2b

    const/4 v7, 0x1

    goto :goto_c

    :cond_2b
    const/4 v7, 0x0

    :goto_c
    if-eqz v7, :cond_2c

    .line 17308
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->onNavigationEvent:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto/16 :goto_f

    .line 17309
    :cond_2c
    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v9, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v7

    .line 25123
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_2d

    cmpl-float v6, v3, v9

    if-lez v6, :cond_2d

    cmpg-float v6, v3, v10

    if-gez v6, :cond_2d

    const/4 v6, 0x1

    goto :goto_d

    :cond_2d
    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_2e

    .line 17311
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->asBinder:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto :goto_f

    .line 17312
    :cond_2e
    iget-object v6, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v9, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2f

    cmpg-float v6, v0, v9

    if-gez v6, :cond_2f

    cmpl-float v6, v3, v7

    if-lez v6, :cond_2f

    cmpg-float v6, v3, v10

    if-gez v6, :cond_2f

    const/4 v6, 0x1

    goto :goto_e

    :cond_2f
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_31

    .line 26250
    iget-object v6, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_30

    iget-object v6, v5, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_30

    const/4 v2, 0x1

    :cond_30
    const/4 v6, 0x1

    xor-int/2addr v2, v6

    if-nez v2, :cond_31

    .line 17315
    sget-object v2, Lo/getViewLifecycleOwner$onMessageChannelReady;->asInterface:Lo/getViewLifecycleOwner$onMessageChannelReady;

    goto :goto_f

    :cond_31
    move-object v2, v4

    :goto_f
    if-eqz v2, :cond_32

    .line 16268
    new-instance v4, Lo/getViewLifecycleOwner;

    invoke-direct {v4, v2, v5, v0, v3}, Lo/getViewLifecycleOwner;-><init>(Lo/getViewLifecycleOwner$onMessageChannelReady;Lo/setScrimColor;FF)V

    .line 15904
    :cond_32
    iput-object v4, v1, Lo/setDrawerLockMode;->ICustomTabsService$Stub:Lo/getViewLifecycleOwner;

    if-eqz v4, :cond_33

    .line 15906
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_33
    const/4 v2, 0x1

    :cond_34
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public setAspectRatioX(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 337
    iget v0, p0, Lo/setDrawerLockMode;->onNavigationEvent:I

    if-eq v0, p1, :cond_0

    .line 338
    iput p1, p0, Lo/setDrawerLockMode;->onNavigationEvent:I

    int-to-float p1, p1

    .line 339
    iget v0, p0, Lo/setDrawerLockMode;->extraCallback:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    .line 341
    iget-boolean p1, p0, Lo/setDrawerLockMode;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p0}, Lo/setDrawerLockMode;->onPostMessage()V

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    .line 335
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAspectRatioY(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 364
    iget v0, p0, Lo/setDrawerLockMode;->extraCallback:I

    if-eq v0, p1, :cond_0

    .line 365
    iput p1, p0, Lo/setDrawerLockMode;->extraCallback:I

    .line 366
    iget v0, p0, Lo/setDrawerLockMode;->onNavigationEvent:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub$Proxy:F

    .line 368
    iget-boolean p1, p0, Lo/setDrawerLockMode;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p0}, Lo/setDrawerLockMode;->onPostMessage()V

    .line 370
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    .line 362
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBounds([FII)V
    .locals 4

    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 225
    iget-object p1, p0, Lo/setDrawerLockMode;->asInterface:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lo/setDrawerLockMode;->asInterface:[F

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    :goto_0
    iput p2, p0, Lo/setDrawerLockMode;->requestPostMessageChannel:I

    .line 230
    iput p3, p0, Lo/setDrawerLockMode;->postMessage:I

    .line 231
    iget-object p1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 2146
    iget-object p2, p1, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object p3, p1, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2147
    iget-object p1, p1, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 232
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 233
    :cond_2
    invoke-virtual {p0}, Lo/setDrawerLockMode;->onPostMessage()V

    :cond_3
    return-void
.end method

.method public setCropShape(Lo/setDrawerTitle$onMessageChannelReady;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lo/setDrawerLockMode;->onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

    if-eq v0, p1, :cond_3

    .line 261
    iput-object p1, p0, Lo/setDrawerLockMode;->onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

    .line 262
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-gt p1, v0, :cond_2

    .line 263
    iget-object p1, p0, Lo/setDrawerLockMode;->onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

    sget-object v0, Lo/setDrawerTitle$onMessageChannelReady;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lo/setDrawerLockMode;->getLayerType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/setDrawerLockMode;->cancel:Ljava/lang/Integer;

    .line 265
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 267
    invoke-virtual {p0, v0, v1}, Lo/setDrawerLockMode;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 269
    :cond_0
    iput-object v1, p0, Lo/setDrawerLockMode;->cancel:Ljava/lang/Integer;

    goto :goto_0

    .line 271
    :cond_1
    iget-object p1, p0, Lo/setDrawerLockMode;->cancel:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 273
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lo/setDrawerLockMode;->setLayerType(ILandroid/graphics/Paint;)V

    .line 274
    iput-object v1, p0, Lo/setDrawerLockMode;->cancel:Ljava/lang/Integer;

    .line 277
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setCropWindowChangeListener(Lo/setDrawerLockMode$onPostMessage;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub$Proxy:Lo/setDrawerLockMode$onPostMessage;

    return-void
.end method

.method public setCropWindowLimits(FFFF)V
    .locals 1

    .line 420
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 2225
    iput p1, v0, Lo/setScrimColor;->extraCallback:F

    .line 2226
    iput p2, v0, Lo/setScrimColor;->onRelationshipValidationResult:F

    .line 2227
    iput p3, v0, Lo/setScrimColor;->newSession:F

    .line 2228
    iput p4, v0, Lo/setScrimColor;->ICustomTabsService:F

    return-void
.end method

.method public setCropWindowRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 1154
    iget-object v0, v0, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lo/setDrawerLockMode;->cancelAll:Z

    if-eq v0, p1, :cond_0

    .line 315
    iput-boolean p1, p0, Lo/setDrawerLockMode;->cancelAll:Z

    .line 316
    iget-boolean p1, p0, Lo/setDrawerLockMode;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p0}, Lo/setDrawerLockMode;->onPostMessage()V

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGuidelines(Lo/setDrawerTitle$extraCallback;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lo/setDrawerLockMode;->notify:Lo/setDrawerTitle$extraCallback;

    if-eq v0, p1, :cond_0

    .line 294
    iput-object p1, p0, Lo/setDrawerLockMode;->notify:Lo/setDrawerTitle$extraCallback;

    .line 295
    iget-boolean p1, p0, Lo/setDrawerLockMode;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInitialAttributeValues(Lo/setDrawerElevation;)V
    .locals 2

    .line 462
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 3235
    iget v1, p1, Lo/setDrawerElevation;->validateRelationship:I

    int-to-float v1, v1

    iput v1, v0, Lo/setScrimColor;->onNavigationEvent:F

    .line 3236
    iget v1, p1, Lo/setDrawerElevation;->ICustomTabsService$Stub$Proxy:I

    int-to-float v1, v1

    iput v1, v0, Lo/setScrimColor;->onPostMessage:F

    .line 3237
    iget v1, p1, Lo/setDrawerElevation;->IPostMessageService$Stub$Proxy:I

    int-to-float v1, v1

    iput v1, v0, Lo/setScrimColor;->asBinder:F

    .line 3238
    iget v1, p1, Lo/setDrawerElevation;->INotificationSideChannel:I

    int-to-float v1, v1

    iput v1, v0, Lo/setScrimColor;->asInterface:F

    .line 3239
    iget v1, p1, Lo/setDrawerElevation;->cancelAll:I

    int-to-float v1, v1

    iput v1, v0, Lo/setScrimColor;->ICustomTabsCallback$Stub:F

    .line 3240
    iget v1, p1, Lo/setDrawerElevation;->notify:I

    int-to-float v1, v1

    iput v1, v0, Lo/setScrimColor;->onTransact:F

    .line 464
    iget-object v0, p1, Lo/setDrawerElevation;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/setDrawerLockMode;->setCropShape(Lo/setDrawerTitle$onMessageChannelReady;)V

    .line 466
    iget v0, p1, Lo/setDrawerElevation;->onPostMessage:F

    invoke-virtual {p0, v0}, Lo/setDrawerLockMode;->setSnapRadius(F)V

    .line 468
    iget-object v0, p1, Lo/setDrawerElevation;->onNavigationEvent:Lo/setDrawerTitle$extraCallback;

    invoke-virtual {p0, v0}, Lo/setDrawerLockMode;->setGuidelines(Lo/setDrawerTitle$extraCallback;)V

    .line 470
    iget-boolean v0, p1, Lo/setDrawerElevation;->newSession:Z

    invoke-virtual {p0, v0}, Lo/setDrawerLockMode;->setFixedAspectRatio(Z)V

    const/4 v0, 0x1

    .line 472
    invoke-virtual {p0, v0}, Lo/setDrawerLockMode;->setAspectRatioX(I)V

    .line 474
    invoke-virtual {p0, v0}, Lo/setDrawerLockMode;->setAspectRatioY(I)V

    .line 476
    iget-boolean v0, p1, Lo/setDrawerElevation;->onRelationshipValidationResult:Z

    invoke-virtual {p0, v0}, Lo/setDrawerLockMode;->onPostMessage(Z)Z

    .line 478
    iget v0, p1, Lo/setDrawerElevation;->onMessageChannelReady:F

    iput v0, p0, Lo/setDrawerLockMode;->validateRelationship:F

    .line 480
    iget v0, p1, Lo/setDrawerElevation;->warmup:F

    iput v0, p0, Lo/setDrawerLockMode;->IPostMessageService:F

    .line 482
    iget v0, p1, Lo/setDrawerElevation;->ICustomTabsCallback$Stub$Proxy:F

    iget v1, p1, Lo/setDrawerElevation;->postMessage:I

    invoke-static {v0, v1}, Lo/setDrawerLockMode;->onPostMessage(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lo/setDrawerLockMode;->warmup:Landroid/graphics/Paint;

    .line 484
    iget v0, p1, Lo/setDrawerElevation;->extraCommand:F

    iput v0, p0, Lo/setDrawerLockMode;->extraCommand:F

    .line 485
    iget v0, p1, Lo/setDrawerElevation;->updateVisuals:F

    iput v0, p0, Lo/setDrawerLockMode;->IPostMessageService$Stub:F

    .line 486
    iget v0, p1, Lo/setDrawerElevation;->requestPostMessageChannel:F

    iget v1, p1, Lo/setDrawerElevation;->mayLaunchUrl:I

    .line 487
    invoke-static {v0, v1}, Lo/setDrawerLockMode;->onPostMessage(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lo/setDrawerLockMode;->newSession:Landroid/graphics/Paint;

    .line 489
    iget v0, p1, Lo/setDrawerElevation;->IPostMessageService$Stub:F

    iget v1, p1, Lo/setDrawerElevation;->ICustomTabsService$Stub:I

    invoke-static {v0, v1}, Lo/setDrawerLockMode;->onPostMessage(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsService:Landroid/graphics/Paint;

    .line 491
    iget p1, p1, Lo/setDrawerElevation;->IPostMessageService:I

    .line 4163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4164
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    iput-object v0, p0, Lo/setDrawerLockMode;->mayLaunchUrl:Landroid/graphics/Paint;

    return-void
.end method

.method public setInitialCropWindowRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 435
    iget-object v0, p0, Lo/setDrawerLockMode;->onMessageChannelReady:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lo/ViewDataBinding$OnStartListener;->extraCallback:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 436
    iget-boolean p1, p0, Lo/setDrawerLockMode;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_2

    .line 437
    invoke-virtual {p0}, Lo/setDrawerLockMode;->onPostMessage()V

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 3046
    :try_start_0
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub$Proxy:Lo/setDrawerLockMode$onPostMessage;

    if-eqz v0, :cond_1

    .line 3047
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback$Stub$Proxy:Lo/setDrawerLockMode$onPostMessage;

    invoke-interface {v0, p1}, Lo/setDrawerLockMode$onPostMessage;->onMessageChannelReady(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "AIC"

    const-string v1, "Exception in crop window changed"

    .line 3050
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 1

    .line 411
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    int-to-float p1, p1

    .line 2213
    iput p1, v0, Lo/setScrimColor;->ICustomTabsCallback$Stub:F

    int-to-float p1, p2

    .line 2214
    iput p1, v0, Lo/setScrimColor;->onTransact:F

    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1

    .line 403
    iget-object v0, p0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    int-to-float p1, p1

    .line 2204
    iput p1, v0, Lo/setScrimColor;->asBinder:F

    int-to-float p1, p2

    .line 2205
    iput p1, v0, Lo/setScrimColor;->asInterface:F

    return-void
.end method

.method public setSnapRadius(F)V
    .locals 0

    .line 381
    iput p1, p0, Lo/setDrawerLockMode;->ICustomTabsService$Stub$Proxy:F

    return-void
.end method
