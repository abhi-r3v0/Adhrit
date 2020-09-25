.class final Lo/postRemoveActionBarHideOffset;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "nm"

    const-string v1, "mm"

    const-string v2, "hd"

    .line 9
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/postRemoveActionBarHideOffset;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static ICustomTabsCallback(Lo/restoreToolbarHierarchyState;)Lo/setTitleOptional;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    sget-object v3, Lo/postRemoveActionBarHideOffset;->extraCallback:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v3}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 34
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onRelationshipValidationResult()V

    .line 35
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v2

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v1

    invoke-static {v1}, Lo/setTitleOptional$extraCallback;->onNavigationEvent(I)Lo/setTitleOptional$extraCallback;

    move-result-object v1

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_3
    new-instance p0, Lo/setTitleOptional;

    invoke-direct {p0, v0, v1, v2}, Lo/setTitleOptional;-><init>(Ljava/lang/String;Lo/setTitleOptional$extraCallback;Z)V

    return-object p0
.end method
