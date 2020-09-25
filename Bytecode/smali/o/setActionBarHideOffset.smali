.class public final Lo/setActionBarHideOffset;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static final onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static final onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "refId"

    const-string/jumbo v3, "ty"

    const-string v4, "parent"

    const-string/jumbo v5, "sw"

    const-string/jumbo v6, "sh"

    const-string/jumbo v7, "sc"

    const-string v8, "ks"

    const-string/jumbo v9, "tt"

    const-string v10, "masksProperties"

    const-string/jumbo v11, "shapes"

    const-string/jumbo v12, "t"

    const-string v13, "ef"

    const-string/jumbo v14, "sr"

    const-string/jumbo v15, "st"

    const-string/jumbo v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string/jumbo v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    .line 27
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/setActionBarHideOffset;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v0, "d"

    const-string v1, "a"

    .line 63
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/setActionBarHideOffset;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v0, "nm"

    .line 68
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/setActionBarHideOffset;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method public static extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/setActionBarVisibilityCallback;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 90
    sget-object v1, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->onNavigationEvent:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    .line 96
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 253
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 246
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v5, "UNSET"

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    move-object/from16 v31, v1

    move-object/from16 v17, v4

    move-object/from16 v20, v17

    move-object/from16 v21, v20

    move-object/from16 v29, v21

    move-object/from16 v30, v29

    move-object/from16 v32, v30

    move-wide/from16 v18, v15

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v33, 0x0

    move-wide v15, v13

    move-object/from16 v14, v32

    move-object v13, v5

    .line 100
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 101
    sget-object v4, Lo/setActionBarHideOffset;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v4}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    .line 231
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 228
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v33

    goto :goto_0

    .line 225
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 5032
    :pswitch_2
    new-instance v4, Lo/setTransitioning;

    .line 5033
    sget-object v5, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 5087
    invoke-static {v0, v7, v2, v5}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v5

    .line 5033
    invoke-direct {v4, v5}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    move-object/from16 v32, v4

    goto :goto_0

    .line 219
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_0

    .line 216
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v4

    double-to-float v1, v4

    goto :goto_0

    .line 213
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    move/from16 v28, v4

    goto :goto_0

    .line 210
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    move/from16 v27, v4

    goto :goto_0

    .line 207
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v26, v4

    goto :goto_0

    .line 204
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v25, v4

    goto :goto_0

    .line 181
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 182
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    .line 185
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    sget-object v5, Lo/setActionBarHideOffset;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v5}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_2

    .line 188
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 196
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    .line 199
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4089
    invoke-static {v4}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 4090
    iget-object v5, v7, Lo/createCheckBox;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 157
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    .line 158
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 159
    sget-object v4, Lo/setActionBarHideOffset;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v4}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v5, :cond_3

    .line 174
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_3

    .line 164
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    invoke-static/range {p0 .. p1}, Lo/checkLayoutParams;->extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/isCurrent$onMessageChannelReady;

    move-result-object v4

    move-object/from16 v30, v4

    .line 168
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 169
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_4

    .line 171
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    goto :goto_3

    .line 4060
    :cond_6
    new-instance v4, Lo/getMeasuredHeightWithMargins;

    sget-object v6, Lo/onNestedScrollAccepted;->onNavigationEvent:Lo/onNestedScrollAccepted;

    .line 4079
    invoke-static {v0, v7, v2, v6}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v6

    .line 4060
    invoke-direct {v4, v6}, Lo/getMeasuredHeightWithMargins;-><init>(Ljava/util/List;)V

    move-object/from16 v29, v4

    goto :goto_3

    .line 178
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    goto/16 :goto_0

    .line 147
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 148
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 149
    invoke-static/range {p0 .. p1}, Lo/onNestedPreScroll;->onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/initTitle;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 151
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 154
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    goto/16 :goto_0

    .line 139
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 140
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 141
    invoke-static/range {p0 .. p1}, Lo/isHideOnContentScrollEnabled;->onMessageChannelReady(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/generateDefaultLayoutParams;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 143
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 3100
    iget v5, v7, Lo/createCheckBox;->ICustomTabsCallback$Stub$Proxy:I

    add-int/2addr v5, v4

    iput v5, v7, Lo/createCheckBox;->ICustomTabsCallback$Stub$Proxy:I

    .line 144
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    goto/16 :goto_0

    .line 135
    :pswitch_d
    invoke-static {}, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->values()[Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v6

    aget-object v31, v4, v6

    .line 2100
    iget v4, v7, Lo/createCheckBox;->ICustomTabsCallback$Stub$Proxy:I

    add-int/2addr v4, v5

    iput v4, v7, Lo/createCheckBox;->ICustomTabsCallback$Stub$Proxy:I

    goto/16 :goto_0

    .line 132
    :pswitch_e
    invoke-static/range {p0 .. p1}, Lo/onApplyWindowInsets;->extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onMeasure;

    move-result-object v21

    goto/16 :goto_0

    .line 129
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    goto/16 :goto_0

    .line 126
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    move/from16 v23, v4

    goto/16 :goto_0

    .line 123
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    move/from16 v22, v4

    goto/16 :goto_0

    .line 120
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v4

    int-to-long v4, v4

    move-wide/from16 v18, v4

    goto/16 :goto_0

    .line 112
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v4

    .line 113
    sget-object v5, Lo/setActionBarVisibilityCallback$onPostMessage;->onRelationshipValidationResult:Lo/setActionBarVisibilityCallback$onPostMessage;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 114
    invoke-static {}, Lo/setActionBarVisibilityCallback$onPostMessage;->values()[Lo/setActionBarVisibilityCallback$onPostMessage;

    move-result-object v5

    aget-object v17, v5, v4

    goto/16 :goto_0

    .line 116
    :cond_b
    sget-object v17, Lo/setActionBarVisibilityCallback$onPostMessage;->onRelationshipValidationResult:Lo/setActionBarVisibilityCallback$onPostMessage;

    goto/16 :goto_0

    .line 109
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 106
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v4

    int-to-long v4, v4

    move-wide v15, v4

    goto/16 :goto_0

    .line 103
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 235
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    div-float v34, v1, v25

    div-float v35, v3, v25

    .line 243
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v0, v34, v11

    if-lez v0, :cond_d

    .line 246
    new-instance v5, Lo/ActionMenuView;

    const/4 v4, 0x0

    const/16 v36, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v37

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v12

    move-object v11, v5

    move/from16 v5, v36

    move-object/from16 v36, v10

    move-object v10, v6

    move-object/from16 v6, v37

    invoke-direct/range {v0 .. v6}, Lo/ActionMenuView;-><init>(Lo/createCheckBox;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 247
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    move-object/from16 v36, v10

    move-object v10, v6

    :goto_7
    const/4 v0, 0x0

    cmpl-float v0, v35, v0

    if-lez v0, :cond_e

    goto :goto_8

    .line 5151
    :cond_e
    iget v0, v7, Lo/createCheckBox;->getInterfaceDescriptor:F

    move/from16 v35, v0

    .line 252
    :goto_8
    new-instance v11, Lo/ActionMenuView;

    const/4 v4, 0x0

    .line 253
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v9

    move/from16 v5, v34

    invoke-direct/range {v0 .. v6}, Lo/ActionMenuView;-><init>(Lo/createCheckBox;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 254
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v9, Lo/ActionMenuView;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 257
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object v2, v12

    move-object v3, v12

    move/from16 v5, v35

    invoke-direct/range {v0 .. v6}, Lo/ActionMenuView;-><init>(Lo/createCheckBox;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 258
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    .line 260
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "ai"

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 6089
    invoke-static {v0}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 6090
    iget-object v1, v7, Lo/createCheckBox;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_10
    new-instance v34, Lo/setActionBarVisibilityCallback;

    move-object/from16 v0, v34

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide v4, v15

    move-object/from16 v6, v17

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    move-object/from16 v35, v10

    move-object/from16 v10, v36

    move-object/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v16, v26

    move/from16 v17, v27

    move/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move-object/from16 v21, v35

    move-object/from16 v22, v31

    move-object/from16 v23, v32

    move/from16 v24, v33

    invoke-direct/range {v0 .. v24}, Lo/setActionBarVisibilityCallback;-><init>(Ljava/util/List;Lo/createCheckBox;Ljava/lang/String;JLo/setActionBarVisibilityCallback$onPostMessage;JLjava/lang/String;Ljava/util/List;Lo/onMeasure;IIIFFIILo/getMeasuredHeightWithMargins;Lo/isCurrent$onMessageChannelReady;Ljava/util/List;Lo/setActionBarVisibilityCallback$onMessageChannelReady;Lo/setTransitioning;Z)V

    return-object v34

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onNavigationEvent(Lo/createCheckBox;)Lo/setActionBarVisibilityCallback;
    .locals 26

    move-object/from16 v2, p0

    move-object/from16 v0, p0

    .line 1137
    iget-object v3, v0, Lo/createCheckBox;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 55
    new-instance v25, Lo/setActionBarVisibilityCallback;

    move-object/from16 v0, v25

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v6, Lo/setActionBarVisibilityCallback$onPostMessage;->onPostMessage:Lo/setActionBarVisibilityCallback$onPostMessage;

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v4, Lo/onMeasure;

    move-object v11, v4

    invoke-direct {v4}, Lo/onMeasure;-><init>()V

    .line 59
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lo/setActionBarVisibilityCallback$onMessageChannelReady;->onNavigationEvent:Lo/setActionBarVisibilityCallback$onMessageChannelReady;

    const-string v3, "__container"

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lo/setActionBarVisibilityCallback;-><init>(Ljava/util/List;Lo/createCheckBox;Ljava/lang/String;JLo/setActionBarVisibilityCallback$onPostMessage;JLjava/lang/String;Ljava/util/List;Lo/onMeasure;IIIFFIILo/getMeasuredHeightWithMargins;Lo/isCurrent$onMessageChannelReady;Ljava/util/List;Lo/setActionBarVisibilityCallback$onMessageChannelReady;Lo/setTransitioning;Z)V

    return-object v25
.end method
