.class public Lcom/freshchat/consumer/sdk/j/u;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/freshchat/consumer/sdk/FaqOptions;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowFaqCategoriesAsGrid()Z

    move-result v1

    const-string v2, "SHOW_FAQ_CATEGORY_AS_GRID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqScreens()Z

    move-result v1

    const-string v2, "SHOW_CONTACT_US_ON_FAQ_SCREENS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqNotHelpful()Z

    move-result v1

    const-string v2, "SHOW_CONTACT_US_ON_SEARCH_AND_DOWN_VOTE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnAppBar()Z

    move-result v1

    const-string v2, "SHOW_CONTACT_US_ON_APP_BAR"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "FAQ_TAG_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilteredViewTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAQ_TAG_VIEW_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAQ_TAG_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getContactUsTags()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "FAQ_CONTACT_US_FILTER_TAGS_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getContactUsViewTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getContactUsViewTitle()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FAQ_CONTACT_US_FILTER_TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public static d(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/FaqOptions;
    .locals 4

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowFaqCategoriesAsGrid()Z

    move-result v1

    const-string v2, "SHOW_FAQ_CATEGORY_AS_GRID"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->showFaqCategoriesAsGrid(Z)Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqScreens()Z

    move-result v1

    const-string v2, "SHOW_CONTACT_US_ON_FAQ_SCREENS"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnFaqScreens(Z)Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqNotHelpful()Z

    move-result v1

    const-string v2, "SHOW_CONTACT_US_ON_SEARCH_AND_DOWN_VOTE"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnFaqNotHelpful(Z)Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnAppBar()Z

    move-result v1

    const-string v2, "SHOW_CONTACT_US_ON_APP_BAR"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnAppBar(Z)Lcom/freshchat/consumer/sdk/FaqOptions;

    const-string v1, "FAQ_TAG_LIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "FAQ_TAG_VIEW_TITLE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FAQ_TAG_TYPE"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/FaqOptions;->filterByTags(Ljava/util/Collection;Ljava/lang/String;Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;)Lcom/freshchat/consumer/sdk/FaqOptions;

    :cond_0
    const-string v1, "FAQ_CONTACT_US_FILTER_TAGS_LIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "FAQ_CONTACT_US_FILTER_TITLE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/freshchat/consumer/sdk/FaqOptions;->filterContactUsByTags(Ljava/util/Collection;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FaqOptions;

    :cond_1
    return-object v0
.end method
