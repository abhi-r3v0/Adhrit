.class final Lo/ConversationDetailActivity$17;
.super Lo/ConversationDetailActivity$19;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lo/ConversationDetailActivity$19;-><init>(Lo/ConversationDetailActivity$2;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ConversationDetailActivity$2;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/ConversationDetailActivity$17;-><init>()V

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;J)Lo/ConversationDetailActivity$12;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lo/ConversationDetailActivity$12<",
            "TE;>;"
        }
    .end annotation

    .line 16
    invoke-static {p0, p1, p2}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ConversationDetailActivity$12;

    return-object p0
.end method


# virtual methods
.method final extraCallback(Ljava/lang/Object;J)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Lo/ConversationDetailActivity$17;->onMessageChannelReady(Ljava/lang/Object;J)Lo/ConversationDetailActivity$12;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lo/ConversationDetailActivity$12;->onMessageChannelReady()V

    return-void
.end method

.method final extraCallback(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 5
    invoke-static {p1, p3, p4}, Lo/ConversationDetailActivity$17;->onMessageChannelReady(Ljava/lang/Object;J)Lo/ConversationDetailActivity$12;

    move-result-object v0

    .line 6
    invoke-static {p2, p3, p4}, Lo/ConversationDetailActivity$17;->onMessageChannelReady(Ljava/lang/Object;J)Lo/ConversationDetailActivity$12;

    move-result-object p2

    .line 7
    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->size()I

    move-result v1

    .line 8
    invoke-interface {p2}, Lo/ConversationDetailActivity$12;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 10
    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->extraCallback()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    .line 11
    invoke-interface {v0, v2}, Lo/ConversationDetailActivity$12;->ICustomTabsCallback(I)Lo/ConversationDetailActivity$12;

    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0, p2}, Lo/ConversationDetailActivity$12;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    .line 14
    :cond_2
    invoke-static {p1, p3, p4, p2}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
