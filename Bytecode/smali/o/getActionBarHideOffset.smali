.class public final Lo/getActionBarHideOffset;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "k"

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/getActionBarHideOffset;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method public static ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/restoreToolbarHierarchyState;",
            "Lo/createCheckBox;",
            "F",
            "Lo/hasLogo<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/restoreToolbarHierarchyState$onPostMessage;->onRelationshipValidationResult:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-ne v1, v2, :cond_0

    const-string p0, "Lottie doesn\'t support expressions."

    .line 1089
    invoke-static {p0}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    .line 1090
    iget-object p1, p1, Lo/createCheckBox;->onMessageChannelReady:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    .line 30
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    sget-object v1, Lo/getActionBarHideOffset;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v1}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/restoreToolbarHierarchyState$onPostMessage;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onPostMessage;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 34
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 36
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/restoreToolbarHierarchyState$onPostMessage;->onTransact:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-ne v1, v2, :cond_2

    .line 38
    invoke-static {p0, p1, p2, p3, v3}, Lo/setHideOnContentScrollEnabled;->onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;Z)Lo/ActionMenuView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 41
    invoke-static {p0, p1, p2, p3, v1}, Lo/setHideOnContentScrollEnabled;->onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;Z)Lo/ActionMenuView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    goto :goto_0

    .line 46
    :cond_4
    invoke-static {p0, p1, p2, p3, v3}, Lo/setHideOnContentScrollEnabled;->onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;Z)Lo/ActionMenuView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_5
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    .line 55
    invoke-static {v0}, Lo/getActionBarHideOffset;->ICustomTabsCallback(Ljava/util/List;)V

    return-object v0
.end method

.method public static ICustomTabsCallback(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lo/ActionMenuView<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    .line 67
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ActionMenuView;

    add-int/lit8 v1, v1, 0x1

    .line 68
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ActionMenuView;

    .line 69
    iget v4, v3, Lo/ActionMenuView;->onMessageChannelReady:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lo/ActionMenuView;->onTransact:Ljava/lang/Float;

    .line 70
    iget-object v4, v2, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v4, v3, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 71
    iget-object v3, v3, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    iput-object v3, v2, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    .line 72
    instance-of v3, v2, Lo/canShowOverflowMenu;

    if-eqz v3, :cond_0

    .line 73
    check-cast v2, Lo/canShowOverflowMenu;

    invoke-virtual {v2}, Lo/canShowOverflowMenu;->ICustomTabsCallback()V

    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ActionMenuView;

    .line 78
    iget-object v1, v0, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    if-nez v1, :cond_3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 82
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
