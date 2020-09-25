.class final Lo/ConversationDetailActivity$18;
.super Lo/ConversationDetailActivity$19;
.source ""


# static fields
.field private static final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/ConversationDetailActivity$18;->onMessageChannelReady:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lo/ConversationDetailActivity$19;-><init>(Lo/ConversationDetailActivity$2;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ConversationDetailActivity$2;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/ConversationDetailActivity$18;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final extraCallback(Ljava/lang/Object;J)V
    .locals 3

    .line 2
    invoke-static {p1, p2, p3}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    instance-of v1, v0, Lo/ConversationDetailActivity$16;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lo/ConversationDetailActivity$16;

    invoke-interface {v0}, Lo/ConversationDetailActivity$16;->ICustomTabsCallback()Lo/ConversationDetailActivity$16;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lo/ConversationDetailActivity$18;->onMessageChannelReady:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    instance-of v1, v0, Lo/PictureAttachmentActivity$1;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lo/ConversationDetailActivity$12;

    if-eqz v1, :cond_3

    .line 8
    check-cast v0, Lo/ConversationDetailActivity$12;

    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {v0}, Lo/ConversationDetailActivity$12;->onMessageChannelReady()V

    :cond_2
    return-void

    .line 11
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12
    :goto_0
    invoke-static {p1, p2, p3, v0}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

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

    .line 14
    invoke-static {p2, p3, p4}, Lo/ConversationDetailActivity$18;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 16
    invoke-static {p1, p3, p4}, Lo/ConversationDetailActivity$18;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    instance-of v2, v1, Lo/ConversationDetailActivity$16;

    if-eqz v2, :cond_0

    .line 19
    new-instance v1, Lo/ConversationDetailActivity$20;

    invoke-direct {v1, v0}, Lo/ConversationDetailActivity$20;-><init>(I)V

    goto :goto_0

    .line 20
    :cond_0
    instance-of v2, v1, Lo/PictureAttachmentActivity$1;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lo/ConversationDetailActivity$12;

    if-eqz v2, :cond_1

    .line 21
    check-cast v1, Lo/ConversationDetailActivity$12;

    invoke-interface {v1, v0}, Lo/ConversationDetailActivity$12;->ICustomTabsCallback(I)Lo/ConversationDetailActivity$12;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 22
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    :goto_0
    invoke-static {p1, p3, p4, v1}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    .line 24
    :cond_2
    sget-object v2, Lo/ConversationDetailActivity$18;->onMessageChannelReady:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-static {p1, p3, p4, v2}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 29
    :cond_3
    instance-of v2, v1, Lo/onReceivedTitle;

    if-eqz v2, :cond_4

    .line 30
    new-instance v2, Lo/ConversationDetailActivity$20;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Lo/ConversationDetailActivity$20;-><init>(I)V

    .line 31
    check-cast v1, Lo/onReceivedTitle;

    invoke-virtual {v2, v1}, Lo/I;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-static {p1, p3, p4, v2}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 34
    :cond_4
    instance-of v2, v1, Lo/PictureAttachmentActivity$1;

    if-eqz v2, :cond_5

    instance-of v2, v1, Lo/ConversationDetailActivity$12;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lo/ConversationDetailActivity$12;

    .line 35
    invoke-interface {v2}, Lo/ConversationDetailActivity$12;->extraCallback()Z

    move-result v3

    if-nez v3, :cond_5

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v2, v1}, Lo/ConversationDetailActivity$12;->ICustomTabsCallback(I)Lo/ConversationDetailActivity$12;

    move-result-object v1

    .line 37
    invoke-static {p1, p3, p4, v1}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_6

    if-lez v2, :cond_6

    .line 43
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-lez v0, :cond_7

    move-object p2, v1

    .line 45
    :cond_7
    invoke-static {p1, p3, p4, p2}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
