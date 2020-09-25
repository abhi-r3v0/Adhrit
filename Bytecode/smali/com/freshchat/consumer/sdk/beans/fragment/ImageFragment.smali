.class public Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;
.super Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;


# instance fields
.field private height:I

.field private thumbnail:Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->height:I

    return v0
.end method

.method public getThumbnail()Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->thumbnail:Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->height:I

    return-void
.end method

.method public setThumbnail(Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->thumbnail:Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageFragment{height="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->thumbnail:Lcom/freshchat/consumer/sdk/beans/fragment/Thumbnail;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
