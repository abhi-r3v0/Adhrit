.class final Lo/ConversationDetailActivity$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ConversationDetailActivity$5;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/onLongClick;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/onLongClick<",
            "**>;"
        }
    .end annotation

    .line 2
    check-cast p1, Lo/onFinish;

    invoke-virtual {p1}, Lo/onFinish;->onPostMessage()Lo/onLongClick;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    check-cast p1, Lo/ConversationDetailActivity$6;

    .line 8
    check-cast p2, Lo/ConversationDetailActivity$6;

    .line 9
    invoke-virtual {p2}, Lo/ConversationDetailActivity$6;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lo/ConversationDetailActivity$6;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lo/ConversationDetailActivity$6;->onPostMessage()Lo/ConversationDetailActivity$6;

    move-result-object p1

    .line 12
    :cond_0
    invoke-virtual {p1, p2}, Lo/ConversationDetailActivity$6;->onPostMessage(Lo/ConversationDetailActivity$6;)V

    :cond_1
    return-object p1
.end method

.method public final extraCallback(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 3
    check-cast p1, Lo/ConversationDetailActivity$6;

    return-object p1
.end method

.method public final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 16
    check-cast p2, Lo/ConversationDetailActivity$6;

    .line 17
    check-cast p3, Lo/onFinish;

    .line 18
    invoke-virtual {p2}, Lo/ConversationDetailActivity$6;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 21
    :cond_0
    invoke-virtual {p2}, Lo/ConversationDetailActivity$6;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p1, v2, v0}, Lo/onFinish;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    move-object v0, p1

    check-cast v0, Lo/ConversationDetailActivity$6;

    invoke-virtual {v0}, Lo/ConversationDetailActivity$6;->ICustomTabsCallback()V

    return-object p1
.end method
