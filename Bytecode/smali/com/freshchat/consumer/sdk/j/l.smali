.class public Lcom/freshchat/consumer/sdk/j/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/freshchat/consumer/sdk/ConversationOptions;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getTags()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CONVERSATION_TAG_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CONVERSATION_TAG_VIEW_TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static c(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/ConversationOptions;
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/ConversationOptions;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "CONVERSATION_TAG_LIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "CONVERSATION_TAG_VIEW_TITLE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/freshchat/consumer/sdk/ConversationOptions;->filterByTags(Ljava/util/Collection;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/ConversationOptions;

    :cond_0
    return-object v0
.end method
