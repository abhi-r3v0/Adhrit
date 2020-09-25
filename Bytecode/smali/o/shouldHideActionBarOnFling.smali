.class final Lo/shouldHideActionBarOnFling;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "nm"

    const-string/jumbo v1, "sy"

    const-string v2, "pt"

    const-string v3, "p"

    const-string v4, "r"

    const-string v5, "or"

    const-string v6, "os"

    const-string v7, "ir"

    const-string v8, "is"

    const-string v9, "hd"

    .line 14
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/shouldHideActionBarOnFling;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static onNavigationEvent(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/shouldDelayChildPressedState;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    const/4 v12, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lo/shouldHideActionBarOnFling;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    .line 75
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 76
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v12

    goto :goto_0

    .line 6032
    :pswitch_1
    new-instance v10, Lo/setTransitioning;

    .line 6033
    sget-object v0, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 6087
    invoke-static {p0, p1, v1, v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 6033
    invoke-direct {v10, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 5032
    :pswitch_2
    new-instance v8, Lo/setTransitioning;

    .line 5033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v0

    sget-object v1, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 5087
    invoke-static {p0, p1, v0, v1}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 5033
    invoke-direct {v8, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 4032
    :pswitch_3
    new-instance v11, Lo/setTransitioning;

    .line 4033
    sget-object v0, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 4087
    invoke-static {p0, p1, v1, v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 4033
    invoke-direct {v11, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 3032
    :pswitch_4
    new-instance v9, Lo/setTransitioning;

    .line 3033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v0

    sget-object v1, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 3087
    invoke-static {p0, p1, v0, v1}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 3033
    invoke-direct {v9, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 2032
    :pswitch_5
    new-instance v7, Lo/setTransitioning;

    .line 2033
    sget-object v0, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 2087
    invoke-static {p0, p1, v1, v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 2033
    invoke-direct {v7, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 54
    :pswitch_6
    invoke-static {p0, p1}, Lo/fitSystemWindows;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onLayout;

    move-result-object v6

    goto :goto_0

    .line 1032
    :pswitch_7
    new-instance v5, Lo/setTransitioning;

    .line 1033
    sget-object v0, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 1087
    invoke-static {p0, p1, v1, v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 1033
    invoke-direct {v5, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 48
    :pswitch_8
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v0

    invoke-static {v0}, Lo/shouldDelayChildPressedState$onPostMessage;->onMessageChannelReady(I)Lo/shouldDelayChildPressedState$onPostMessage;

    move-result-object v4

    goto :goto_0

    .line 45
    :pswitch_9
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 80
    :cond_0
    new-instance p0, Lo/shouldDelayChildPressedState;

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lo/shouldDelayChildPressedState;-><init>(Ljava/lang/String;Lo/shouldDelayChildPressedState$onPostMessage;Lo/setTransitioning;Lo/onLayout;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
