.class public Lcom/freshchat/consumer/sdk/g/b;
.super Lcom/freshchat/consumer/sdk/g/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/g/c<",
        "Lcom/freshchat/consumer/sdk/beans/Article;",
        ">;"
    }
.end annotation


# instance fields
.field private categoryId:Ljava/lang/String;

.field private final eL:Lcom/freshchat/consumer/sdk/c/i;

.field private eM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eN:Ljava/lang/String;

.field private eO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/b;->categoryId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/b;->eO:Ljava/util/List;

    new-instance v0, Lcom/freshchat/consumer/sdk/c/i;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/c/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/b;->eL:Lcom/freshchat/consumer/sdk/c/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/g/b;->categoryId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/g/b;->eN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/g/b;->eM:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/g/b$1;

    invoke-direct {p1, p0}, Lcom/freshchat/consumer/sdk/g/b$1;-><init>(Lcom/freshchat/consumer/sdk/g/b;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method protected dd()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/b;->categoryId:Ljava/lang/String;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/b;->eL:Lcom/freshchat/consumer/sdk/c/i;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/b;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/c/i;->Z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/b;->eM:Ljava/util/List;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/b;->eL:Lcom/freshchat/consumer/sdk/c/i;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/b;->eM:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/c/i;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/b;->eO:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/b;->eL:Lcom/freshchat/consumer/sdk/c/i;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/i;->cK()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/b;->eO:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/b;->eN:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/b;->eO:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/g/b;->p(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public onReset()V
    .locals 0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/g/c;->onReset()V

    return-void
.end method

.method public onStartLoading()V
    .locals 0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/g/c;->onStartLoading()V

    return-void
.end method

.method public p(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/b;->eN:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/b;->eN:Ljava/lang/String;

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/freshchat/consumer/sdk/b/g;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/g/b;->eN:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/freshchat/consumer/sdk/b/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    new-instance v7, Lcom/freshchat/consumer/sdk/b/g;

    invoke-direct {v7, v6}, Lcom/freshchat/consumer/sdk/b/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Article;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Article;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/freshchat/consumer/sdk/b/g;

    invoke-virtual {v8, v5, v3}, Lcom/freshchat/consumer/sdk/b/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v7}, Lcom/freshchat/consumer/sdk/beans/Article;->setRank(I)Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Article;->getRank()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/g/b;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
