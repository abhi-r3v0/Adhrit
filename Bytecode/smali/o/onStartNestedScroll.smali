.class final Lo/onStartNestedScroll;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

.field private static final onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "ch"

    const-string/jumbo v1, "size"

    const-string/jumbo v2, "w"

    const-string/jumbo v3, "style"

    const-string v4, "fFamily"

    const-string v5, "data"

    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/onStartNestedScroll;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    const-string/jumbo v0, "shapes"

    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/onStartNestedScroll;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static extraCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/isCurrent$onNavigationEvent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v6, v0

    move-object v7, v6

    move-wide v4, v3

    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    sget-object v0, Lo/onStartNestedScroll;->onMessageChannelReady:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v8, 0x1

    if-eq v0, v8, :cond_7

    const/4 v8, 0x2

    if-eq v0, v8, :cond_6

    const/4 v8, 0x3

    if-eq v0, v8, :cond_5

    const/4 v8, 0x4

    if-eq v0, v8, :cond_4

    const/4 v8, 0x5

    if-eq v0, v8, :cond_0

    .line 72
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 73
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    .line 55
    :goto_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    sget-object v0, Lo/onStartNestedScroll;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 66
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 59
    :goto_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-static {p0, p1}, Lo/onNestedPreScroll;->onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/initTitle;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$MediaItem$Flags;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 48
    :cond_5
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 45
    :cond_6
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v4

    goto :goto_0

    .line 42
    :cond_7
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    goto :goto_0

    .line 39
    :cond_8
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_0

    .line 76
    :cond_9
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    .line 78
    new-instance p0, Lo/isCurrent$onNavigationEvent;

    move-object v0, p0

    move v2, v3

    move-wide v3, v4

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lo/isCurrent$onNavigationEvent;-><init>(Ljava/util/List;CDLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
