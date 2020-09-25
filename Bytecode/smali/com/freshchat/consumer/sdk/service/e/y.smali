.class public Lcom/freshchat/consumer/sdk/service/e/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private gJ:Ljava/lang/String;

.field private gK:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/y;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/y;->gJ:Ljava/lang/String;

    return-object p0
.end method

.method public dP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/y;->gJ:Ljava/lang/String;

    return-object v0
.end method

.method public dQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/y;->gK:Z

    return v0
.end method

.method public s(Z)Lcom/freshchat/consumer/sdk/service/e/y;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/service/e/y;->gK:Z

    return-object p0
.end method
