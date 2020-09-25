.class public final Lo/ArticleDetailActivity$onNavigationEvent;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ArticleDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/ArticleDetailActivity;",
        "Lo/ArticleDetailActivity$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/ArticleDetailActivity;->asInterface()Lo/ArticleDetailActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/h;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/ArticleDetailActivity$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/ArticleDetailActivity$onNavigationEvent;
    .locals 1

    .line 11
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 14
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$onNavigationEvent;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity;

    invoke-static {v0, p1}, Lo/ArticleDetailActivity;->onNavigationEvent(Lo/ArticleDetailActivity;Ljava/lang/String;)V

    return-object p0
.end method

.method public final extraCallback(Ljava/util/Map;)Lo/ArticleDetailActivity$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/ArticleDetailActivity$onNavigationEvent;"
        }
    .end annotation

    .line 29
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 32
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$onNavigationEvent;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity;

    invoke-static {v0}, Lo/ArticleDetailActivity;->onPostMessage(Lo/ArticleDetailActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final extraCallback(Lo/d$a$onNavigationEvent;)Lo/ArticleDetailActivity$onNavigationEvent;
    .locals 1

    .line 17
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 20
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$onNavigationEvent;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity;

    invoke-virtual {p1}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object p1

    check-cast p1, Lo/fU;

    check-cast p1, Lo/d$a;

    invoke-static {v0, p1}, Lo/ArticleDetailActivity;->extraCallback(Lo/ArticleDetailActivity;Lo/d$a;)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/ArticleDetailActivity$onNavigationEvent;
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
    iget-object v0, p0, Lo/ArticleDetailActivity$onNavigationEvent;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity;

    invoke-static {v0, p1}, Lo/ArticleDetailActivity;->onPostMessage(Lo/ArticleDetailActivity;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lo/ArticleDetailActivity$onNavigationEvent;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity;

    invoke-virtual {v0}, Lo/ArticleDetailActivity;->onPostMessage()Z

    move-result v0

    return v0
.end method

.method public final onPostMessage(Lo/onCreateLoader;)Lo/ArticleDetailActivity$onNavigationEvent;
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 26
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$onNavigationEvent;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity;

    invoke-static {v0, p1}, Lo/ArticleDetailActivity;->ICustomTabsCallback(Lo/ArticleDetailActivity;Lo/onCreateLoader;)V

    return-object p0
.end method
