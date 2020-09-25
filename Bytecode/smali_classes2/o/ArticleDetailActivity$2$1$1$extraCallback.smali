.class public final Lo/ArticleDetailActivity$2$1$1$extraCallback;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ArticleDetailActivity$2$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/ArticleDetailActivity$2$1$1;",
        "Lo/ArticleDetailActivity$2$1$1$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/ArticleDetailActivity$2$1$1;->IPostMessageService$Stub()Lo/ArticleDetailActivity$2$1$1;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ArticleDetailActivity$2;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lo/ArticleDetailActivity$2$1$1$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;
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
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->onMessageChannelReady(Lo/ArticleDetailActivity$2$1$1;J)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Iterable;)Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/ArticleListActivity$3;",
            ">;)",
            "Lo/ArticleDetailActivity$2$1$1$extraCallback;"
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 96
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsCallback(Lo/ArticleDetailActivity$2$1$1;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->asInterface()Z

    move-result v0

    return v0
.end method

.method public final asBinder()Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

    .line 81
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 84
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final asInterface()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->updateVisuals()Z

    move-result v0

    return v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

    .line 55
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 58
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->extraCallback(Lo/ArticleDetailActivity$2$1$1;J)V

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1}, Lo/ArticleDetailActivity$2$1$1;->onMessageChannelReady(Lo/ArticleDetailActivity$2$1$1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 66
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->newSession()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

    .line 68
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 71
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->onPostMessage(Lo/ArticleDetailActivity$2$1$1;J)V

    return-object p0
.end method

.method public final onNavigationEvent()Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

    .line 48
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 51
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsCallback(Lo/ArticleDetailActivity$2$1$1;)V

    return-object p0
.end method

.method public final onNavigationEvent(I)Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

    .line 36
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 39
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;I)V

    return-object p0
.end method

.method public final onNavigationEvent(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;
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
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;J)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

    .line 42
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 45
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsCallback(Lo/ArticleDetailActivity$2$1$1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/util/Map;)Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/ArticleDetailActivity$2$1$1$extraCallback;"
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 90
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;)Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

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
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1}, Lo/ArticleDetailActivity$2$1$1;->extraCallback(Lo/ArticleDetailActivity$2$1$1;Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;)V

    return-object p0
.end method

.method public final onPostMessage(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

    .line 61
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 64
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsCallback(Lo/ArticleDetailActivity$2$1$1;J)V

    return-object p0
.end method

.method public final onPostMessage(Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;)Lo/ArticleDetailActivity$2$1$1$extraCallback;
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
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent(Lo/ArticleDetailActivity$2$1$1;Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;)V

    return-object p0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsCallback$Stub()Z

    move-result v0

    return v0
.end method

.method public final onRelationshipValidationResult(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;
    .locals 1

    .line 75
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 78
    :cond_0
    iget-object v0, p0, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent:Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    invoke-static {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1;->onTransact(Lo/ArticleDetailActivity$2$1$1;J)V

    return-object p0
.end method
