.class public abstract Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
.super Ljava/lang/Object;


# instance fields
.field private content:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private fragmentType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->fragmentType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    iget v2, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->fragmentType:I

    iget v3, p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->fragmentType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->content:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->contentType:Ljava/lang/String;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->contentType:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentType()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->fragmentType:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageFragment{content=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fragmentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->fragmentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
