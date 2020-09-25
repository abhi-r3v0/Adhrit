.class final Lo/hasIcon;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "o"

    const-string v3, "fillEnabled"

    const-string v4, "r"

    const-string v5, "hd"

    .line 15
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/hasIcon;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/onInitializeAccessibilityEvent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v4, v2

    move-object v7, v4

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 37
    sget-object v3, Lo/hasIcon;->ICustomTabsCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v3}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v3, v1, :cond_4

    const/4 v8, 0x2

    if-eq v3, v8, :cond_3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    const/4 v6, 0x5

    if-eq v3, v6, :cond_0

    .line 57
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 58
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v9

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v0

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v5

    goto :goto_0

    .line 2038
    :cond_3
    new-instance v2, Lo/getTabContainer;

    sget-object v3, Lo/onNestedPreFling;->extraCallback:Lo/onNestedPreFling;

    .line 2079
    invoke-static {p0, p1, v6, v3}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v3

    .line 2038
    invoke-direct {v2, v3}, Lo/getTabContainer;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 1065
    :cond_4
    new-instance v7, Lo/verifyDrawable;

    sget-object v3, Lo/applyInsets;->onNavigationEvent:Lo/applyInsets;

    .line 1079
    invoke-static {p0, p1, v6, v3}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v3

    .line 1065
    invoke-direct {v7, v3}, Lo/verifyDrawable;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 39
    :cond_5
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    .line 64
    new-instance p0, Lo/getTabContainer;

    new-instance p1, Lo/ActionMenuView;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v2}, Lo/ActionMenuView;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/getTabContainer;-><init>(Ljava/util/List;)V

    move-object v8, p0

    goto :goto_1

    :cond_7
    move-object v8, v2

    :goto_1
    if-ne v0, v1, :cond_8

    .line 65
    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_2

    :cond_8
    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_2
    move-object v6, p0

    .line 66
    new-instance p0, Lo/onInitializeAccessibilityEvent;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lo/onInitializeAccessibilityEvent;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lo/verifyDrawable;Lo/getTabContainer;Z)V

    return-object p0
.end method
