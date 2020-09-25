.class public final Lo/getColumnCount$extraCallback;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getColumnCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/getColumnCount;",
        "Lo/getColumnCount$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/getColumnCount;->ICustomTabsService()Lo/getColumnCount;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/E;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lo/getColumnCount$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)Lo/getColumnCount$extraCallback;
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
    iget-object v0, p0, Lo/getColumnCount$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-static {v0, p1, p2}, Lo/getColumnCount;->onMessageChannelReady(Lo/getColumnCount;J)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Iterable;)Lo/getColumnCount$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/getColumnCount;",
            ">;)",
            "Lo/getColumnCount$extraCallback;"
        }
    .end annotation

    .line 41
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 44
    :cond_0
    iget-object v0, p0, Lo/getColumnCount$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-static {v0, p1}, Lo/getColumnCount;->extraCallback(Lo/getColumnCount;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;J)Lo/getColumnCount$extraCallback;
    .locals 1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    iget-object v0, p0, Lo/getColumnCount$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-static {v0}, Lo/getColumnCount;->ICustomTabsCallback(Lo/getColumnCount;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/getColumnCount$extraCallback;
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
    iget-object v0, p0, Lo/getColumnCount$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-static {v0, p1}, Lo/getColumnCount;->onNavigationEvent(Lo/getColumnCount;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onMessageChannelReady(J)Lo/getColumnCount$extraCallback;
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
    iget-object v0, p0, Lo/getColumnCount$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-static {v0, p1, p2}, Lo/getColumnCount;->onNavigationEvent(Lo/getColumnCount;J)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/util/Map;)Lo/getColumnCount$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/getColumnCount$extraCallback;"
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
    iget-object v0, p0, Lo/getColumnCount$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-static {v0}, Lo/getColumnCount;->ICustomTabsCallback(Lo/getColumnCount;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/Iterable;)Lo/getColumnCount$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/ArticleListActivity$3;",
            ">;)",
            "Lo/getColumnCount$extraCallback;"
        }
    .end annotation

    .line 59
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 62
    :cond_0
    iget-object v0, p0, Lo/getColumnCount$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-static {v0, p1}, Lo/getColumnCount;->ICustomTabsCallback(Lo/getColumnCount;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/util/Map;)Lo/getColumnCount$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/getColumnCount$extraCallback;"
        }
    .end annotation

    .line 47
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 50
    :cond_0
    iget-object v0, p0, Lo/getColumnCount$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-static {v0}, Lo/getColumnCount;->onNavigationEvent(Lo/getColumnCount;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/ArticleListActivity$3;)Lo/getColumnCount$extraCallback;
    .locals 1

    .line 53
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 56
    :cond_0
    iget-object v0, p0, Lo/getColumnCount$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-static {v0, p1}, Lo/getColumnCount;->ICustomTabsCallback(Lo/getColumnCount;Lo/ArticleListActivity$3;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/getColumnCount;)Lo/getColumnCount$extraCallback;
    .locals 1

    .line 35
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 38
    :cond_0
    iget-object v0, p0, Lo/getColumnCount$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-static {v0, p1}, Lo/getColumnCount;->onPostMessage(Lo/getColumnCount;Lo/getColumnCount;)V

    return-object p0
.end method
