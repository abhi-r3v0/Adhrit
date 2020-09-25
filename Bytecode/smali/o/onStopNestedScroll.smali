.class final Lo/onStopNestedScroll;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "fFamily"

    const-string v1, "fName"

    const-string v2, "fStyle"

    const-string v3, "ascent"

    .line 9
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/onStopNestedScroll;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static onNavigationEvent(Lo/restoreToolbarHierarchyState;)Lo/isCurrent$extraCallback;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 25
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 26
    sget-object v3, Lo/onStopNestedScroll;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v3}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 40
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 41
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    .line 46
    new-instance p0, Lo/isCurrent$extraCallback;

    invoke-direct {p0, v0, v1, v2}, Lo/isCurrent$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
