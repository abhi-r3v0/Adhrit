.class final Lo/setLogo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "nm"

    const-string v1, "hd"

    const-string v2, "it"

    .line 16
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/setLogo;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method static ICustomTabsCallback(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/MediaBrowserCompat$MediaItem$Flags;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 28
    sget-object v3, Lo/setLogo;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {p0, v3}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 46
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    invoke-static {p0, p1}, Lo/onNestedPreScroll;->onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;)Lo/initTitle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 40
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->asBinder()Z

    move-result v2

    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_5
    new-instance p0, Lo/MediaBrowserCompat$MediaItem$Flags;

    invoke-direct {p0, v1, v0, v2}, Lo/MediaBrowserCompat$MediaItem$Flags;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    return-object p0
.end method
