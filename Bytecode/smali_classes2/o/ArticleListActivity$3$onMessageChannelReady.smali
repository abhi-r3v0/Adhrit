.class public final Lo/ArticleListActivity$3$onMessageChannelReady;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ArticleListActivity$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/ArticleListActivity$3;",
        "Lo/ArticleListActivity$3$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/ArticleListActivity$3;->onPostMessage()Lo/ArticleListActivity$3;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ArticleListActivity$2;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/ArticleListActivity$3$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/ArticleListActivity$3$onMessageChannelReady;
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
    iget-object v0, p0, Lo/ArticleListActivity$3$onMessageChannelReady;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleListActivity$3;

    invoke-static {v0, p1}, Lo/ArticleListActivity$3;->onPostMessage(Lo/ArticleListActivity$3;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Lo/ArticleListActivity$4;)Lo/ArticleListActivity$3$onMessageChannelReady;
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
    iget-object v0, p0, Lo/ArticleListActivity$3$onMessageChannelReady;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleListActivity$3;

    invoke-static {v0, p1}, Lo/ArticleListActivity$3;->extraCallback(Lo/ArticleListActivity$3;Lo/ArticleListActivity$4;)V

    return-object p0
.end method
