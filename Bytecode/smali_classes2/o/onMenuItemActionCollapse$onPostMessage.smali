.class public final Lo/onMenuItemActionCollapse$onPostMessage;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onMenuItemActionCollapse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/onMenuItemActionCollapse;",
        "Lo/onMenuItemActionCollapse$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/onMenuItemActionCollapse;->asInterface()Lo/onMenuItemActionCollapse;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ArticleListActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/onMenuItemActionCollapse$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/ArticleDetailActivity$2$1$1;)Lo/onMenuItemActionCollapse$onPostMessage;
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lo/onMenuItemActionCollapse$onPostMessage;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/onMenuItemActionCollapse;

    invoke-static {v0, p1}, Lo/onMenuItemActionCollapse;->ICustomTabsCallback(Lo/onMenuItemActionCollapse;Lo/ArticleDetailActivity$2$1$1;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/ArticleDetailActivity$onNavigationEvent;)Lo/onMenuItemActionCollapse$onPostMessage;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lo/onMenuItemActionCollapse$onPostMessage;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/onMenuItemActionCollapse;

    invoke-virtual {p1}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object p1

    check-cast p1, Lo/fU;

    check-cast p1, Lo/ArticleDetailActivity;

    invoke-static {v0, p1}, Lo/onMenuItemActionCollapse;->onNavigationEvent(Lo/onMenuItemActionCollapse;Lo/ArticleDetailActivity;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/getColumnCount;)Lo/onMenuItemActionCollapse$onPostMessage;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lo/onMenuItemActionCollapse$onPostMessage;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/onMenuItemActionCollapse;

    invoke-static {v0, p1}, Lo/onMenuItemActionCollapse;->onMessageChannelReady(Lo/onMenuItemActionCollapse;Lo/getColumnCount;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/onPageFinished;)Lo/onMenuItemActionCollapse$onPostMessage;
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 25
    :cond_0
    iget-object v0, p0, Lo/onMenuItemActionCollapse$onPostMessage;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/onMenuItemActionCollapse;

    invoke-static {v0, p1}, Lo/onMenuItemActionCollapse;->onPostMessage(Lo/onMenuItemActionCollapse;Lo/onPageFinished;)V

    return-object p0
.end method
