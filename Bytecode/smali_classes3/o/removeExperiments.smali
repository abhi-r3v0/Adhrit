.class public Lo/removeExperiments;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private onMessageChannelReady:Lo/ensureViewSet$onMessageChannelReady;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lo/removeExperiments;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lo/removeExperiments;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lo/removeExperiments;->onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 45
    iget-object p1, p0, Lo/removeExperiments;->onMessageChannelReady:Lo/ensureViewSet$onMessageChannelReady;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lo/ensureViewSet$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/ensureViewSet$onMessageChannelReady;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/removeExperiments;->onMessageChannelReady:Lo/ensureViewSet$onMessageChannelReady;

    .line 48
    :cond_0
    iget-object p1, p0, Lo/removeExperiments;->onMessageChannelReady:Lo/ensureViewSet$onMessageChannelReady;

    .line 1046
    iget-object p2, p1, Lo/ensureViewSet$onMessageChannelReady;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p1, Lo/ensureViewSet$onMessageChannelReady;->extraCallback:I

    .line 1047
    iget-object p2, p1, Lo/ensureViewSet$onMessageChannelReady;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Lo/ensureViewSet$onMessageChannelReady;->onPostMessage:I

    .line 49
    iget-object p1, p0, Lo/removeExperiments;->onMessageChannelReady:Lo/ensureViewSet$onMessageChannelReady;

    invoke-virtual {p1}, Lo/ensureViewSet$onMessageChannelReady;->onMessageChannelReady()V

    .line 51
    iget p1, p0, Lo/removeExperiments;->ICustomTabsCallback:I

    if-eqz p1, :cond_2

    .line 52
    iget-object p2, p0, Lo/removeExperiments;->onMessageChannelReady:Lo/ensureViewSet$onMessageChannelReady;

    .line 1062
    iget-boolean p3, p2, Lo/ensureViewSet$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz p3, :cond_1

    iget p3, p2, Lo/ensureViewSet$onMessageChannelReady;->ICustomTabsCallback:I

    if-eq p3, p1, :cond_1

    .line 1063
    iput p1, p2, Lo/ensureViewSet$onMessageChannelReady;->ICustomTabsCallback:I

    .line 1064
    invoke-virtual {p2}, Lo/ensureViewSet$onMessageChannelReady;->onMessageChannelReady()V

    :cond_1
    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lo/removeExperiments;->ICustomTabsCallback:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public extraCallback()I
    .locals 1

    .line 88
    iget-object v0, p0, Lo/removeExperiments;->onMessageChannelReady:Lo/ensureViewSet$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 2086
    iget v0, v0, Lo/ensureViewSet$onMessageChannelReady;->ICustomTabsCallback:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public extraCallback(I)Z
    .locals 3

    .line 70
    iget-object v0, p0, Lo/removeExperiments;->onMessageChannelReady:Lo/ensureViewSet$onMessageChannelReady;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2062
    iget-boolean v2, v0, Lo/ensureViewSet$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lo/ensureViewSet$onMessageChannelReady;->ICustomTabsCallback:I

    if-eq v2, p1, :cond_0

    .line 2063
    iput p1, v0, Lo/ensureViewSet$onMessageChannelReady;->ICustomTabsCallback:I

    .line 2064
    invoke-virtual {v0}, Lo/ensureViewSet$onMessageChannelReady;->onMessageChannelReady()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    .line 73
    :cond_1
    iput p1, p0, Lo/removeExperiments;->ICustomTabsCallback:I

    return v1
.end method

.method protected onNavigationEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent(Landroid/view/View;I)V

    return-void
.end method
