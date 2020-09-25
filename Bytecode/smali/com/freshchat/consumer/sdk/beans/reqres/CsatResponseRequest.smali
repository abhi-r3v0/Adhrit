.class public Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;
.super Ljava/lang/Object;


# instance fields
.field private csatResponse:Lcom/freshchat/consumer/sdk/beans/CsatResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCsatResponse()Lcom/freshchat/consumer/sdk/beans/CsatResponse;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;->csatResponse:Lcom/freshchat/consumer/sdk/beans/CsatResponse;

    return-object v0
.end method

.method public setCsatResponse(Lcom/freshchat/consumer/sdk/beans/CsatResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;->csatResponse:Lcom/freshchat/consumer/sdk/beans/CsatResponse;

    return-void
.end method
