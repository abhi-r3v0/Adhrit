.class final Lo/saveToolbarHierarchyState;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "s"

    const-string v1, "e"

    const-string v2, "o"

    const-string v3, "nm"

    const-string v4, "m"

    const-string v5, "hd"

    .line 16
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/saveToolbarHierarchyState;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static onNavigationEvent(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/init;
    .locals 9
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

    const/4 v8, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    sget-object v0, Lo/saveToolbarHierarchyState;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v8

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v0

    invoke-static {v0}, Lo/init$ICustomTabsCallback;->ICustomTabsCallback(I)Lo/init$ICustomTabsCallback;

    move-result-object v4

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3032
    :cond_3
    new-instance v7, Lo/setTransitioning;

    .line 3033
    sget-object v0, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 3087
    invoke-static {p0, p1, v1, v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 3033
    invoke-direct {v7, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 2032
    :cond_4
    new-instance v6, Lo/setTransitioning;

    .line 2033
    sget-object v0, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 2087
    invoke-static {p0, p1, v1, v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 2033
    invoke-direct {v6, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 1032
    :cond_5
    new-instance v5, Lo/setTransitioning;

    .line 1033
    sget-object v0, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 1087
    invoke-static {p0, p1, v1, v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 1033
    invoke-direct {v5, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 58
    :cond_6
    new-instance p0, Lo/init;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lo/init;-><init>(Ljava/lang/String;Lo/init$ICustomTabsCallback;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Z)V

    return-object p0
.end method
