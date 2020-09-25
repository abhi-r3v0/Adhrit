.class public Lcom/freshchat/consumer/sdk/beans/Tag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;
    }
.end annotation


# instance fields
.field private tagName:Ljava/lang/String;

.field private taggedItemId:Ljava/lang/String;

.field private taggedItemType:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Tag;->tagName:Ljava/lang/String;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/beans/Tag;->taggedItemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/beans/Tag;->taggedItemType:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaggedItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Tag;->taggedItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaggedItemType()Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Tag;->taggedItemType:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    return-object v0
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Tag;->tagName:Ljava/lang/String;

    return-void
.end method

.method public setTaggedItemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Tag;->taggedItemId:Ljava/lang/String;

    return-void
.end method

.method public setTaggedItemType(Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Tag;->taggedItemType:Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TAG--> TaggedId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Tag;->getTaggedItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", FilterType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Tag;->getTaggedItemType()Lcom/freshchat/consumer/sdk/beans/Tag$TaggedType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TagName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/Tag;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
