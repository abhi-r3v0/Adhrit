.class final Lo/getNestedScrollAxes;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static final onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "nm"

    const-string v1, "g"

    const-string v2, "o"

    const-string/jumbo v3, "t"

    const-string/jumbo v4, "s"

    const-string v5, "e"

    const-string/jumbo v6, "w"

    const-string v7, "lc"

    const-string v8, "lj"

    const-string v9, "ml"

    const-string v10, "hd"

    const-string v11, "d"

    .line 23
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/getNestedScrollAxes;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v0, "p"

    const-string v1, "k"

    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/getNestedScrollAxes;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v0, "n"

    const-string/jumbo v1, "v"

    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/getNestedScrollAxes;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/killMode;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 62
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 64
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 65
    sget-object v3, Lo/getNestedScrollAxes;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v3}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move/from16 v19, v15

    .line 149
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 116
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 119
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v3, 0x0

    const/16 v19, 0x0

    .line 120
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 121
    sget-object v2, Lo/getNestedScrollAxes;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v2}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v18, v14

    const/4 v14, 0x1

    if-eq v2, v14, :cond_0

    .line 129
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_3

    .line 6032
    :cond_0
    new-instance v3, Lo/setTransitioning;

    .line 6033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v2

    sget-object v14, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 6087
    invoke-static {v0, v1, v2, v14}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v2

    .line 6033
    invoke-direct {v3, v2}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    :goto_3
    move-object/from16 v14, v18

    goto :goto_2

    :cond_1
    move-object/from16 v18, v14

    .line 123
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    :cond_2
    move-object/from16 v18, v14

    .line 133
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    const-string v2, "o"

    move-object/from16 v14, v19

    .line 135
    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v14, v3

    goto :goto_1

    :cond_3
    const-string v2, "d"

    .line 137
    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "g"

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v2, 0x1

    .line 6095
    iput-boolean v2, v1, Lo/createCheckBox;->warmup:Z

    .line 139
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object/from16 v14, v18

    goto :goto_1

    :cond_6
    move-object/from16 v18, v14

    const/4 v2, 0x1

    .line 142
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    .line 143
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_7

    const/4 v2, 0x0

    .line 145
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v14, v18

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, 0x0

    .line 112
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v15

    goto/16 :goto_0

    .line 109
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v2

    double-to-float v13, v2

    goto/16 :goto_0

    .line 106
    :pswitch_3
    invoke-static {}, Lo/generateLayoutParams$onMessageChannelReady;->values()[Lo/generateLayoutParams$onMessageChannelReady;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v3

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v12, v2, v3

    goto/16 :goto_0

    :pswitch_4
    const/16 v18, 0x1

    .line 103
    invoke-static {}, Lo/generateLayoutParams$extraCallback;->values()[Lo/generateLayoutParams$extraCallback;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v10, v2, v3

    goto/16 :goto_0

    .line 5032
    :pswitch_5
    new-instance v9, Lo/setTransitioning;

    .line 5033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v2

    sget-object v3, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 5087
    invoke-static {v0, v1, v2, v3}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v2

    .line 5033
    invoke-direct {v9, v2}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4043
    :pswitch_6
    new-instance v8, Lo/startActionModeForChild;

    .line 4044
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v2

    sget-object v3, Lo/removeActionBarHideOffset;->ICustomTabsCallback:Lo/removeActionBarHideOffset;

    .line 4087
    invoke-static {v0, v1, v2, v3}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v2

    .line 4044
    invoke-direct {v8, v2}, Lo/startActionModeForChild;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    .line 3043
    :pswitch_7
    new-instance v7, Lo/startActionModeForChild;

    .line 3044
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v2

    sget-object v3, Lo/removeActionBarHideOffset;->ICustomTabsCallback:Lo/removeActionBarHideOffset;

    .line 3087
    invoke-static {v0, v1, v2, v3}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v2

    .line 3044
    invoke-direct {v7, v2}, Lo/startActionModeForChild;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    .line 91
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    sget-object v2, Lo/closeMode;->extraCallback:Lo/closeMode;

    goto :goto_7

    :cond_8
    sget-object v2, Lo/closeMode;->ICustomTabsCallback:Lo/closeMode;

    :goto_7
    move-object v5, v2

    goto/16 :goto_0

    .line 2038
    :pswitch_9
    new-instance v2, Lo/getTabContainer;

    sget-object v3, Lo/onNestedPreFling;->extraCallback:Lo/onNestedPreFling;

    move/from16 v19, v15

    const/high16 v15, 0x3f800000    # 1.0f

    .line 2079
    invoke-static {v0, v1, v15, v3}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v3

    .line 2038
    invoke-direct {v2, v3}, Lo/getTabContainer;-><init>(Ljava/util/List;)V

    move-object/from16 v16, v2

    :goto_8
    move/from16 v15, v19

    goto/16 :goto_0

    :pswitch_a
    move/from16 v19, v15

    const/4 v2, -0x1

    .line 71
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    .line 72
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 73
    sget-object v3, Lo/getNestedScrollAxes;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v3}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v15, 0x1

    if-eq v3, v15, :cond_9

    .line 81
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_9

    .line 1070
    :cond_9
    new-instance v6, Lo/onInterceptTouchEvent;

    new-instance v3, Lo/getDecorToolbar;

    invoke-direct {v3, v2}, Lo/getDecorToolbar;-><init>(I)V

    const/high16 v15, 0x3f800000    # 1.0f

    .line 1079
    invoke-static {v0, v1, v15, v3}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v3

    .line 1071
    invoke-direct {v6, v3}, Lo/onInterceptTouchEvent;-><init>(Ljava/util/List;)V

    goto :goto_9

    :cond_a
    const/high16 v15, 0x3f800000    # 1.0f

    .line 75
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v2

    goto :goto_9

    .line 85
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    goto :goto_8

    :pswitch_b
    move/from16 v19, v15

    .line 67
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_c
    move/from16 v19, v15

    if-nez v16, :cond_d

    .line 156
    new-instance v0, Lo/getTabContainer;

    new-instance v1, Lo/ActionMenuView;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ActionMenuView;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/getTabContainer;-><init>(Ljava/util/List;)V

    move-object/from16 v16, v0

    .line 157
    :cond_d
    new-instance v15, Lo/killMode;

    move-object v0, v15

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, v16

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v12

    move v10, v13

    move-object v12, v14

    move/from16 v13, v19

    invoke-direct/range {v0 .. v13}, Lo/killMode;-><init>(Ljava/lang/String;Lo/closeMode;Lo/onInterceptTouchEvent;Lo/getTabContainer;Lo/startActionModeForChild;Lo/startActionModeForChild;Lo/setTransitioning;Lo/generateLayoutParams$extraCallback;Lo/generateLayoutParams$onMessageChannelReady;FLjava/util/List;Lo/setTransitioning;Z)V

    return-object v15

    :pswitch_data_0
    .packed-switch 0x0
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
