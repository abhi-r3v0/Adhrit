.class public final Lo/onApplyWindowInsets;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "a"

    const-string v1, "p"

    const-string/jumbo v2, "s"

    const-string/jumbo v3, "rz"

    const-string v4, "r"

    const-string v5, "o"

    const-string/jumbo v6, "so"

    const-string v7, "eo"

    const-string/jumbo v8, "sk"

    const-string/jumbo v9, "sa"

    .line 24
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/onApplyWindowInsets;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v0, "k"

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/onApplyWindowInsets;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method public static extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onMeasure;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 50
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/restoreToolbarHierarchyState$onPostMessage;->extraCallback:Lo/restoreToolbarHierarchyState$onPostMessage;

    const/4 v10, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_1

    .line 52
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    :cond_1
    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 54
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 55
    sget-object v2, Lo/onApplyWindowInsets;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v2}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 113
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_1

    .line 8032
    :pswitch_0
    new-instance v2, Lo/setTransitioning;

    .line 8033
    sget-object v4, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 8087
    invoke-static {v0, v8, v3, v4}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v3

    .line 8033
    invoke-direct {v2, v3}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    move-object/from16 v17, v2

    goto :goto_1

    .line 7032
    :pswitch_1
    new-instance v2, Lo/setTransitioning;

    .line 7033
    sget-object v4, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 7087
    invoke-static {v0, v8, v3, v4}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v3

    .line 7033
    invoke-direct {v2, v3}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    move-object/from16 v16, v2

    goto :goto_1

    .line 6032
    :pswitch_2
    new-instance v2, Lo/setTransitioning;

    .line 6033
    sget-object v4, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 6087
    invoke-static {v0, v8, v3, v4}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v3

    .line 6033
    invoke-direct {v2, v3}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    move-object/from16 v25, v2

    goto :goto_1

    .line 5032
    :pswitch_3
    new-instance v2, Lo/setTransitioning;

    .line 5033
    sget-object v4, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 5087
    invoke-static {v0, v8, v3, v4}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v3

    .line 5033
    invoke-direct {v2, v3}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    move-object/from16 v24, v2

    goto :goto_1

    .line 4038
    :pswitch_4
    new-instance v2, Lo/getTabContainer;

    sget-object v4, Lo/onNestedPreFling;->extraCallback:Lo/onNestedPreFling;

    .line 4079
    invoke-static {v0, v8, v3, v4}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v3

    .line 4038
    invoke-direct {v2, v3}, Lo/getTabContainer;-><init>(Ljava/util/List;)V

    move-object/from16 v23, v2

    goto :goto_1

    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    .line 1089
    invoke-static {v1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 1090
    iget-object v2, v8, Lo/createCheckBox;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2032
    :pswitch_6
    new-instance v7, Lo/setTransitioning;

    .line 2033
    sget-object v1, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 2087
    invoke-static {v0, v8, v3, v1}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v1

    .line 2033
    invoke-direct {v7, v1}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    .line 91
    invoke-virtual {v7}, Lo/setCustomView;->extraCallback()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v7}, Lo/setCustomView;->extraCallback()Ljava/util/List;

    move-result-object v6

    new-instance v5, Lo/ActionMenuView;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 2151
    iget v1, v8, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 92
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v9, v5

    move-object/from16 v5, v18

    move-object v12, v6

    move/from16 v6, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lo/ActionMenuView;-><init>(Lo/createCheckBox;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v19, v7

    .line 93
    invoke-virtual/range {v19 .. v19}, Lo/setCustomView;->extraCallback()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ActionMenuView;

    iget-object v1, v1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 94
    invoke-virtual/range {v19 .. v19}, Lo/setCustomView;->extraCallback()Ljava/util/List;

    move-result-object v9

    new-instance v12, Lo/ActionMenuView;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3151
    iget v1, v8, Lo/createCheckBox;->getInterfaceDescriptor:F

    .line 94
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lo/ActionMenuView;-><init>(Lo/createCheckBox;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v9, v10, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    move-object/from16 v1, v19

    goto/16 :goto_1

    .line 1049
    :pswitch_7
    new-instance v15, Lo/setTabContainer;

    sget-object v2, Lo/setWindowCallback;->ICustomTabsCallback:Lo/setWindowCallback;

    .line 1079
    invoke-static {v0, v8, v3, v2}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v2

    .line 1049
    invoke-direct {v15, v2}, Lo/setTabContainer;-><init>(Ljava/util/List;)V

    goto/16 :goto_1

    .line 72
    :pswitch_8
    invoke-static/range {p0 .. p1}, Lo/fitSystemWindows;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onLayout;

    move-result-object v14

    goto/16 :goto_1

    .line 57
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    .line 58
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 59
    sget-object v2, Lo/onApplyWindowInsets;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v2}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_3

    .line 61
    :cond_4
    invoke-static/range {p0 .. p1}, Lo/fitSystemWindows;->onMessageChannelReady(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/isCollapsed;

    move-result-object v13

    goto :goto_3

    .line 68
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    goto/16 :goto_1

    :cond_6
    if-eqz v11, :cond_7

    .line 118
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    :cond_7
    if-eqz v13, :cond_9

    .line 8143
    invoke-virtual {v13}, Lo/isCollapsed;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v13}, Lo/isCollapsed;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    iget-object v0, v0, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_a

    const/16 v19, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 v19, v13

    :goto_6
    if-eqz v14, :cond_c

    .line 8147
    instance-of v0, v14, Lo/ActionBarContextView;

    if-nez v0, :cond_b

    .line 8149
    invoke-interface {v14}, Lo/onLayout;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v14}, Lo/onLayout;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    iget-object v0, v0, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_d

    const/16 v20, 0x0

    goto :goto_9

    :cond_d
    move-object/from16 v20, v14

    :goto_9
    if-eqz v1, :cond_f

    .line 8153
    invoke-virtual {v1}, Lo/setCustomView;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lo/setCustomView;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    iget-object v0, v0, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_e

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_10

    const/16 v22, 0x0

    goto :goto_c

    :cond_10
    move-object/from16 v22, v1

    :goto_c
    if-eqz v15, :cond_13

    .line 8157
    invoke-virtual {v15}, Lo/setCustomView;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v15}, Lo/setCustomView;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    iget-object v0, v0, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Lo/getIconUri$onMessageChannelReady;

    .line 9030
    iget v1, v0, Lo/getIconUri$onMessageChannelReady;->ICustomTabsCallback:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_11

    iget v0, v0, Lo/getIconUri$onMessageChannelReady;->extraCallback:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_d

    :cond_11
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_12

    goto :goto_e

    :cond_12
    const/4 v0, 0x0

    goto :goto_f

    :cond_13
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_14

    const/4 v15, 0x0

    :cond_14
    if-eqz v16, :cond_16

    .line 9161
    invoke-virtual/range {v16 .. v16}, Lo/setCustomView;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual/range {v16 .. v16}, Lo/setCustomView;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    iget-object v0, v0, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_15

    goto :goto_10

    :cond_15
    const/4 v0, 0x0

    goto :goto_11

    :cond_16
    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_17

    const/16 v26, 0x0

    goto :goto_12

    :cond_17
    move-object/from16 v26, v16

    :goto_12
    if-eqz v17, :cond_19

    .line 9165
    invoke-virtual/range {v17 .. v17}, Lo/setCustomView;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual/range {v17 .. v17}, Lo/setCustomView;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    iget-object v0, v0, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_18

    goto :goto_13

    :cond_18
    const/4 v9, 0x0

    goto :goto_14

    :cond_19
    :goto_13
    const/4 v9, 0x1

    :goto_14
    if-eqz v9, :cond_1a

    const/16 v27, 0x0

    goto :goto_15

    :cond_1a
    move-object/from16 v27, v17

    .line 139
    :goto_15
    new-instance v0, Lo/onMeasure;

    move-object/from16 v18, v0

    move-object/from16 v21, v15

    invoke-direct/range {v18 .. v27}, Lo/onMeasure;-><init>(Lo/isCollapsed;Lo/onLayout;Lo/setTabContainer;Lo/setTransitioning;Lo/getTabContainer;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
