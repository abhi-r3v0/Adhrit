.class public Lcom/freshchat/consumer/sdk/beans/Category;
.super Ljava/lang/Object;


# static fields
.field private static final JSON_TAG_CATEGORY_ALIAS:Ljava/lang/String; = "categoryAlias"

.field private static final JSON_TAG_CATEGORY_ID:Ljava/lang/String; = "categoryId"

.field private static final JSON_TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final JSON_TAG_POSITION:Ljava/lang/String; = "position"

.field private static final JSON_TAG_TITLE:Ljava/lang/String; = "title"

.field private static final JSON_TAG_UPDATED_AT:Ljava/lang/String; = "lastUpdatedAt"

.field private static final JSON_TAG_URL:Ljava/lang/String; = "icon"


# instance fields
.field private categoryAlias:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private position:I

.field private title:Ljava/lang/String;

.field private updatedAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategory(Lorg/json/JSONObject;)Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Category;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/Category;-><init>()V

    const-string v1, "categoryId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Category;->setId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Category;->setTitle(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Category;->setDescription(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Category;->setIconUrl(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Category;->setPosition(I)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object v0

    const-string v1, "lastUpdatedAt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Category;->setUpdatedAt(J)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object v0

    const-string v1, "categoryAlias"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/beans/Category;->setCategoryAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCategoryAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Category;->categoryAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Category;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Category;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Category;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Category;->position:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Category;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Category;->updatedAt:J

    return-wide v0
.end method

.method public setCategoryAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Category;->categoryAlias:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Category;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Category;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Category;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setPosition(I)Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Category;->position:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Category;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedAt(J)Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Category;->updatedAt:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Category{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Category;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/Category;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/Category;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/Category;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", position=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freshchat/consumer/sdk/beans/Category;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", categoryAlias=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/Category;->categoryAlias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
