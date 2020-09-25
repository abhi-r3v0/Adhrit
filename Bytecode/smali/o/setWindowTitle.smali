.class final Lo/setWindowTitle;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "o"

    const-string/jumbo v3, "tr"

    const-string v4, "hd"

    .line 14
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/setWindowTitle;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static onMessageChannelReady(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/newArray;
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

    .line 33
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34
    sget-object v0, Lo/setWindowTitle;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v7

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p0, p1}, Lo/onApplyWindowInsets;->extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onMeasure;

    move-result-object v6

    goto :goto_0

    .line 2032
    :cond_2
    new-instance v5, Lo/setTransitioning;

    .line 2033
    sget-object v0, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 2087
    invoke-static {p0, p1, v2, v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 2033
    invoke-direct {v5, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 1032
    :cond_3
    new-instance v4, Lo/setTransitioning;

    .line 1033
    sget-object v0, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    .line 1087
    invoke-static {p0, p1, v2, v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v0

    .line 1033
    invoke-direct {v4, v0}, Lo/setTransitioning;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 36
    :cond_4
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 55
    :cond_5
    new-instance p0, Lo/newArray;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lo/newArray;-><init>(Ljava/lang/String;Lo/setTransitioning;Lo/setTransitioning;Lo/onMeasure;Z)V

    return-object p0
.end method
