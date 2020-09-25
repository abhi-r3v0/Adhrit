.class public Lcom/freshchat/consumer/sdk/FaqOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;
    }
.end annotation


# instance fields
.field private accessoryViewLayoutResId:I

.field private contactusFilterTags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contactusFilterTitle:Ljava/lang/String;

.field private filterType:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

.field private filteredViewTitle:Ljava/lang/String;

.field private showContactUsOnAppBar:Z

.field private showContactUsOnFaqNotHelpful:Z

.field private showContactUsOnFaqScreens:Z

.field private showFaqCategoriesAsGrid:Z

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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showFaqCategoriesAsGrid:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnFaqScreens:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnAppBar:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnFaqNotHelpful:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->tags:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->contactusFilterTags:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public filterByTags(Ljava/util/Collection;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FaqOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/freshchat/consumer/sdk/FaqOptions;"
        }
    .end annotation

    sget-object v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->filterByTags(Ljava/util/Collection;Ljava/lang/String;Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;)Lcom/freshchat/consumer/sdk/FaqOptions;

    move-result-object p1

    return-object p1
.end method

.method public filterByTags(Ljava/util/Collection;Ljava/lang/String;Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;)Lcom/freshchat/consumer/sdk/FaqOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;",
            ")",
            "Lcom/freshchat/consumer/sdk/FaqOptions;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->tags:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->tags:Ljava/util/Collection;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->filteredViewTitle:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->filterType:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->filterType:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public filterContactUsByTags(Ljava/util/Collection;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FaqOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/freshchat/consumer/sdk/FaqOptions;"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->contactusFilterTags:Ljava/util/Collection;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->contactusFilterTitle:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getContactUsTags()Ljava/util/Collection;
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

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->contactusFilterTags:Ljava/util/Collection;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->contactusFilterTags:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getContactUsViewTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->contactusFilterTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->filterType:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    return-object v0
.end method

.method public getFilteredViewTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->filteredViewTitle:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->tags:Ljava/util/Collection;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->tags:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public shouldShowContactUsOnAppBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnAppBar:Z

    return v0
.end method

.method public shouldShowContactUsOnFaqNotHelpful()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnFaqNotHelpful:Z

    return v0
.end method

.method public shouldShowContactUsOnFaqScreens()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnFaqScreens:Z

    return v0
.end method

.method public shouldShowFaqCategoriesAsGrid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showFaqCategoriesAsGrid:Z

    return v0
.end method

.method public showContactUsOnAppBar(Z)Lcom/freshchat/consumer/sdk/FaqOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnAppBar:Z

    return-object p0
.end method

.method public showContactUsOnFaqNotHelpful(Z)Lcom/freshchat/consumer/sdk/FaqOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnFaqNotHelpful:Z

    return-object p0
.end method

.method public showContactUsOnFaqScreens(Z)Lcom/freshchat/consumer/sdk/FaqOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showContactUsOnFaqScreens:Z

    return-object p0
.end method

.method public showFaqCategoriesAsGrid(Z)Lcom/freshchat/consumer/sdk/FaqOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FaqOptions;->showFaqCategoriesAsGrid:Z

    return-object p0
.end method
