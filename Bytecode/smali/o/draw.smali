.class final Lo/draw;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "nm"

    const-string v1, "p"

    const-string/jumbo v2, "s"

    const-string v3, "hd"

    const-string v4, "d"

    .line 15
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/draw;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static onNavigationEvent(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;I)Lo/isCurrent$ICustomTabsCallback;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v3, 0x0

    move v8, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    const/4 v9, 0x0

    .line 33
    :goto_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 34
    sget-object p2, Lo/draw;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, p2}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result p2

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    .line 52
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 53
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result p2

    if-ne p2, v2, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v9

    goto :goto_1

    .line 1043
    :cond_4
    new-instance v7, Lo/startActionModeForChild;

    .line 1044
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result p2

    sget-object v3, Lo/removeActionBarHideOffset;->ICustomTabsCallback:Lo/removeActionBarHideOffset;

    .line 1087
    invoke-static {p0, p1, p2, v3}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object p2

    .line 1044
    invoke-direct {v7, p2}, Lo/startActionModeForChild;-><init>(Ljava/util/List;)V

    goto :goto_1

    .line 39
    :cond_5
    invoke-static {p0, p1}, Lo/fitSystemWindows;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onLayout;

    move-result-object v6

    goto :goto_1

    .line 36
    :cond_6
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 57
    :cond_7
    new-instance p0, Lo/isCurrent$ICustomTabsCallback;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lo/isCurrent$ICustomTabsCallback;-><init>(Ljava/lang/String;Lo/onLayout;Lo/startActionModeForChild;ZZ)V

    return-object p0
.end method
