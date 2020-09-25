.class public final Lo/isLayoutRTL$mayLaunchUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isSessionReady$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutRTL;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$onViewCreated$4",
        "Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;",
        "onDrawerClosed",
        "",
        "drawerView",
        "Landroid/view/View;",
        "onDrawerOpened",
        "onDrawerSlide",
        "slideOffset",
        "",
        "onDrawerStateChanged",
        "newState",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/isLayoutRTL;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 409
    iput-object p1, p0, Lo/isLayoutRTL$mayLaunchUrl;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/View;)V
    .locals 2

    const-string v0, "drawerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lo/isLayoutRTL$mayLaunchUrl;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-static {p1}, Lo/isLayoutRTL;->asInterface(Lo/isLayoutRTL;)Lo/StaggeredGridLayoutManager;

    move-result-object p1

    instance-of v0, p1, Lo/ensureLayoutState;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/ensureLayoutState;

    if-eqz p1, :cond_2

    .line 425
    iget-object v0, p0, Lo/isLayoutRTL$mayLaunchUrl;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-static {v0, p1}, Lo/isLayoutRTL;->extraCallback(Lo/isLayoutRTL;Lo/ensureLayoutState;)Ljava/util/Map;

    move-result-object p1

    .line 426
    iget-object v0, p0, Lo/isLayoutRTL$mayLaunchUrl;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-static {v0}, Lo/isLayoutRTL;->ICustomTabsService(Lo/isLayoutRTL;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "click"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "swipe"

    :goto_0
    const-string v1, "cta_method"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "reward_tnc_screen_load"

    .line 425
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 428
    iget-object p1, p0, Lo/isLayoutRTL$mayLaunchUrl;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-static {p1}, Lo/isLayoutRTL;->newSession(Lo/isLayoutRTL;)V

    .line 430
    :cond_2
    iget-object p1, p0, Lo/isLayoutRTL$mayLaunchUrl;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-static {p1}, Lo/isLayoutRTL;->onRelationshipValidationResult(Lo/isLayoutRTL;)Lo/hasObservers;

    move-result-object p1

    const/4 v0, 0x1

    .line 2068
    iput-boolean v0, p1, Lo/hasObservers;->onPostMessage:Z

    .line 2069
    invoke-virtual {p1}, Lo/hasObservers;->onPostMessage()V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;)V
    .locals 1

    const-string v0, "drawerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lo/isLayoutRTL$mayLaunchUrl;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-static {p1}, Lo/isLayoutRTL;->onRelationshipValidationResult(Lo/isLayoutRTL;)Lo/hasObservers;

    move-result-object p1

    const/4 v0, 0x0

    .line 1068
    iput-boolean v0, p1, Lo/hasObservers;->onPostMessage:Z

    .line 1069
    invoke-virtual {p1}, Lo/hasObservers;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;)V
    .locals 1

    const-string v0, "drawerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
