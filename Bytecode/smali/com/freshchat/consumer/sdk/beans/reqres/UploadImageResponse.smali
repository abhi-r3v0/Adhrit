.class public Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;
.super Ljava/lang/Object;


# instance fields
.field private image:Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;->image:Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;->image:Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;->name:Ljava/lang/String;

    return-void
.end method
