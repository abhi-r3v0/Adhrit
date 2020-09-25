.class public final Lo/fitSystemWindows;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "k"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "y"

    .line 21
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/fitSystemWindows;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onLayout;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/restoreToolbarHierarchyState;",
            "Lo/createCheckBox;",
            ")",
            "Lo/onLayout<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/restoreToolbarHierarchyState$onPostMessage;->onPostMessage:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-eq v5, v6, :cond_5

    .line 59
    sget-object v5, Lo/fitSystemWindows;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v5}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v5

    if-eqz v5, :cond_4

    if-eq v5, v0, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 80
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 81
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/restoreToolbarHierarchyState$onPostMessage;->onRelationshipValidationResult:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-ne v5, v6, :cond_1

    .line 74
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_1

    .line 2032
    :cond_1
    new-instance v3, Lo/setTransitioning;

    .line 2033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v5

    sget-object v6, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 2087
    invoke-static {p0, p1, v5, v6}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v5

    .line 2033
    invoke-direct {v3, v5}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/restoreToolbarHierarchyState$onPostMessage;->onRelationshipValidationResult:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-ne v5, v6, :cond_3

    .line 66
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1032
    :cond_3
    new-instance v2, Lo/setTransitioning;

    .line 1033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v5

    sget-object v6, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 1087
    invoke-static {p0, p1, v5, v6}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v5

    .line 1033
    invoke-direct {v2, v5}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 61
    :cond_4
    invoke-static {p0, p1}, Lo/fitSystemWindows;->onMessageChannelReady(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/isCollapsed;

    move-result-object v1

    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    if-eqz v4, :cond_6

    const-string p0, "Lottie doesn\'t support expressions."

    .line 2089
    invoke-static {p0}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 2090
    iget-object p1, p1, Lo/createCheckBox;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    .line 93
    :cond_7
    new-instance p0, Lo/ActionBarContextView;

    invoke-direct {p0, v2, v3}, Lo/ActionBarContextView;-><init>(Lo/setTransitioning;Lo/setTransitioning;)V

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/isCollapsed;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/restoreToolbarHierarchyState$onPostMessage;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-ne v1, v2, :cond_2

    .line 33
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1020
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/restoreToolbarHierarchyState$onPostMessage;->extraCallback:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1022
    :goto_1
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v2

    sget-object v3, Lo/postAddActionBarHideOffset;->onMessageChannelReady:Lo/postAddActionBarHideOffset;

    .line 1021
    invoke-static {p0, p1, v2, v3, v1}, Lo/setHideOnContentScrollEnabled;->onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;Z)Lo/ActionMenuView;

    move-result-object v1

    .line 1024
    new-instance v2, Lo/canShowOverflowMenu;

    invoke-direct {v2, p1, v1}, Lo/canShowOverflowMenu;-><init>(Lo/createCheckBox;Lo/ActionMenuView;)V

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    .line 38
    invoke-static {v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Ljava/util/List;)V

    goto :goto_2

    .line 40
    :cond_2
    new-instance p1, Lo/ActionMenuView;

    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v1

    invoke-static {p0, v1}, Lo/onNestedFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Lo/ActionMenuView;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :goto_2
    new-instance p0, Lo/isCollapsed;

    invoke-direct {p0, v0}, Lo/isCollapsed;-><init>(Ljava/util/List;)V

    return-object p0
.end method
