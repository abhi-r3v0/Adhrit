.class public Lcom/freshchat/consumer/sdk/service/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/service/e/b$a;
    }
.end annotation


# instance fields
.field private gd:Lcom/freshchat/consumer/sdk/service/e/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/b$a;->gg:Lcom/freshchat/consumer/sdk/service/e/b$a;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/b;->gd:Lcom/freshchat/consumer/sdk/service/e/b$a;

    return-void
.end method


# virtual methods
.method public b(Lcom/freshchat/consumer/sdk/service/e/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/b;->gd:Lcom/freshchat/consumer/sdk/service/e/b$a;

    return-void
.end method

.method public dC()Lcom/freshchat/consumer/sdk/service/e/b$a;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/b;->gd:Lcom/freshchat/consumer/sdk/service/e/b$a;

    return-object v0
.end method
