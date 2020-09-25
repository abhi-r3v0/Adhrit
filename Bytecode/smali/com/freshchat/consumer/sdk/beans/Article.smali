.class public Lcom/freshchat/consumer/sdk/beans/Article;
.super Ljava/lang/Object;


# static fields
.field private static final JSON_TAG_ARTICLE_ALIAS:Ljava/lang/String; = "articleAlias"

.field private static final JSON_TAG_ARTICLE_ID:Ljava/lang/String; = "articleId"

.field private static final JSON_TAG_CATEGORY_ID:Ljava/lang/String; = "categoryId"

.field private static final JSON_TAG_CONTENT:Ljava/lang/String; = "content"

.field private static final JSON_TAG_POSITION:Ljava/lang/String; = "position"

.field private static final JSON_TAG_TITLE:Ljava/lang/String; = "title"

.field private static final JSON_TAG_UPDATED_AT:Ljava/lang/String; = "lastUpdatedAt"


# instance fields
.field private articleAlias:Ljava/lang/String;

.field private categoryId:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private position:I

.field private rank:I

.field private title:Ljava/lang/String;

.field private updatedAt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freshchat/consumer/sdk/beans/Article;->rank:I

    return-void
.end method

.method public static getArticle(Lorg/json/JSONObject;)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/Article;-><init>()V

    const-string v1, "articleId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Article;->setId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Article;->setTitle(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Article;->setDescription(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Article;->setPosition(I)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object v0

    const-string v1, "categoryId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Article;->setCategoryId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object v0

    const-string v1, "lastUpdatedAt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Article;->setUpdatedAt(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object v0

    const-string v1, "articleAlias"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/beans/Article;->setArticleAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getArticleAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Article;->articleAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Article;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Article;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Article;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Article;->position:I

    return v0
.end method

.method public getRank()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Article;->rank:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Article;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Article;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public setArticleAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Article;->articleAlias:Ljava/lang/String;

    return-object p0
.end method

.method public setCategoryId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Article;->categoryId:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Article;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Article;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setPosition(I)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Article;->position:I

    return-object p0
.end method

.method public setRank(I)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Article;->rank:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Article;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedAt(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Article;->updatedAt:Ljava/lang/String;

    return-object p0
.end method
