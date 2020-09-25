.class public Lcom/freshchat/consumer/sdk/service/e/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private gz:Lcom/freshchat/consumer/sdk/beans/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dL()Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/q;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    return-object v0
.end method

.method public j(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/service/e/q;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/q;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    return-object p0
.end method
