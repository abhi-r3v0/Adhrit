.class public Lcom/freshchat/consumer/sdk/ConversationOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/z;


# instance fields
.field private filteredViewTitle:Ljava/lang/String;

.field private tags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/ConversationOptions;->tags:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public filterByTags(Ljava/util/Collection;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/ConversationOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/freshchat/consumer/sdk/ConversationOptions;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ConversationOptions;->tags:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ConversationOptions;->tags:Ljava/util/Collection;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/ConversationOptions;->filteredViewTitle:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getFilteredViewTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ConversationOptions;->filteredViewTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ConversationOptions;->tags:Ljava/util/Collection;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ConversationOptions;->tags:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method
