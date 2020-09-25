.class public Lcom/freshchat/consumer/sdk/service/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/service/e/d$a;
    }
.end annotation


# instance fields
.field private gi:Lcom/freshchat/consumer/sdk/service/e/d$a;

.field private src:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/d$a;->gk:Lcom/freshchat/consumer/sdk/service/e/d$a;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/d;->gi:Lcom/freshchat/consumer/sdk/service/e/d$a;

    return-void
.end method


# virtual methods
.method public b(Lcom/freshchat/consumer/sdk/service/e/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/d;->gi:Lcom/freshchat/consumer/sdk/service/e/d$a;

    return-void
.end method

.method public dD()Lcom/freshchat/consumer/sdk/service/e/d$a;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/d;->gi:Lcom/freshchat/consumer/sdk/service/e/d$a;

    return-object v0
.end method

.method public dE()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/service/e/d;->src:I

    return v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/service/e/d;->src:I

    return-void
.end method
