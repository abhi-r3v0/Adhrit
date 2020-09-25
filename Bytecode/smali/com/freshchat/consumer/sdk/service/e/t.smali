.class public Lcom/freshchat/consumer/sdk/service/e/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private gG:Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/t;->gG:Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;

    return-void
.end method

.method public dN()Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/t;->gG:Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;

    return-object v0
.end method
