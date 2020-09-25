.class final Lo/initFeature;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "nm"

    const-string v1, "p"

    const-string/jumbo v2, "s"

    const-string v3, "r"

    const-string v4, "hd"

    .line 16
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/initFeature;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/getMediaId;
    .locals 8
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

    const/4 v7, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    sget-object v0, Lo/initFeature;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v7

    goto :goto_0

    .line 2032
    :cond_1
    new-instance v6, Lo/setTransitioning;

    .line 2033
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v0

    sget-object v1, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 2087
    invoke-static {p0, p1, v0, v1}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 2033
    invoke-direct {v6, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 1043
    :cond_2
    new-instance v5, Lo/startActionModeForChild;

    .line 1044
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v0

    sget-object v1, Lo/removeActionBarHideOffset;->ICustomTabsCallback:Lo/removeActionBarHideOffset;

    .line 1087
    invoke-static {p0, p1, v0, v1}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 1044
    invoke-direct {v5, v0}, Lo/startActionModeForChild;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 42
    :cond_3
    invoke-static {p0, p1}, Lo/fitSystemWindows;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onLayout;

    move-result-object v4

    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 58
    :cond_5
    new-instance p0, Lo/getMediaId;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lo/getMediaId;-><init>(Ljava/lang/String;Lo/onLayout;Lo/startActionModeForChild;Lo/setTransitioning;Z)V

    return-object p0
.end method
