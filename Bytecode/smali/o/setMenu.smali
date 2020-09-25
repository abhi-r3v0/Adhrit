.class final Lo/setMenu;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "ks"

    const-string v3, "hd"

    .line 13
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/setMenu;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static onNavigationEvent(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/getIconBitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 31
    sget-object v4, Lo/setMenu;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v4}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 45
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v1

    goto :goto_0

    .line 1054
    :cond_1
    new-instance v3, Lo/onDetachedFromWindow;

    .line 1055
    invoke-static {}, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady()F

    move-result v4

    sget-object v5, Lo/setUiOptions;->onPostMessage:Lo/setUiOptions;

    .line 1087
    invoke-static {p0, p1, v4, v5}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;

    move-result-object v4

    .line 1055
    invoke-direct {v3, v4}, Lo/onDetachedFromWindow;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v0

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 49
    :cond_4
    new-instance p0, Lo/getIconBitmap;

    invoke-direct {p0, v2, v0, v3, v1}, Lo/getIconBitmap;-><init>(Ljava/lang/String;ILo/onDetachedFromWindow;Z)V

    return-object p0
.end method
