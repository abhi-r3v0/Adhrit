.class public Lcom/freshchat/consumer/sdk/service/e/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/k;


# instance fields
.field private count:I

.field private gI:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

.field private gr:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freshchat/consumer/sdk/service/e/w;->count:I

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/w;->gI:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    return-void
.end method

.method public dO()Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/w;->gI:Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/service/e/w;->count:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/w;->gr:Z

    return v0
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/service/e/w;->gr:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/service/e/w;->count:I

    return-void
.end method
