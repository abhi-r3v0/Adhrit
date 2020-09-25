.class public final Lo/checkLayoutParams;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "a"

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/checkLayoutParams;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string v0, "fc"

    const-string/jumbo v1, "sc"

    const-string/jumbo v2, "sw"

    const-string/jumbo v3, "t"

    .line 14
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/checkLayoutParams;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method public static extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/isCurrent$onMessageChannelReady;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 29
    sget-object v2, Lo/checkLayoutParams;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v2}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 35
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 1054
    :goto_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1055
    sget-object v5, Lo/checkLayoutParams;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v5}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_4

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 1069
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 1070
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_1

    .line 5032
    :cond_1
    new-instance v4, Lo/setTransitioning;

    .line 5033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v5

    sget-object v6, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 5087
    invoke-static {p0, p1, v5, v6}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v5

    .line 5033
    invoke-direct {v4, v5}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_1

    .line 4032
    :cond_2
    new-instance v3, Lo/setTransitioning;

    .line 4033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v5

    sget-object v6, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 4087
    invoke-static {p0, p1, v5, v6}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v5

    .line 4033
    invoke-direct {v3, v5}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_1

    .line 3065
    :cond_3
    new-instance v2, Lo/verifyDrawable;

    sget-object v5, Lo/applyInsets;->onNavigationEvent:Lo/applyInsets;

    .line 3079
    invoke-static {p0, p1, v6, v5}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v5

    .line 3065
    invoke-direct {v2, v5}, Lo/verifyDrawable;-><init>(Ljava/util/List;)V

    goto :goto_1

    .line 2065
    :cond_4
    new-instance v1, Lo/verifyDrawable;

    sget-object v5, Lo/applyInsets;->onNavigationEvent:Lo/applyInsets;

    .line 2079
    invoke-static {p0, p1, v6, v5}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v5

    .line 2065
    invoke-direct {v1, v5}, Lo/verifyDrawable;-><init>(Ljava/util/List;)V

    goto :goto_1

    .line 1073
    :cond_5
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    .line 1075
    new-instance v5, Lo/isCurrent$onMessageChannelReady;

    invoke-direct {v5, v1, v2, v3, v4}, Lo/isCurrent$onMessageChannelReady;-><init>(Lo/verifyDrawable;Lo/verifyDrawable;Lo/setTransitioning;Lo/setTransitioning;)V

    move-object v1, v5

    goto :goto_0

    .line 38
    :cond_6
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    if-nez v1, :cond_7

    .line 41
    new-instance p0, Lo/isCurrent$onMessageChannelReady;

    invoke-direct {p0, v0, v0, v0, v0}, Lo/isCurrent$onMessageChannelReady;-><init>(Lo/verifyDrawable;Lo/verifyDrawable;Lo/setTransitioning;Lo/setTransitioning;)V

    return-object p0

    :cond_7
    return-object v1
.end method
