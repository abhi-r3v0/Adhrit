.class public Lcom/freshchat/consumer/sdk/service/e/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private gQ:Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/aa;->gQ:Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    return-void
.end method

.method public dS()Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/aa;->gQ:Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    return-object v0
.end method
