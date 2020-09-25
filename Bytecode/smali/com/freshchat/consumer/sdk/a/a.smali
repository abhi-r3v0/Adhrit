.class public Lcom/freshchat/consumer/sdk/a/a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/a$a;
    }
.end annotation


# instance fields
.field private final ce:Landroid/view/LayoutInflater;

.field private cf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
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

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/a;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/a;->cf:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/a;->ce:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public d(I)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/a;->cf:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Article;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/a;->cf:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/a;->d(I)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/a;->cf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/freshchat/consumer/sdk/a/a$a;

    invoke-direct {p2}, Lcom/freshchat/consumer/sdk/a/a$a;-><init>()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/a;->ce:Landroid/view/LayoutInflater;

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_listitem_article:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_article_listitem_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/freshchat/consumer/sdk/a/a$a;->cg:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freshchat/consumer/sdk/a/a$a;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/a;->cf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/freshchat/consumer/sdk/a/a$a;->cg:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
