.class final Lo/setMenuPrepared;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "nm"

    const-string v1, "c"

    const-string/jumbo v2, "w"

    const-string v3, "o"

    const-string v4, "lc"

    const-string v5, "lj"

    const-string v6, "ml"

    const-string v7, "hd"

    const-string v8, "d"

    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/setMenuPrepared;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v0, "n"

    const-string/jumbo v1, "v"

    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/setMenuPrepared;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/generateLayoutParams;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 52
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v14

    const/16 v15, 0x64

    if-eqz v14, :cond_b

    .line 53
    sget-object v14, Lo/setMenuPrepared;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v14}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v14

    const/4 v4, 0x1

    packed-switch v14, :pswitch_data_0

    const/4 v2, 0x0

    .line 119
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 79
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 80
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 84
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 85
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 86
    sget-object v2, Lo/setMenuPrepared;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v2}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v2

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_0

    .line 94
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_2

    .line 4032
    :cond_0
    new-instance v14, Lo/setTransitioning;

    .line 4033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v2

    sget-object v4, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 4087
    invoke-static {v0, v1, v2, v4}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v2

    .line 4033
    invoke-direct {v14, v2}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_3

    .line 88
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v16

    :goto_3
    const/4 v4, 0x1

    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    .line 100
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v2, 0x2

    if-eq v4, v15, :cond_5

    const/16 v15, 0x67

    if-eq v4, v15, :cond_4

    const/16 v15, 0x6f

    if-eq v4, v15, :cond_3

    goto :goto_4

    :cond_3
    const-string v4, "o"

    move-object/from16 v15, v16

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_4
    move-object/from16 v15, v16

    const-string v4, "g"

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    goto :goto_5

    :cond_5
    move-object/from16 v15, v16

    const-string v4, "d"

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v4, -0x1

    :goto_5
    if-eqz v4, :cond_8

    const/4 v15, 0x1

    if-eq v4, v15, :cond_7

    if-eq v4, v2, :cond_7

    goto :goto_6

    .line 4095
    :cond_7
    iput-boolean v15, v1, Lo/createCheckBox;->warmup:Z

    .line 107
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v4, 0x1

    const/16 v15, 0x64

    goto/16 :goto_1

    :cond_8
    move-object v6, v14

    goto :goto_6

    :cond_9
    const/4 v15, 0x1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    .line 113
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v15, :cond_a

    const/4 v2, 0x0

    .line 115
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, 0x0

    .line 76
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v12

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x0

    .line 73
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v14

    double-to-float v11, v14

    goto/16 :goto_0

    :pswitch_3
    const/4 v2, 0x0

    .line 70
    invoke-static {}, Lo/generateLayoutParams$onMessageChannelReady;->values()[Lo/generateLayoutParams$onMessageChannelReady;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v10

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    aget-object v10, v4, v10

    goto/16 :goto_0

    :pswitch_4
    const/4 v2, 0x0

    const/4 v14, 0x1

    .line 67
    invoke-static {}, Lo/generateLayoutParams$extraCallback;->values()[Lo/generateLayoutParams$extraCallback;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v9

    sub-int/2addr v9, v14

    aget-object v9, v4, v9

    goto/16 :goto_0

    :pswitch_5
    const/4 v2, 0x0

    .line 3038
    new-instance v13, Lo/getTabContainer;

    sget-object v4, Lo/onNestedPreFling;->extraCallback:Lo/onNestedPreFling;

    const/high16 v14, 0x3f800000    # 1.0f

    .line 3079
    invoke-static {v0, v1, v14, v4}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v4

    .line 3038
    invoke-direct {v13, v4}, Lo/getTabContainer;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_6
    const/4 v2, 0x0

    .line 2032
    new-instance v8, Lo/setTransitioning;

    .line 2033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v4

    sget-object v14, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 2087
    invoke-static {v0, v1, v4, v14}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v4

    .line 2033
    invoke-direct {v8, v4}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_7
    const/4 v2, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    .line 1065
    new-instance v7, Lo/verifyDrawable;

    sget-object v4, Lo/applyInsets;->onNavigationEvent:Lo/applyInsets;

    .line 1079
    invoke-static {v0, v1, v14, v4}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v4

    .line 1065
    invoke-direct {v7, v4}, Lo/verifyDrawable;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_8
    const/4 v2, 0x0

    .line 55
    invoke-virtual/range {p0 .. p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_b
    if-nez v13, :cond_c

    .line 125
    new-instance v0, Lo/getTabContainer;

    new-instance v1, Lo/ActionMenuView;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ActionMenuView;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/getTabContainer;-><init>(Ljava/util/List;)V

    move-object v13, v0

    .line 126
    :cond_c
    new-instance v14, Lo/generateLayoutParams;

    move-object v0, v14

    move-object v1, v5

    move-object v2, v6

    move-object v4, v7

    move-object v5, v13

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    invoke-direct/range {v0 .. v10}, Lo/generateLayoutParams;-><init>(Ljava/lang/String;Lo/setTransitioning;Ljava/util/List;Lo/verifyDrawable;Lo/getTabContainer;Lo/setTransitioning;Lo/generateLayoutParams$extraCallback;Lo/generateLayoutParams$onMessageChannelReady;FZ)V

    return-object v14

    :pswitch_data_0
    .packed-switch 0x0
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
