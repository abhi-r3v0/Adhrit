.class final Lo/pullChildren;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static final onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "nm"

    const-string v1, "g"

    const-string v2, "o"

    const-string/jumbo v3, "t"

    const-string/jumbo v4, "s"

    const-string v5, "e"

    const-string v6, "r"

    const-string v7, "hd"

    .line 19
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/pullChildren;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v0, "p"

    const-string v1, "k"

    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/pullChildren;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static onNavigationEvent(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/initForMode;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v6, v0

    move-object v4, v1

    move-object v5, v4

    move-object v7, v5

    move-object v9, v7

    move-object v10, v9

    const/4 v11, 0x0

    .line 47
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    sget-object v0, Lo/pullChildren;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 90
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v11

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v0

    if-ne v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_1
    move-object v6, v0

    goto :goto_0

    .line 4043
    :pswitch_2
    new-instance v10, Lo/startActionModeForChild;

    .line 4044
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v0

    sget-object v2, Lo/removeActionBarHideOffset;->ICustomTabsCallback:Lo/removeActionBarHideOffset;

    .line 4087
    invoke-static {p0, p1, v0, v2}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 4044
    invoke-direct {v10, v0}, Lo/startActionModeForChild;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 3043
    :pswitch_3
    new-instance v9, Lo/startActionModeForChild;

    .line 3044
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v0

    sget-object v2, Lo/removeActionBarHideOffset;->ICustomTabsCallback:Lo/removeActionBarHideOffset;

    .line 3087
    invoke-static {p0, p1, v0, v2}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 3044
    invoke-direct {v9, v0}, Lo/startActionModeForChild;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 74
    :pswitch_4
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v0

    if-ne v0, v3, :cond_1

    sget-object v0, Lo/closeMode;->extraCallback:Lo/closeMode;

    goto :goto_2

    :cond_1
    sget-object v0, Lo/closeMode;->ICustomTabsCallback:Lo/closeMode;

    :goto_2
    move-object v5, v0

    goto :goto_0

    .line 2038
    :pswitch_5
    new-instance v1, Lo/getTabContainer;

    sget-object v0, Lo/onNestedPreFling;->extraCallback:Lo/onNestedPreFling;

    .line 2079
    invoke-static {p0, p1, v2, v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 2038
    invoke-direct {v1, v0}, Lo/getTabContainer;-><init>(Ljava/util/List;)V

    goto :goto_0

    :pswitch_6
    const/4 v0, -0x1

    .line 54
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    .line 55
    :goto_3
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 56
    sget-object v8, Lo/pullChildren;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v8}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v8

    if-eqz v8, :cond_3

    if-eq v8, v3, :cond_2

    .line 64
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 65
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_3

    .line 1070
    :cond_2
    new-instance v7, Lo/onInterceptTouchEvent;

    new-instance v8, Lo/getDecorToolbar;

    invoke-direct {v8, v0}, Lo/getDecorToolbar;-><init>(I)V

    .line 1079
    invoke-static {p0, p1, v2, v8}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v8

    .line 1071
    invoke-direct {v7, v8}, Lo/onInterceptTouchEvent;-><init>(Ljava/util/List;)V

    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v0

    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    goto/16 :goto_0

    .line 50
    :pswitch_7
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    if-nez v1, :cond_6

    .line 96
    new-instance p0, Lo/getTabContainer;

    new-instance p1, Lo/ActionMenuView;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/ActionMenuView;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/getTabContainer;-><init>(Ljava/util/List;)V

    move-object v8, p0

    goto :goto_4

    :cond_6
    move-object v8, v1

    .line 97
    :goto_4
    new-instance p0, Lo/initForMode;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lo/initForMode;-><init>(Ljava/lang/String;Lo/closeMode;Landroid/graphics/Path$FillType;Lo/onInterceptTouchEvent;Lo/getTabContainer;Lo/startActionModeForChild;Lo/startActionModeForChild;Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
